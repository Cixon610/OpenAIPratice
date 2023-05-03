using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using OpenAIService.Models.Request;

namespace OpenAIService.Controllers
{
    [ApiController]
    [Authorize]
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
