using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.cart
{
    public partial class success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;
                CartItemList.DataSource = cartItems;
                CartItemList.DataBind();
                TotalItemLabel.Text = CalculateTotalItem(cartItems).ToString();
                TotalLabel.Text = "RM " + CalculateTotal(cartItems).ToString();
                Session["CartItems"] = null; //clear cart items
            }
        }

        protected decimal CalculateTotal(List<CartItem> cartItems)
        {
            decimal total = 0;
            if (cartItems != null)
            {
                foreach (CartItem item in cartItems)
                {
                    total += item.Price * item.Quantity;
                }
            }

            return total;
        }

        protected int CalculateTotalItem(List<CartItem> cartItems)
        {
            int itemsCount = 0;
            if (cartItems != null)
            {
                foreach (CartItem item in cartItems)
                {
                    itemsCount += 1;
                }
            }
            return itemsCount;
        }
        protected void HomeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("../index.aspx");
        }
    }
}