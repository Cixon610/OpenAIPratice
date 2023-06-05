namespace OpenAIService.Middleware
{
    using Microsoft.AspNetCore.Http;
    using System.Threading.Tasks;

    public class JwtMiddleware
    {
        private readonly RequestDelegate _next;

        public JwtMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task Invoke(HttpContext context)
        {
            context.Items["UserName"] = context.User.FindFirst("un")?.Value;
            context.Items["UserId"] = context.User.FindFirst("uid")?.Value;

            await _next(context);
        }
    }
}
