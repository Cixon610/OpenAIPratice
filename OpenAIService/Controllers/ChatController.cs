using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using OpenAI_API;
using OpenAIService.Models.Request;

namespace OpenAIService.Controllers
{
    [ApiController]
    [Authorize]
    [Route("[controller]")]
    public class ChatController : ControllerBase
    {
        private readonly ILogger<ChatController> _logger;
        private readonly OpenAIAPI _openAI;

        public ChatController(ILogger<ChatController> logger, OpenAIAPI openAI)
        {
            _logger = logger;
            _openAI = openAI;
        }

        [HttpGet]
        public HttpResponse Send(ChatInitReq req)
        {
            var chat = _openAI.Chat.CreateConversation();
        }
    }
}
