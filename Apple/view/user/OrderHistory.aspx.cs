using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Not_Apple.view.user
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT Order_Date, Total_Amount, Shipped_Date, Ship_Address, Ship_State, Ship_Postal_Code, Order_Status FROM Orders JOIN Customers ON Orders.Customer_ID = Customers.Customer_ID WHERE Email_Address = @email";

                using (SqlCommand command = new SqlCommand(query,connection))
                {
                    command.Parameters.AddWithValue("@email", Session["email"].ToString());
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataSet ds = new DataSet();
                        adapter.Fill(ds);

                        gvOrderHistory.DataSource = ds;
                        gvOrderHistory.DataBind();
                    }
                }
                connection.Close();
            }
        }
    }
}