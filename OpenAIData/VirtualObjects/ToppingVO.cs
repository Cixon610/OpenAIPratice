using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace OpenAIData.VirtualObjects
{
    public class OrderDetailToppingVO
    {
        public string Id { get; set; }
        [JsonIgnore]
        public string OrderDetailId { get; set; }
        public string Name { get; set; }
        public int Value { get; set; }
    }
}
