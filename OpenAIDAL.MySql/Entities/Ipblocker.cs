﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace OpenAIDAL.MySql.Entities
{
    public partial class Ipblocker
    {
        public string Id { get; set; }
        public string UserId { get; set; }
        public string Ipaddress { get; set; }
        public int Count { get; set; }
        public ulong Enable { get; set; }
        public DateTime CreatedDatetime { get; set; }
        public DateTime UpdateDatetime { get; set; }
    }
}