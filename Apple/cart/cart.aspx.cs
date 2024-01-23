using Assignment.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Assignment.cart
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCartItems();
            }


        }
        private void BindCartItems()
        {
            // Implement shopping cart retrieval logic here

            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;

            if (cartItems == null)
            {
                cartItems = new List<CartItem>();
            }

            CartItemList.DataSource = cartItems;
            CartItemList.DataBind();
            TotalItemLabel.Text = CalculateTotalItem(cartItems).ToString();
            TotalLabel.Text = "RM " + CalculateTotal(cartItems).ToString();
            Label1.Text = CalculateTotalItem(cartItems).ToString();
        }
        protected void RemoveCartItemButton_Click(object sender, EventArgs e)
        {
            ImageButton button = (ImageButton)sender;
            string[] arg = new string[2];
            arg = button.CommandArgument.ToString().Split(',');
            int productId = Convert.ToInt32(arg[0]);
            int variantId = Convert.ToInt32(arg[1]);

            // Implement logic to remove the cart item by productId
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;

            if (cartItems != null)
            {
                CartItem itemToRemove = cartItems.Find(item => (item.ProductID == productId && item.VariantID == variantId));

                if (itemToRemove != null)
                {
                    cartItems.Remove(itemToRemove);
                }

                // Store the updated cart in session
                Session["CartItems"] = cartItems;

                // Refresh the cart items displayed on the page
                BindCartItems();
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
        protected void IncreaseQuantityButton_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            string[] arg = new string[2];
            arg = button.CommandArgument.ToString().Split(',');
            int productId = Convert.ToInt32(arg[0]);
            int variantId = Convert.ToInt32(arg[1]);

            // Implement logic to increase the quantity of the cart item by productId
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;

            if (cartItems != null)
            {
                CartItem itemToIncrease = cartItems.Find(item => (item.ProductID == productId && item.VariantID == variantId));

                if (itemToIncrease != null)
                {
                    // Increase the quantity by 1
                    itemToIncrease.Quantity++;

                    // Store the updated cart in session
                    Session["CartItems"] = cartItems;

                    // Refresh the cart items displayed on the page
                    BindCartItems();
                }
            }
        }

        protected void DecreaseQuantityButton_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            string[] arg = new string[2];
            arg = button.CommandArgument.ToString().Split(',');
            int productId = Convert.ToInt32(arg[0]);
            int variantId = Convert.ToInt32(arg[1]);

            // Implement logic to decrease the quantity of the cart item by productId
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;

            if (cartItems != null)
            {
                CartItem itemToDecrease = cartItems.Find(item => (item.ProductID == productId && item.VariantID == variantId));

                if (itemToDecrease != null && itemToDecrease.Quantity > 1)
                {
                    // Decrease the quantity by 1, but ensure it's never less than 1
                    itemToDecrease.Quantity--;

                    // Store the updated cart in session
                    Session["CartItems"] = cartItems;

                    // Refresh the cart items displayed on the page
                    BindCartItems();
                }
            }
        }

        protected void checkout(object sender, EventArgs e)
        {
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;
            bool result = true;
            if (cartItems != null && cartItems.Count != 0)
            {
                
                foreach (CartItem item in cartItems)
                {
                    if(checkUnitInStock(item.Quantity,item.ProductID,item.VariantID) == false)
                    {
                        result = false;
                        break;
                    }
                }

                if(result == true)
                {
                    Response.Redirect("checkout.aspx");
                }
                
            }
            else
            {
                Response.Write("<script>alert('Please select at least an item to proceed to the checkout session.')</script>");
            }
        }

        protected bool checkUnitInStock(int quantity, int productId, int variantId)
        {
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;
            String sql = "Select Units_In_Stock, Variant_Name from [Product_Variant]" +
    "WHERE Product_ID = @Product_ID AND Variant_ID = @Variant_ID";
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@Product_ID", productId);
            cmd.Parameters.AddWithValue("@Variant_ID", variantId);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        if (Convert.ToInt32(dr[0]) - quantity < 0)
                        {
                            Response.Write("<script> alert('The quantity of " + dr[1].ToString() + " has exceeded the stock quantity ')</script>");
                            con.Close();
                            return false;
                        }
                        else
                        {
                            con.Close();
                            return true;

                        }

                    }
                }
            }
            catch (Exception ex)
            { 
                Response.Write("<script>Something is wrong with our database.Please try again later</script>");
            }


            con.Close();
            return true;
            
        }
    }
}