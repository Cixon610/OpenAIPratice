using OpenAIDAL.Adapter;
using OpenAIDAL.MySql.Entities;

namespace OpenAIService.Services
{
    public class ChatService
    {
        private readonly ChatAdapter _chatAdapter;
        public ChatService(ChatAdapter ChatAdapter)
        {
            _chatAdapter = ChatAdapter;
        }

        public (string, string) InitChat(string userId, string Message)
        {
            var conversationID = _chatAdapter.AddConversation(userId);
            var messageID = _chatAdapter.AddMessage(conversationID, Message, 0, "system");
            return (conversationID, messageID);
        }

        public string AddMessage(string conversationID, string message, int orderID, string role)
        {
            return _chatAdapter.AddMessage(conversationID, message, orderID, role);
        }

        public List<Message> GetMessages(string conversationID)
        {
            return _chatAdapter.GetMessages(conversationID);

        }
    }
}
