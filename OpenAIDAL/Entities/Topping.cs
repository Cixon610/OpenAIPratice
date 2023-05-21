﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace OpenAIDAL.Entities
{
    public partial class Topping
    {
        public Topping()
        {
            AvailableTopping = new HashSet<AvailableTopping>();
            OrderDetailTopping = new HashSet<OrderDetailTopping>();
            ToppingStore = new HashSet<ToppingStore>();
        }

        public Guid Id { get; set; }
        public string Name { get; set; }
        public int Value { get; set; }
        public DateTime CreatedDatetime { get; set; }
        public DateTime UpdateDatetime { get; set; }

        public virtual ICollection<AvailableTopping> AvailableTopping { get; set; }
        public virtual ICollection<OrderDetailTopping> OrderDetailTopping { get; set; }
        public virtual ICollection<ToppingStore> ToppingStore { get; set; }
    }
}