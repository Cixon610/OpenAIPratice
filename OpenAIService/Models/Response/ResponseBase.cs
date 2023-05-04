namespace OpenAIService.Models.Response
{
    public class ResponseBase<T>
    {
        public bool Success { get; set; }
        public T Data { get; set; }
        public string ErrorMessage { get; set; }
        public IEnumerable<string> Errors { get; set; }

        public static ResponseBase<T> SuccessResponse(T data) => 
            new ResponseBase<T> { Success = true, Data = data };

        public static ResponseBase<T> ErrorResponse(string errorMessage, IEnumerable<string> errors = null)
            => new ResponseBase<T> { Success = false, ErrorMessage = errorMessage, Errors = errors };
    }
}
