using Microsoft.EntityFrameworkCore;
using OpenAIDAL.VirtualObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OpenAIDAL.Entities
{
    public partial class OpenAIContext
    {
        public virtual DbSet<KY<int>> KeyValueType { get; set; }
    }
}
