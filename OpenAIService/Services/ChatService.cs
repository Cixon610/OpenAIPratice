using OpenAIDAL.Adapter;
using OpenAIDAL.Entities;

namespace OpenAIService.Services
{
    public class ChatService
    {
        private readonly ChatAdapter _chatAdapter;
        public ChatService(ChatAdapter ChatAdapter)
        {
            _chatAdapter = ChatAdapter;
        }

        public (Guid, Guid) InitChat(Guid userId, string Message)
        {
            var conversationID = _chatAdapter.AddConversation(userId);
            var messageID = _chatAdapter.AddMessage(conversationID, Message, 0, "system");
            return (conversationID, messageID);
        }

        public Guid AddMessage(Guid conversationID, string message, int orderID, string role)
        {
            return _chatAdapter.AddMessage(conversationID, message, orderID, role);
        }

        public List<Message> GetMessages(Guid conversationID)
        {
            return _chatAdapter.GetMessages(conversationID);

        }
    }
}
