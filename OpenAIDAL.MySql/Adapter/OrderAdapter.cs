using OpenAIDAL.MySql.Entities;
using OpenAIData.Models.Request;
using OpenAIData.VirtualObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OpenAIDAL.MySql.Adapter
{
    public class OrderAdapter
    {
        private readonly OrderGPTContext _openAIContext;

        public OrderAdapter(OrderGPTContext openAIContext)
        {
            _openAIContext = openAIContext;
        }

        public string Add(OrderAddReq req, string userId)
        {
            var now = DateTime.Now;
            var orderId = Guid.NewGuid().ToString();
            _openAIContext.Order.Add(new Order
            {
                Id = orderId,
                UserId = userId,
                MessageId = req.MessageId,
                TotalValue = GetTotalValue(req),
                TotalCount = req.Details.Count,
                Memo = req.Memo,
                CreatedDatetime = now,
                UpdateDatetime = now
            });

            _openAIContext.Orderdetail.AddRange(req.Details.Select( x =>
                new Orderdetail
                {
                    Id= Guid.NewGuid().ToString(),
                    OrderId = orderId,
                    ItemId = x.ItemId,
                    ItemName = x.ItemName,
                    Ice = x.Ice,
                    Size = x.Size,
                    Suger = x.Suger,
                    Value = x.Value,
                    Memo = x.Memo,
                    CreatedDatetime= now,
                    UpdateDatetime= now
                }));

            //TODO: Topping
            _openAIContext.SaveChanges();
            return orderId;
        }

        //TODO: 取消訂單功能
        //public string Cancel(string orderId)
        //{
        //}

        public OrderVO Get(string orderId, string userId)
        {
            var order = _openAIContext.Order.FirstOrDefault(x => x.Id == orderId && x.UserId == userId);
            _ = order ?? throw new Exception("Order not found");
            var details = _openAIContext.Orderdetail.Where(x => x.OrderId == orderId).ToList();
            _ = details ?? throw new Exception("Order details not found");
            var toppings = _openAIContext.Orderdetailtopping
                .Where(x => x.OrderId == orderId)
                ?.Join(_openAIContext.Topping,
                    o => o.ToppingId,
                    t => t.Id,
                    (o, t) => new OrderDetailToppingVO {
                        Id = t.Id,
                        OrderDetailId = o.OrderDetailId,
                        Name = t.Name,
                        Value = t.Value,
                })?.ToList();

            var detailsVO = details.Select(x =>
                new OrderDetailVO
                {
                    ItemId = x.ItemId, 
                    ItemName = x.ItemName,
                    Ice = x.Ice,
                    Size = x.Size,
                    Suger = x.Suger,
                    Value = x.Value,
                    Memo = x.Memo,
                    Toppings = toppings.Where(y => y.OrderDetailId == x.Id)?.ToList(),
                }).ToList();

            return new OrderVO
            {
                Id = orderId,
                MessageId = order.MessageId,
                TotalCount = order.TotalCount,
                TotalValue = order.TotalValue,
                Memo = order.Memo,
                Details = detailsVO,
                CreatedDatetime = order.CreatedDatetime,
                UpdateDatetime = order.UpdateDatetime,
            };
        }

        private int GetTotalValue(OrderAddReq req)
        {
            var toppingValue = 0;
            var itemValue = req.Details.Sum(x => x.Value);
            if (req.Details.Any(x => x.Toppings.Any()))
            {
                toppingValue = req.Details.SelectMany(x => x.Toppings.Select(y => y.Value)).Sum();
            }

            return itemValue + toppingValue;
        }
    }
}
