﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace OpenAIService.Entities
{
    public partial class Ice
    {
        public Ice()
        {
            AvailableIce = new HashSet<AvailableIce>();
            OrderDetail = new HashSet<OrderDetail>();
        }

        public Guid Id { get; set; }
        public string Name { get; set; }
        public DateTime CreatedDatetime { get; set; }
        public DateTime UpdateDatetime { get; set; }

        public virtual ICollection<AvailableIce> AvailableIce { get; set; }
        public virtual ICollection<OrderDetail> OrderDetail { get; set; }
    }
}