﻿using Microsoft.AspNetCore.Mvc;
using OpenAIReact.Models.Request;

namespace OpenAIReact.Controllers
{
    public class ChatController : Controller
    {
        private ILogger _logger { get; set; }
        public ChatController(ILogger<ChatController> logger)
        {
            _logger = logger;
        }
        [HttpGet]
        public HttpResponse Send(ChatInitReq req)
        {
            throw new NotImplementedException();
        }
    }
}
