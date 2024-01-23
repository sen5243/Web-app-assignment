using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;
using System.Web.Security;
using System.Diagnostics;

namespace Not_Apple.view.user
{
    public partial class UserPortal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                MembershipUser user = Membership.GetUser();

                if (user != null && user.IsOnline)
                {
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        string query = "SELECT * FROM Customers WHERE Email_Address = @email";
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            command.Parameters.AddWithValue("@email", Session["email"].ToString());
                            SqlDataReader reader = command.ExecuteReader();
                            while (reader.Read())
                            {
                                lblUsername.Text = reader.GetString(reader.GetOrdinal("Customer_Name"));
                            }
                            reader.Close();
                        }
                        connection.Close();
                    }
                }
                else
                {
                    Response.Redirect("~/view/Login.aspx");
                }
            }
            catch(Exception ex)
            {
                Response.Redirect("~/view/Login.aspx");
            }
           
        }

        protected void linkHomePage_Click(object sender, EventArgs e)
        {
            Debug.WriteLine(Session["email"].ToString());

                if (Session["email"]!= null)
                {
                    if (Roles.IsUserInRole(Session["email"].ToString(), "admin"))
                    {
                        Response.Redirect("~/view/admin/Report.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/index.aspx");
                    }
                }
            else
            {
                Response.Redirect("~/view/Login.aspx");
            }

            
        }

        protected void linkUserProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }

        protected void linkEditProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProfile.aspx");
        }

        protected void linkChgPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }

        protected void linkHistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderHistory.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            FormsAuthentication.SignOut();
            Response.Redirect("~/view/Login.aspx");
        }
    }
}