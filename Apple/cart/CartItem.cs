using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment.cart
{
    public class Product
    {
        public int ProductID { get; set; }
        public int VariantID { get; set; }
        public string ProductName { get; set; }
        public string VariantName { get; set; }
        public decimal Price { get; set; }
        public string Image { get; set; }
        public int Unit_In_Stock { get; set; }

    }

    public class CartItem
    {
        public int ProductID { get; set; }
        public int VariantID { get; set; }
        public string ProductName { get; set; }
        public string VariantName { get; set; }
        public decimal Price { get; set; }
        public string Image { get; set; }
        public int Quantity { get; set; }
    }
}