using OpenAIDAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OpenAIDAL.VirtualObjects
{
    public class MenuVO
    {
        public string ItemName { get; set; }
        public string ItemType { get; set; }
        public List<string> AvailableIce { get; set; }
        public List<string> AvailableSuger { get; set; }
        public Dictionary<string, int> AvailableSize { get; set; }
        public Dictionary<string, int> AvailableToppings { get; set; }
    }
}
