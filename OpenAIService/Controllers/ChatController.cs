using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using OpenAI_API;
using OpenAIService.Helpers;
using OpenAIService.Models.Request;
using OpenAIService.Models.Response;

namespace OpenAIService.Controllers
{
    [ApiController]
    [Authorize]
    [Route("[controller]")]
    public class ChatController : ControllerBase
    {
        private readonly ILogger<ChatController> _logger;
        private readonly OpenAIAPI _openAI;
        private readonly PromptManager _promptManager;

        public ChatController(ILogger<ChatController> logger, OpenAIAPI openAI, PromptManager promptManager)
        {
            _logger = logger;
            _openAI = openAI;
            _promptManager = promptManager;
        }

        [HttpPost]
        public IActionResult Send(ChatInitReq req)
        {
            var chat = _openAI.Chat.CreateConversation();
            var conversationID = new Guid();
            var menuPrompt = _promptManager.GetMenu();
            return null;
        }
    }
}
