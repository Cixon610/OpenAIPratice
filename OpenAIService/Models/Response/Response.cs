using Microsoft.AspNetCore.Mvc;
using System.Text.Json.Serialization;

namespace OpenAIService.Models.Response
{
    public class Response<T>
    {
        public T? Data { get; set; }
        [JsonIgnore]
        public string? ErrorMessage { get; set; }
        [JsonIgnore]
        public IEnumerable<string>? Errors { get; set; }

        public static OkObjectResult Ok(T data) => 
             new OkObjectResult( new Response<T> { Data = data });

        public static BadRequestObjectResult BadRequest(T data) => 
            new BadRequestObjectResult( new Response<T> { Data = data });

        public static ObjectResult FailExceotion(string errorMessage, IEnumerable<string> errors = null)
        {
            var res = new ObjectResult(
                new Response<T>
                {
                    ErrorMessage = errorMessage,
                    Errors = errors
                });
            res.StatusCode = StatusCodes.Status417ExpectationFailed;
            return res;
        }
    }
}
