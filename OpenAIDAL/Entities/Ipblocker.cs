﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace OpenAIDAL.Entities
{
    public partial class Ipblocker
    {
        public Guid Id { get; set; }
        public Guid UserId { get; set; }
        public string Ipaddress { get; set; }
        public int Count { get; set; }
        public bool Enable { get; set; }
        public DateTime CreatedDatetime { get; set; }
        public DateTime UpdateDatetime { get; set; }

        public virtual User User { get; set; }
    }
}