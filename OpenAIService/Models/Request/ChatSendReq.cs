namespace OpenAIService.Models.Request
{
    public class ChatSendReq
    {
        public Guid ConversationID { get; set; }
        public string Message { get; set; }
    }
}
