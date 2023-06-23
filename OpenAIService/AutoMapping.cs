using AutoMapper;
using OpenAIDAL.MySql.Entities;
using OpenAIData.ViewModels;

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
