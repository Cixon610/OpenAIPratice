﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace OpenAIDAL.MySql.Entities
{
    public partial class Message
    {
        public string Id { get; set; }
        public string ConversationId { get; set; }
        public string Role { get; set; }
        public string Message1 { get; set; }
        public int OrderId { get; set; }
        public DateTime CreatedDatetime { get; set; }
        public DateTime UpdateDatetime { get; set; }
    }
}