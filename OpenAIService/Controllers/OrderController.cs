using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using OpenAICore.Services;
using OpenAIData.Models.Request;
using OpenAIData.VirtualObjects;
using OpenAIService.Models;

namespace OpenAIService.Controllers
{
    [ApiController]
    [Authorize]
    [Route("[controller]")]
    public class OrderController : ApiBaseController
    {
        private readonly OrderService _orderService;

        public OrderController(OrderService orderService)
        {
            _orderService = orderService;
        }

        [HttpPost("add")]
        public IActionResult Add(OrderAddReq req) => ResponseBase<OrderVO>.Ok(_orderService.Add(req, base.UserId));
        [HttpGet("get")]
        public IActionResult Get(string orderId) => ResponseBase<OrderVO>.Ok(_orderService.Get(orderId, base.UserId));

    }
}
