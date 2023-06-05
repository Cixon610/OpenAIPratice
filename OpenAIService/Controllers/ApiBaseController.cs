using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using System.Security.Claims;

namespace OpenAIService.Controllers
{
    public class ApiBaseController : ControllerBase
    {
        public string UserName => HttpContext.Items["UserName"] as string;
        public string UserId => HttpContext.Items["UserId"] as string;
    }
}
