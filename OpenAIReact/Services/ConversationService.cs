using OpenAIReact.Enitities;

namespace OpenAIReact.Services
{
    public class ConversationService
    {
        private ILogger<ConversationService> _logger { get; set; }

        public ConversationService(ILogger<ConversationService> logger)
        {
            _logger = logger;
        }
        public Guid Create()
        {
            throw new NotImplementedException();
        }
    }
}
