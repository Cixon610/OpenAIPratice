using OpenAIDAL.Adapter;
using OpenAIData.VirtualObjects;

namespace OpenAICore.Services
{
    public class MenuService
    {
        private readonly MenuAdapter _menuAdapter;

        public MenuService(MenuAdapter menuAdapter)
        {
            _menuAdapter = menuAdapter;
        }

        public IEnumerable<MenuVO> Get()
        {
            return _menuAdapter.Get();
        }
    }
}
