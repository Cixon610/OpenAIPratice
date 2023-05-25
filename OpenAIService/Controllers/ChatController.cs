using Microsoft.AspNetCore.Mvc;
using OpenAI_API;
using OpenAI_API.Chat;
using OpenAIService.Helpers;
using OpenAIService.Models.Request;
using OpenAIService.Models.Response;
using OpenAIService.Services;

namespace OpenAIService.Controllers
{
    [ApiController]
    //[Authorize]
    [Route("[controller]")]
    public class ChatController : ControllerBase
    {
        private readonly ILogger<ChatController> _logger;
        private readonly OpenAIAPI _openAI;
        private readonly PromptManager _promptManager;
        private readonly ChatService _chatService;

        public ChatController(ILogger<ChatController> logger, OpenAIAPI openAI, PromptManager promptManager,ChatService ChatService)
        {
            _logger = logger;
            _openAI = openAI;
            _promptManager = promptManager;
            _chatService = ChatService;
        }

        /// <summary>
        /// Init chat
        /// </summary>
        /// <param name="req"></param>
        /// <returns></returns>
        [HttpPost("create")]
        public IActionResult Create(ChatCreateReq req)
        {
            var chat = _openAI.Chat.CreateConversation(new ChatRequest()
            {
                Temperature = 0.5,
                MaxTokens = 50,
            });

            var menuPrompt = _promptManager.GetMenu();
            var (conversationID, initMessageID) = _chatService.InitChat(Guid.Parse(req.UserID), menuPrompt);
            var aiRes = "歡迎光臨請問要甚麼飲料?";

            var messageID = _chatService.AddMessage(conversationID, aiRes, 1, "assistant");
            var res = new MessageResponse
            {
                ConversationID = conversationID,
                Messages = new MessageRes
                {
                    ID = messageID,
                    Value = aiRes,
                    OrderID = 1
                },
            };
            return ResponseBase<MessageResponse>.Ok(res);
        }
        /// <summary>
        /// Send Message
        /// </summary>
        /// <param name="req"></param>
        /// <returns></returns>
        [HttpPost("send")]
        public IActionResult Send(ChatSendReq req)
        {
            var chat = _openAI.Chat.CreateConversation(new ChatRequest()
            {
                Temperature = 0.5,
                MaxTokens = 50,
            });

            var msgs = _chatService.GetMessages(req.ConversationID);
            var newMsgID = _promptManager.ComposeNewMsg(chat, msgs, req.Message, req.ConversationID);
            var aiRes = chat.GetResponseFromChatbotAsync().Result;
            var orderID = msgs.Count + 1;
            _chatService.AddMessage(req.ConversationID, aiRes, orderID, ChatMessageRole.Assistant.ToString());
            var res = new MessageResponse
            {
                ConversationID = req.ConversationID,
                Messages = new MessageRes
                {
                    ID = newMsgID,
                    Value = aiRes,
                    OrderID = orderID
                },
            };

            return ResponseBase<MessageResponse>.Ok(res);
        }
    }
}
