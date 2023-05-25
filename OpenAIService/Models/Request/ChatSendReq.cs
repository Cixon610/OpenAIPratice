namespace OpenAIService.Models.Request
{
    public class ChatSendReq
    {
        public Guid UserUD { get; set; }
        public Guid ConversationID { get; set; }
        public string Message { get; set; }
    }
}
