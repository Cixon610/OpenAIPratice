using Microsoft.AspNetCore.Mvc;
using OpenAI_API;
using OpenAI_API.Chat;

namespace OpenAIPratice.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class OpenAIController : Controller
    {
        [HttpGet(Name = "TestAI")]
        public async Task TestAI()
        {
            OpenAIAPI api = new OpenAIAPI("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");
            var chat = api.Chat.CreateConversation();
            /// give instruction as System
            chat.AppendSystemMessage("You are a teacher who helps children understand if things are animals or not.  If the user tells you an animal, you say \"yes\".  If the user tells you something that is not an animal, you say \"no\".  You only ever respond with \"yes\" or \"no\".  You do not say anything else.");

            // give a few examples as user and assistant
            chat.AppendUserInput("Is this an animal? Cat");
            chat.AppendExampleChatbotOutput("Yes");
            chat.AppendUserInput("Is this an animal? House");
            chat.AppendExampleChatbotOutput("No");

            chat.AppendUserInput("Is this an animal? Dog");
            // and get the response
            string response = await chat.GetResponseFromChatbotAsync();
            Console.WriteLine(response); // "Yes"

            // and continue the conversation by asking another
            chat.AppendUserInput("Is this an animal? Chair");
            // and get another response
            response = await chat.GetResponseFromChatbotAsync();
            Console.WriteLine(response); // "No"

            // the entire chat history is available in chat.Messages
            foreach (ChatMessage msg in chat.Messages)
            {
                Console.WriteLine($"{msg.Role}: {msg.Content}");
            }
        }
    }
}
