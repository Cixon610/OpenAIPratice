﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace OpenAIDAL.Entities
{
    public partial class OrderDetailTopping
    {
        public Guid Id { get; set; }
        public Guid OrderDetailId { get; set; }
        public Guid ToppingId { get; set; }
        public int Value { get; set; }
        public string Memo { get; set; }
        public DateTime CreatedDatetime { get; set; }
        public DateTime UpdateDatetime { get; set; }

        public virtual OrderDetail OrderDetail { get; set; }
        public virtual Topping Topping { get; set; }
    }
}