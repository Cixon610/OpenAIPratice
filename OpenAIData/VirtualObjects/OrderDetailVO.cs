using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OpenAIData.VirtualObjects
{
    public class OrderDetailVO
    {
        public string ItemId { get; set; }
        public string ItemName { get; set; }
        public string Size { get; set; }
        public string Suger { get; set; }
        public string Ice { get; set; }
        public int Value { get; set; }
        public List<OrderDetailToppingVO> Toppings { get; set; }    
        public string Memo { get; set; }
    }
}
