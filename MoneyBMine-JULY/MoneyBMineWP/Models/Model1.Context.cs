﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MoneyBMineWP.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class NYSEDataEntities2 : DbContext
    {
        public NYSEDataEntities2()
            : base("name=NYSEDataEntities2")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<NYSEDailyPriceA> NYSEDailyPriceAs { get; set; }
        public virtual DbSet<NYSEData> NYSEDatas { get; set; }
    }
}