using OpenAIDAL.MySql.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OpenAIDAL.Adapter
{
    public class ChatAdapter
    {
        private readonly OrderGPTContext _openAIContext;
        public ChatAdapter(OrderGPTContext openAIContext)
        {
            _openAIContext = openAIContext;
        }

        public string AddConversation(string userid)
        {
            var now = DateTime.Now;
            var guid = Guid.NewGuid();
            _openAIContext.Conversation.Add(new Conversation {
                Id = guid.ToString(),
                UserId = userid,
                CreatedDatetime = now,
                UpdateDatetime = now
            });
            _openAIContext.SaveChanges();
            return guid.ToString();
        }
        public string AddMessage(string ConversationID, string Message, int orderID, string role)
        {
            var now = DateTime.Now;
            var guid = Guid.NewGuid();
            _openAIContext.Message.Add(new Message
            {
                Id = guid.ToString(),
                ConversationId = ConversationID,
                Message1 = Message,
                Role = role,
                OrderId = orderID,
                CreatedDatetime = now,
                UpdateDatetime = now
            });
            _openAIContext.SaveChanges();
            return guid.ToString();
        }

        public List<Message> GetMessages(string conversationID)
        {
            return _openAIContext.Message
                .Where(x => x.ConversationId == conversationID)
                .OrderBy(x=>x.OrderId)
                .ToList();
        }
    }
}
