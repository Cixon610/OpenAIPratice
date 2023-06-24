using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using OpenAICore.Services;
using OpenAIDAL.VirtualObjects;

namespace OpenAIService.Controllers
{
    [ApiController]
    [Authorize]
    [Route("[controller]")]
    public class MenuController : ApiBaseController
    {
        private readonly MenuService _menuService;

        public MenuController(MenuService menuService)
        {
            _menuService = menuService;
        }

        [HttpGet("get")]
        public IEnumerable<MenuVO> GetMenuVOs()
        {
            return _menuService.Get();
        }
    }
}
