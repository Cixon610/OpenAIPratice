using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using OpenAICore.Services;
using OpenAIData.VirtualObjects;
using OpenAIService.Models;

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
        public IActionResult GetMenuVOs() => ResponseBase<IEnumerable<MenuVO>>.Ok(_menuService.Get());
    }
}
