using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OpenAIData.VirtualObjects
{
    public class OrderVO
    {
        public string Id { get; set; }
        public string MessageId { get; set; }
        public int TotalValue { get; set; }
        public int TotalCount { get; set; }
        public string Memo { get; set; }
        public List<OrderDetailVO> Details { get; set; }
        public DateTime CreatedDatetime { get; set; }
        public DateTime UpdateDatetime { get; set; }
    }
}
