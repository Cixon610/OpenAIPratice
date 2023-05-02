using Microsoft.AspNetCore.Mvc;
using OpenAIReact.Models.Request;

namespace OpenAIReact.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ChatController : ControllerBase
    {
        private ILogger<ChatController> _logger { get; set; }
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
