using OpenAIDAL.MySql.Adapter;
using OpenAIDAL.MySql.Entities;
using OpenAIData.Models.Request;
using OpenAIData.VirtualObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OpenAICore.Services
{
    public class OrderService
    {
        private readonly OrderAdapter _orderAdapter;
        public OrderService(OrderAdapter orderAdapter)
        {
            _orderAdapter = orderAdapter;
        }

        public OrderVO Add(OrderAddReq req, string userId)
        {
            _ = req.Details ?? throw new Exception("OrderDetail is null");
            var orderId = _orderAdapter.Add(req, userId);
            var order = _orderAdapter.Get(orderId, userId);
            return order;
        }

        public OrderVO Get(string orderId, string userId)
        {
            return _orderAdapter.Get(orderId, userId);
        }
    }
}
