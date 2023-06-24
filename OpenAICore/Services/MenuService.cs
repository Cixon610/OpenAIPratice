using OpenAIDAL.Adapter;
using OpenAIDAL.VirtualObjects;
using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
