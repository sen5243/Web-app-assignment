using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Not_Apple.view
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
            FormsAuthentication.SignOut();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            lblLoginError.Visible = true;

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\Shop.mdf; Integrated Security = SSPI;");
            SqlDataAdapter sda = new SqlDataAdapter();
            SqlCommand cmd;

            cmd = new SqlCommand("select * from Customers where Email_Address = @email", con);
            cmd.Parameters.AddWithValue("@email", inputEmail.Text);

            sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count == 0)
            {
                lblLoginError.Text = "Email not Registered, Please Sign Up!";
            }

            else if (Membership.ValidateUser(inputEmail.Text, inputPassword.Text))
            {
                
                var role = Roles.GetRolesForUser(inputEmail.Text);
                string redirectUrl = "";

                if (Roles.IsUserInRole(inputEmail.Text, "admin"))
                {
                    Session["email"] = inputEmail.Text;
                    redirectUrl = "~/view/admin/Report.aspx";
                }
                else
                {
                    Session["email"] = inputEmail.Text;
                    redirectUrl = "../index.aspx";
                }

                FormsAuthentication.RedirectFromLoginPage(inputEmail.Text, false);
                Response.Redirect(redirectUrl);
            }
            else
            {
                if (Membership.GetUser(inputEmail.Text).IsLockedOut)
                {
                    lblLoginError.Text = "Login Failed. Your account is locked out";
                }
                else
                {
                    lblLoginError.Text = "Invalid Email or Password!";
                }
            }
        }
    }
}