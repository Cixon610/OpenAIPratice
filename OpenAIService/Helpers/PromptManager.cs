using OpenAIDAL.Adapter;
using OpenAIDAL.Entities;
using System.Text;

namespace OpenAIService.Helpers
{
    public class PromptManager
    {
        private readonly MenuAdapter _menuAdapter;
        public PromptManager(MenuAdapter MenuAdapter)
        {
            _menuAdapter = MenuAdapter;
        }
        public string GetMenu()
        {
            var strBuilder = new StringBuilder();
            var menuItem = _menuAdapter.GetMenu();
            strBuilder.Append(Environment.NewLine);
            return strBuilder.ToString();
        }
    }
}
