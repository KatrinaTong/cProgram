//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class NYSEData
    {
        public string exchange { get; set; }
        public System.DateTime date { get; set; }
        public string stock_symbol { get; set; }
        public double stock_price_open { get; set; }
        public double stock_price_high { get; set; }
        public double stock_price_low { get; set; }
        public double stock_price_close { get; set; }
        public int stock_volume { get; set; }
        public double stock_price_adj_close { get; set; }
        public int id { get; set; }
    }
}
