using AutoMapper;
using OpenAIService.Entities;
using OpenAIService.ViewModels;


namespace OpenAIService
{
    public class AutoMapping : Profile
    {
        public AutoMapping()
        {
            //來源=>目標
            CreateMap<User, UserVM>();
        }
    }
}
