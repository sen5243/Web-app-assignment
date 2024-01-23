using Assignment.cart;
using Newtonsoft.Json.Linq;
using Stripe.Terminal;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Not_Apple.view.products
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private DataAccess dataAccess = new DataAccess();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(PreviousPage != null || IsPostBack == true)
            {
                initVariantInfo();
            }
            else
            {
                Response.Write("<script>alert('Direct access to Product Detail Page is not allowed');window.location = '../cart/cart.aspx';</script>");
            }
            
        }
       
        protected void btnAddtoCart_Click(object sender, EventArgs e)
        {
            if(txtQuantity.Text != null && txtQuantity.Text != "")
            {
                int quantity = Int32.Parse(txtQuantity.Text);

                String productIdString = Request.QueryString["Product_ID"];
                String variantIdString = DropDownList1.SelectedValue.ToString();

                int productId = Int32.Parse(productIdString);
                int variantId = Int32.Parse(variantIdString);

                // Retrieve product details
                Product product = dataAccess.GetProductById(productId, variantId);


                if (quantity > product.Unit_In_Stock)
                {
                    lblError.Text = "The quantity input of " + product.VariantName + " has exceeded the stock quantity";
                    lblError.Visible = true;
                }
                else if (quantity <= 0)
                {
                    lblError.Text = "Invalid quantity input";
                    lblError.Visible = true;
                }
                else
                {
                    // Add the product to the shopping cart
                    AddToCart(product, quantity);
                    // Redirect to the shopping cart page
                    Response.Redirect("cart.aspx");
                }
            }
            else
            {
                lblError.Text = "Please fill in the quantity.";
                lblError.Visible = true;
            }
            
            
            

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String Product_ID = Request.QueryString["Product_ID"];
            String sql = "Select Product_Variant.Product_ID,Product_Variant.Variant_ID,Product.Product_Name,Product_Variant.Variant_Name,Product_Variant.Image_Path,Product_Variant.Unit_Price, Product_Variant.Units_In_Stock FROM Product_Variant,Product,Variant WHERE Product_Variant.Product_ID = Product.Product_ID AND Product_Variant.Variant_ID = Variant.Variant_ID AND Product.Product_ID= @Product_ID";
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@Product_ID", Product_ID);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            try
            {
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {


                        if (dr[0].ToString() == Product_ID && dr[1].ToString() == DropDownList1.SelectedValue.ToString())
                        {
                            lblVariantName.Text = "Variant Name: " + dr["Variant_Name"].ToString();
                            imgProduct.ImageUrl = dr["Image_Path"].ToString();
                            lblPrice.Text = "Unit Price: RM " + dr["Unit_Price"].ToString();
                            lblStoce.Text = dr["Units_In_Stock"].ToString() + " in Stock";

                            if ((int)dr["Units_In_Stock"] == 0)
                            {
                                lblStoce.Text = "This product has temporarily out of stock";
                                btnAddtoCart.Enabled = false;
                            }
                            else
                            {
                                btnAddtoCart.Enabled = true;
                            }
                        }

                    }
                }
            }
            catch(Exception ex)
            {
                Response.Redirect("~/DefaultError.html");
            }



            con.Close();
        }

        protected void initVariantInfo()
        {
            String Product_ID = Request.QueryString["Product_ID"];
            String sql = "Select Product_Variant.Product_ID,Product_Variant.Variant_ID,Product.Product_Name,Product_Variant.Variant_Name,Product_Variant.Image_Path,Product_Variant.Unit_Price, Product_Variant.Units_In_Stock FROM Product_Variant,Product,Variant WHERE Product_Variant.Product_ID = Product.Product_ID AND Product_Variant.Variant_ID = Variant.Variant_ID AND Product.Product_ID= @Product_ID";
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@Product_ID", Product_ID);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                lblProductName.Text = "Product Name: " + dr["Product_Name"].ToString();
                lblVariantName.Text = "Variant Name: " + dr["Variant_Name"].ToString();
                imgProduct.ImageUrl = dr["Image_Path"].ToString();
                lblPrice.Text = "Unit Price: RM " + dr["Unit_Price"].ToString();
                lblStoce.Text = dr["Units_In_Stock"].ToString() + " in Stock";
            }
            con.Close();
        }

        private void AddToCart(Product product, int quantity)
        {
           
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;

            if (cartItems == null)
            {
                cartItems = new List<CartItem>();
            }

            CartItem cartItem = cartItems.Find(item => (item.ProductID == product.ProductID && item.VariantID == product.VariantID));

            
            if (cartItem != null)
            {
                // If the product is already in the cart, update the quantity
                cartItem.Quantity += quantity;
            }
            else
            {
                // If the product is not in the cart, add it as a new item
                cartItem = new CartItem
                {
                    ProductID = product.ProductID,
                    VariantID = product.VariantID,
                    ProductName = product.ProductName,
                    VariantName = product.VariantName,
                    Price = product.Price,
                    Image = product.Image,
                    Quantity = quantity
                };
                cartItems.Add(cartItem);
            }

            // Store the updated cart in session
            Session["CartItems"] = cartItems;

        }
    }
}