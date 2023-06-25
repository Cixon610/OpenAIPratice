using OpenAIData.VirtualObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OpenAIData.Models.Request
{
    public class OrderAddReq
    {
        public string MessageId { get; set; }
        public string Memo { get; set; }
        public List<OrderDetailVO> Details { get; set; }
    }
}
