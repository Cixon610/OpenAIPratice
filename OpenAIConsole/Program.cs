// See https://aka.ms/new-console-template for more information
using OpenAI_API;
using OpenAI_API.Chat;

var api = new OpenAIAPI("");
var chatStream = api.Chat.CreateConversation(new ChatRequest()
{
    Temperature = 0.5,
    MaxTokens = 50,
    //StopSequence = "\n顧客：",
});
var userInput = "Start";
chatStream.AppendSystemMessage("你是五十嵐飲料店店員，請依據下列菜單接受客人訂餐，依據客人的回答，最後整理出清單，\n菜單:\n品名,大小,價格\n阿薩姆紅茶,M,30\n阿薩姆紅茶,L,40\n四季春青茶,M,35\n四季春青茶,L,45\n甜度:無糖、微糖、半糖、全糖\n冰塊:去冰、微冰、少冰、全冰\n數量");
//chatStream.AppendExampleChatbotOutput("歡迎光臨請問要甚麼飲料?");
Console.WriteLine("歡迎光臨請問要甚麼飲料?");
do
{
    userInput = Console.ReadLine();
    if (userInput == "done")
        break;
    if (userInput != string.Empty)
    {
        if(userInput != "Start")
            chatStream.AppendUserInput(userInput);
        await foreach (var res in chatStream.StreamResponseEnumerableFromChatbotAsync())
        {
            Console.Write(res);
        }
        Console.WriteLine("");
        userInput = string.Empty;
    }
} while (userInput != "done");
async Task Chat()
{
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