using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Web;
using System.Web.UI.WebControls;
using System.Xml;
using Braintree;


namespace Assignment.cart
{
    public partial class checkout : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null) { //if user not login
                Response.Redirect("~/view/Login.aspx");
            }
            if(Session["CartItems"] == null) //if cart item = 0
            {
                Response.Redirect("cart.aspx");
            }
           var gateway = new BraintreeGateway
           {
                    Environment = Braintree.Environment.SANDBOX,
                    MerchantId = "3kd8693pr2239fsz",
                    PublicKey = "r7khm8kp3h6427cv",
                    PrivateKey = "19181616fcbc8fbbfc5cf88d0a77a892"
           };

            var token = gateway.ClientToken.Generate();

            //pass client token via cookie
            HttpCookie usertoken = new HttpCookie("usertoken");
            usertoken["UserID"] = token;
            usertoken.Expires.Add(new TimeSpan(0, 1, 0));
            Response.Cookies.Add(usertoken);

            if (!IsPostBack)
            {
                //Initialize form 
                formInit();
                submitbutton.Enabled = true;
            }

            //Initialize cart
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;
            CartItemList.DataSource = cartItems;
            CartItemList.DataBind();
            total_amount.Value = CalculateTotal(cartItems).ToString();
            TotalItemLabel.Text = CalculateTotalItem(cartItems).ToString();
            TotalLabel.Text = "RM " + CalculateTotal(cartItems).ToString();
           
        }

        protected void formInit()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                string query = "SELECT * FROM customers LEFT JOIN State ON Customers.State = State.State_ID WHERE Email_Address = @email";
                using (SqlCommand command = new SqlCommand(query, con))
                {
                    command.Parameters.AddWithValue("@email", Session["email"].ToString());
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        string readName = reader.IsDBNull(reader.GetOrdinal("Customer_Name"))
                            ? ""
                            : reader.GetString(reader.GetOrdinal("Customer_Name"));

                        string readEmail = reader.IsDBNull(reader.GetOrdinal("Email_Address"))
                            ? ""
                            : reader.GetString(reader.GetOrdinal("Email_Address"));
                        string readAddress = reader.IsDBNull(reader.GetOrdinal("Address"))
                            ? ""
                            : reader.GetString(reader.GetOrdinal("Address"));

                        string readPostalCode = reader.IsDBNull(reader.GetOrdinal("Postal_Code"))
                            ? ""
                            : reader.GetString(reader.GetOrdinal("Postal_Code"));

                        string readState = reader.IsDBNull(reader.GetOrdinal("State_Name"))
                            ? ""
                            : reader.GetString(reader.GetOrdinal("State_Name"));

                        fname.Text = readName;
                        email.Text = readEmail;
                        adr.Text = readAddress;
                        pos.Text = readPostalCode;
                        Debug.WriteLine(readState);
                       
                    }
                    reader.Close();

                }
                con.Close();
            }

            //Make important field uneditable if set in the user profile
            if(fname.Text != "") { 
                fname.ReadOnly = true;
            }
            if(email.Text != "")
            {
                email.ReadOnly = true;
            }
        }
        protected void submitbutton_Click(object sender, EventArgs e)
        {
            
            decimal totalAmount;

            if (decimal.TryParse(total_amount.Value.ToString(), out totalAmount))
            {
                Debug.WriteLine("TotalAmount: " + totalAmount);
            }
            else
            {
                Debug.WriteLine("Failed");
            }

            var gateway = new BraintreeGateway
            {
                Environment = Braintree.Environment.SANDBOX,
                MerchantId = "3kd8693pr2239fsz",
                PublicKey = "r7khm8kp3h6427cv",
                PrivateKey = "19181616fcbc8fbbfc5cf88d0a77a892"
            };

            var request = new TransactionRequest
            { 
                Amount = totalAmount,
                PaymentMethodNonce = payment_method_nonce.Value.ToString(),
                Options = new TransactionOptionsRequest
                {
                    SubmitForSettlement = true
                },
            };

            Result<Transaction> result = gateway.Transaction.Sale(request);
            Debug.WriteLine(result.Message);
            Debug.WriteLine(payment_method_nonce.Value.ToString());

            HttpContext httpContext = HttpContext.Current;
            httpContext.Items.Add("result", result.Message); // optional. You may store any variable.
           
            if (result.IsSuccess())
            {
                insertOrder();
                Debug.WriteLine("Order Inserted");
                Server.Transfer("success.aspx");

            }
            else
            {
                Server.Transfer("fail.aspx");
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
        protected int getUserID()
        {

            String sql = "SELECT Customer_ID FROM customers LEFT JOIN State ON Customers.State = State.State_ID WHERE Email_Address = @email; SELECT @@IDENTITY;"; 
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
            int id = 0;
            try
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if(reader.Read())
                {
                     id = reader.IsDBNull(reader.GetOrdinal("Customer_ID"))
                          ? 0
                          : reader.GetInt32(reader.GetOrdinal("Customer_ID"));
                }
                return id;
            }
            catch(Exception ex)
            {
                Response.Redirect("~/DefaultError.html");
                return 0;
            }

        }
        protected void insertOrder()
        {
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;

            int orderId;
            int custId = getUserID();
            Debug.WriteLine(custId);
            DateTime orderDate = DateTime.Now;
            decimal totalPrice = CalculateTotal(cartItems); 
            String stateValue = state.SelectedValue.ToString();
            String address = adr.Text;
            String postal = pos.Text;
            String status = "Pending";

            String sql = "INSERT INTO [Orders] (Order_Date, Total_Amount, Ship_Address, Ship_State, Ship_Postal_Code, Order_Status, Customer_ID)" +
                "VALUES (@orderDate, @totalPrice, @shipAddress, @stateValue, @postal, @status, @custId); SELECT @@IDENTITY;"; //insert order and retrieve the orderID using @@IDENTITY
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@orderDate", orderDate);
            cmd.Parameters.AddWithValue("@totalPrice", totalPrice);
            cmd.Parameters.AddWithValue("@shipAddress", address);
            cmd.Parameters.AddWithValue("@stateValue", stateValue);
            cmd.Parameters.AddWithValue("@postal", postal);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("@custId", custId);

            try
            {
                con.Open();
                orderId = Convert.ToInt32(cmd.ExecuteScalar()); // return order id to be used later

                if (orderId != 0)
                {
                    foreach (CartItem item in cartItems)
                    {
                        // Insert order detail for each cart item and update stock quantity
                        insertOrderDetail(orderId, item.ProductID, item.VariantID, (item.Quantity * item.Price), item.Quantity);
                        updateStock(item.Quantity, item.ProductID, item.VariantID);
                    }
                }

               

            }
            catch(Exception ex)
            {
                Response.Redirect("~/DefaultError.html");
            }

            con.Close();
        }

        protected void insertOrderDetail(int orderId, int productId, int variantId, decimal subtotal, int quantity)
        {
            String sql = "INSERT INTO [Order_Detail] (Order_No, Product_ID, Variant_ID, Subtotal, Quantity)" +
    "VALUES (@orderId, @productId, @variantId, @subtotal, @quantity);";
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@orderId", orderId);
            cmd.Parameters.AddWithValue("@productId", productId);
            cmd.Parameters.AddWithValue("@variantId", variantId);
            cmd.Parameters.AddWithValue("@subtotal", subtotal);
            cmd.Parameters.AddWithValue("@quantity", quantity);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                Response.Redirect("~/DefaultError.html");
            }


            con.Close();
        }
        //Update stock quantity
        protected void updateStock(int quantity, int productId, int variantId)
        {
            String sql = "UPDATE [Product_Variant] SET Units_In_Stock = Units_In_Stock - @Quantity " +
                "WHERE Product_ID = @Product_ID AND Variant_ID = @Variant_ID";
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@Quantity", quantity);
            cmd.Parameters.AddWithValue("@Product_ID", productId);
            cmd.Parameters.AddWithValue("@Variant_ID", variantId);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                Response.Redirect("~/DefaultError.html");
            }


            con.Close();
        }
        protected void IndexChanged(object sender, EventArgs e)
        {
            Debug.WriteLine(state.SelectedValue.ToString());
        }
    }
}
