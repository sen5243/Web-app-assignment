using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.view.admin
{
    public partial class UpdatePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string Order_No = Request.QueryString["Order_No"] ?? "";

                string sql = "Select Order_Detail.Order_No,Orders.Total_Amount,Orders.Order_Status,Order_Detail.SubTotal,Order_Detail.Quantity,Product.Product_ID,Product_Variant.Variant_Name,Product_Variant.Unit_Price,Product_Variant.Image_Path FROM Orders,Order_Detail,Product_Variant,Product WHERE Orders.Order_No = Order_Detail.Order_No AND Order_Detail.Product_ID = Product_Variant.Product_ID AND Order_Detail.Variant_ID = Product_Variant.Variant_ID AND Order_Detail.Product_ID = Product.Product_ID and Orders.Order_No = @Order_No";
                string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@Order_No", Order_No);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows) //check whether got rows first
                {

                    dr.Read();// put the reader in first row to get orderNo,status,ttlAmt first
                    TotalAmountLabel.Text = dr["Total_Amount"].ToString();
                    StatusLabel.Text = dr["Order_Status"].ToString();
                    Order_NoLabel.Text = dr["Order_No"].ToString();


                    dr.Close();//close reader
                    dr = cmd.ExecuteReader();//start from first row to bind other order details for repeater
                    OrderDetailsRepeater.DataSource = dr;
                    OrderDetailsRepeater.DataBind();
                }
                con.Close();

            }


        }
        protected void ConfirmOrder_Click(object sender, EventArgs e)
        {
            string Order_No = Request.QueryString["Order_No"] ?? "";
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);


            // check the current order status first 
            String checkStatus = "SELECT Order_Status FROM Orders WHERE Order_No = @Order_No";
            SqlCommand checkStatusCmd = new SqlCommand(checkStatus, con);
            checkStatusCmd.Parameters.AddWithValue("@Order_No", Order_No);
            con.Open();
            string currentStatus = (string)checkStatusCmd.ExecuteScalar();

            con.Close();



            if (currentStatus.Trim() == "Shipped" || currentStatus.Trim() == "Completed")
            {
                string msg1 = "Cannot confirm order again,the order already been confirmed and shipped";
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('" + msg1 + "');", true);
                ScriptManager.RegisterStartupScript(this, GetType(), "redirect", "window.location='" + "OrdersPage.aspx" + "';", true);

            }
            else
            {
                string sql = @"UPDATE Orders SET Order_Status = 'Shipped', Shipped_Date = @Shipped_Date WHERE Order_No = @Order_No";

                SqlCommand cmd = new SqlCommand(sql, con);

                cmd.Parameters.AddWithValue("@Order_No", Order_No);
                cmd.Parameters.AddWithValue("@Shipped_Date", DateTime.Now);
                con.Open();
                cmd.ExecuteReader();

                con.Close();

                Response.Redirect("OrdersPage.aspx");

            }

        }

        protected void CompleteOrder_Click(object sender, EventArgs e)

        {
            string Order_No = Request.QueryString["Order_No"] ?? "";
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);


            // check the current order status first 
            String checkStatus = "SELECT Order_Status FROM Orders WHERE Order_No = @Order_No";
            SqlCommand checkStatusCmd = new SqlCommand(checkStatus, con);
            checkStatusCmd.Parameters.AddWithValue("@Order_No", Order_No);
            con.Open();
            string currentStatus = (string)checkStatusCmd.ExecuteScalar();

            con.Close();

            if (currentStatus.Trim() == "Completed")
            {
                string msg2 = "The order already been completed";
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('" + msg2 + "');", true);
                ScriptManager.RegisterStartupScript(this, GetType(), "redirect", "window.location='" + "OrdersPage.aspx" + "';", true);

            }
            else if (currentStatus.Trim() == "Pending")
            {
                string msg3 = "Cannot complete order again,the order havent been shipped yet";
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('" + msg3 + "');", true);
                ScriptManager.RegisterStartupScript(this, GetType(), "redirect", "window.location='" + "OrdersPage.aspx" + "';", true);


            }
            else
            {
                string sql = @"Update Orders set Order_Status ='Completed' where Order_No = @Order_No";

                SqlCommand cmd = new SqlCommand(sql, con);

                cmd.Parameters.AddWithValue("@Order_No", Order_No);
                con.Open();
                cmd.ExecuteReader();

                con.Close();

                Response.Redirect("OrdersPage.aspx");


            }

        }
    }
}