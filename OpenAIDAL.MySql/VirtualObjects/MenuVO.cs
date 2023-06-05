using OpenAIDAL.MySql.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OpenAIDAL.VirtualObjects
{
    public class MenuVO
    {
        public string ItemID { get; internal set; }
        public string ItemName { get; set; }
        public string ItemType { get; set; }
        public List<string> AvailableIce { get; set; }
        public List<string> AvailableSuger { get; set; }
        public List<AvailableSizeVO> AvailableSize { get; set; }
    }
    public class AvailableSizeVO
    {
        public string Size { get; set; }
        public int Value { get; set; }
    }
}
