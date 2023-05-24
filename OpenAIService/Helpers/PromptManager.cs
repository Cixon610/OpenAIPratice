using OpenAIDAL.Adapter;
using OpenAIDAL.Entities;
using System.Text;

namespace OpenAIService.Helpers
{
    //訂單發送中請稍後...
    public class PromptManager
    {
        private readonly MenuAdapter _menuAdapter;
        private readonly string _sysPrompt = "你是飲料店員，請依據下方提供的菜單為客人點餐並反覆詢問最多十次至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆訂單發送中請稍後...";
        
        public PromptManager(MenuAdapter MenuAdapter)
        {
            _menuAdapter = MenuAdapter;
        }
        public string GetAvailableICE() => "冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰";
        public string GetAvailableSuger() => "甜度選項: 正常糖,1分糖,微糖,無糖,半糖";
        public string GetMenu()
        {
            var strBuilder = new StringBuilder();
            var menuItem = _menuAdapter.GetMenu();
            menuItem = menuItem.GetRange(0, 10);

            strBuilder.Append($"{_sysPrompt};{GetAvailableICE()};{GetAvailableSuger()};");
            strBuilder.Append($"菜單:{Environment.NewLine}");
            strBuilder.Append($"品名, 大小, 價錢{Environment.NewLine}");
            foreach ( var item in menuItem )
            {
                strBuilder.Append( $"{item.Item},{item.Size},{item.Value}{Environment.NewLine}");
            }
            return strBuilder.ToString();
        }
    }
}
