using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OpenAIDAL.VirtualObjects
{
    [Keyless]
    public class KY<T>
    {
        private int value;

        public KY(string key, int value)
        {
            Key = key;
            this.value = value;
        }

        public string Key { get; set; }
        public T Value { get; set; }
    }
}
