using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Internal;
using OpenAIDAL.Entities;
using OpenAIDAL.VirtualObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace OpenAIDAL.Adapter
{
    public class MenuAdapter
    {
        private readonly OpenAIContext _openAIContext;

        public MenuAdapter(OpenAIContext openAIContext)
        {
            _openAIContext = openAIContext;
        }
        //public Dictionary<string, IEnumerable<AvailableSizeV>> GetMenu() =>
        //    _openAIContext.AvailableSizeV.GroupBy(x => x.Item).ToDictionary(x=>x.Key,y=> y.Select(z=>z));

        public List<AvailableSizeV> GetMenu() =>  _openAIContext.AvailableSizeV.ToList();
    }
}
