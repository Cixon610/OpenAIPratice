using OpenAI_API.Chat;

namespace OpenAIService.Models.Request
{
    public class OpenAIReq
    {
        public ChatReq? ChatRequest { get; set; }
        public string? ConversationID { get; set; }
        public string? Message { get; set; }
    }
    public class ChatReq
    {
        public string model { get; set; } = "gpt-3.5-turbo";
        public double? temperature { get; set; } = 0.5;
        public double? topP { get; set; } = 1;
        public int? maxTokens { get; set; } = 50;
    }
}
