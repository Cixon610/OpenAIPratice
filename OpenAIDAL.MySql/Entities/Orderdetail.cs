﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace OpenAIDAL.MySql.Entities
{
    public partial class Orderdetail
    {
        public string Id { get; set; }
        public string OrderId { get; set; }
        public string ItemId { get; set; }
        public string ItemName { get; set; }
        public string Size { get; set; }
        public string Suger { get; set; }
        public string Ice { get; set; }
        public int Value { get; set; }
        public string Memo { get; set; }
        public DateTime CreatedDatetime { get; set; }
        public DateTime UpdateDatetime { get; set; }
    }
}