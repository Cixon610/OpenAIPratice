﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace OpenAIDAL.Entities
{
    public partial class AvailableSuger
    {
        public Guid Id { get; set; }
        public Guid MenuItemId { get; set; }
        public Guid SugerId { get; set; }
        public DateTime CreatedDatetime { get; set; }
        public DateTime UpdateDatetime { get; set; }

        public virtual MenuItem MenuItem { get; set; }
        public virtual Suger Suger { get; set; }
    }
}