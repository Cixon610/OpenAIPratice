using OpenAIDAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OpenAIDAL.Adapter
{
    public class ChatAdapter
    {
        private readonly OpenAIContext _openAIContext;
        public ChatAdapter(OpenAIContext openAIContext)
        {
            _openAIContext = openAIContext;
        }

        public Guid AddConversation(Guid userid)
        {
            var now = DateTime.Now;
            var guid = Guid.NewGuid();
            _openAIContext.Conversation.Add(new Conversation {
                Id = guid,
                UserId = userid,
                CreatedDatetime = now,
                UpdateDatetime = now
            });
            _openAIContext.SaveChanges();
            return guid;
        }
        public Guid AddMessage(Guid ConversationID, string Message, int orderID, string role)
        {
            var now = DateTime.Now;
            var guid = Guid.NewGuid();
            _openAIContext.Message.Add(new Message
            {
                Id = guid,
                ConversationId = ConversationID,
                Message1 = Message,
                Role = role,
                OrderId = orderID,
                CreatedDatetime = now,
                UpdateDatetime = now
            });
            _openAIContext.SaveChanges();
            return guid;
        }

        public List<Message> GetMessages(Guid conversationID)
        {
            return _openAIContext.Message
                .Where(x => x.ConversationId == conversationID)
                .OrderBy(x=>x.OrderId)
                .ToList();
        }
    }
}
