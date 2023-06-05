using OpenAI_API.Chat;
using OpenAIDAL.Adapter;
using OpenAIDAL.MySql.Entities;
using System.Text;

namespace OpenAIService.Helpers
{
    //訂單發送中請稍後...
    public class PromptManager
    {
        private readonly MenuAdapter _menuAdapter;
        private readonly ChatAdapter _chatAdapter;
        //TODO:需要限制只能點選菜單上的選項極甜度冰塊，如果客戶回答的不在清單內需反覆確認或選取最接近的選項
        private readonly string _sysPrompt = "你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人";
        
        public PromptManager(MenuAdapter MenuAdapter, ChatAdapter chatAdapter)
        {
            _menuAdapter = MenuAdapter;
            _chatAdapter = chatAdapter;
        }
        public string GetAvailableICE() => "冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰";
        public string GetAvailableSuger() => "甜度選項: 正常糖,1分糖,微糖,無糖,半糖";
        public string GetMenu()
        {
            var strBuilder = new StringBuilder();
            var menuItem = _menuAdapter.GetMenu();
            //先撈前十筆測試
            //menuItem = menuItem.GetRange(0, 10);
            //TODO:不同飲品改撈DB值，在確認怎麼省token量
            strBuilder.Append($"{_sysPrompt};{GetAvailableICE()};{GetAvailableSuger()};{Environment.NewLine}");
            strBuilder.Append($"菜單:{Environment.NewLine}");
            strBuilder.Append($"品名, [大小:價錢;]{Environment.NewLine}");
            foreach ( var item in menuItem )
            {
                strBuilder.Append($"{item.ItemName},[");
                foreach( var size in item.AvailableSize)
                {
                    strBuilder.Append($"{size.Size}:{size.Value};");
                }
                strBuilder.Append($"]{Environment.NewLine}");
            }
            return strBuilder.ToString();
        }

        public string ComposeNewMsg(OpenAI_API.Chat.Conversation chat, List<Message> msgs, string newMsg, string conversationID)
        {
            foreach (var msg in msgs)
            {
                switch (msg.Role)
                {
                    case "system":
                        chat.AppendMessage(ChatMessageRole.System, msg.Message1);
                        break;
                    case "user":
                        chat.AppendMessage(ChatMessageRole.User, msg.Message1);
                        break;
                    case "assistant":
                        chat.AppendMessage(ChatMessageRole.Assistant, msg.Message1);
                        break;
                    default:
                        break;
                }
            }
            chat.AppendMessage(ChatMessageRole.User, newMsg);
            return _chatAdapter.AddMessage(conversationID, newMsg, msgs.Count, ChatMessageRole.User.ToString());
        }
    }
}
