using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using OpenAI_API;
using OpenAI_API.Chat;
using OpenAICore.Helpers;
using OpenAICore.Services;
using OpenAIData.Models.Request;
using OpenAIData.Models.Response;
using OpenAIService.Models;

namespace OpenAIService.Controllers
{
    [ApiController]
    [Authorize]
    [Route("[controller]")]
    public class OpenAIController : ApiBaseController
    {
        private readonly ILogger<ChatController> _logger;
        private readonly OpenAIAPI _openAI;
        private readonly PromptManager _promptManager;
        private readonly ChatService _chatService;

        public OpenAIController(ILogger<ChatController> logger, OpenAIAPI openAI, PromptManager promptManager, ChatService ChatService)
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
        public IActionResult Create(OpenAIReq aIReq)
        {
            var chat = _openAI.Chat.CreateConversation(GetChatRequest(aIReq));
            var (conversationID, initMessageID) = _chatService.InitChat(base.UserId, aIReq.Message);
            var res = new MessageResponse
            {
                ConversationID = conversationID
            };
            return ResponseBase<MessageResponse>.Ok(res);
        }
        /// <summary>
        /// Send Message
        /// </summary>
        /// <param name="req"></param>
        /// <returns></returns>
        [HttpPost("send")]
        public IActionResult Send(OpenAIReq aIReq)
        {
            var chat = _openAI.Chat.CreateConversation(GetChatRequest(aIReq));
            var msgs = _chatService.GetMessages(aIReq.ConversationID);
            var newMsgID = _promptManager.ComposeNewMsg(chat, msgs, aIReq.Message, aIReq.ConversationID);
            var aiRes = chat.GetResponseFromChatbotAsync().Result;
            var orderID = msgs.Count + 1;
            _chatService.AddMessage(aIReq.ConversationID, aiRes, orderID, ChatMessageRole.Assistant.ToString());
            var res = new MessageResponse
            {
                ConversationID = aIReq.ConversationID,
                Messages = new MessageRes
                {
                    ID = newMsgID,
                    Value = aiRes,
                    OrderID = orderID
                },
            };

            return ResponseBase<MessageResponse>.Ok(res);
        }
    
        private ChatRequest GetChatRequest(OpenAIReq aIReq)
        {
            var chatReq = new ChatRequest();
            if (aIReq.ChatRequest?.temperature != null)
                chatReq.Temperature = aIReq.ChatRequest?.temperature;
            if (aIReq.ChatRequest?.maxTokens != null)
                chatReq.MaxTokens = aIReq.ChatRequest?.maxTokens;
            if (aIReq.ChatRequest?.topP != null)
                chatReq.TopP = aIReq.ChatRequest?.topP;
            if (aIReq.ChatRequest?.model != null)
                chatReq.Model = aIReq.ChatRequest?.model;
            return chatReq;
        }
    }
}
