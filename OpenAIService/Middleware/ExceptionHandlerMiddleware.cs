using System.Net;
using System.Text.Json;

namespace OpenAIService.Middleware
{
    public class ExceptionHandlerMiddleware
    {
        private readonly RequestDelegate _next;
        public ExceptionHandlerMiddleware(RequestDelegate next) => _next = next;

        public async Task Invoke(HttpContext context)
        {
            try
            {
                await _next(context);
            }
            catch (Exception ex)
            {
                context.Response.ContentType = "application/json";
                context.Response.StatusCode = (int)HttpStatusCode.InternalServerError;
                var json = JsonSerializer.Serialize(new
                {
                    message = ex.Message,
                    stackTrace = ex.StackTrace
                });

                await context.Response.WriteAsync(json);
            }
        }
    }
}
