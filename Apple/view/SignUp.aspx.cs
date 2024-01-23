using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Not_Apple.view
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            lblRegisterError.Visible = true;
            
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

            if (dt.Rows.Count > 0)
            {
                lblRegisterError.Text = "Email already Registered!";
            }
            
            else if(inputPassword.Text.Length < Membership.MinRequiredPasswordLength || !Regex.IsMatch(inputPassword.Text,Membership.PasswordStrengthRegularExpression))
            {
                lblRegisterError.Text = "Please enter your password with the length of 7 to 32 characters consists of " +
                    "\nat least 1 alpha";
            }
            else
            {
                //Update Customer Database
                cmd = new SqlCommand("INSERT INTO Customers(Customer_Name,Email_Address) VALUES(@name,@email)", con);
                cmd.Parameters.AddWithValue("@name", inputFullName.Text);
                cmd.Parameters.AddWithValue("@email", inputEmail.Text);

                sda = new SqlDataAdapter(cmd);
                con.Open();
                cmd.ExecuteNonQuery();

                sda.Dispose();
                con.Close();

                //Create user in ASP.NET Membership Table
                Membership.CreateUser(inputEmail.Text, inputPassword.Text);
                MembershipUser user = Membership.GetUser(inputEmail.Text);
                user.Email = inputEmail.Text;
                Membership.UpdateUser(user);

                //Add Customer role to new sign up account
                if (!Roles.IsUserInRole(inputEmail.Text, "Customer"))
                {
                    Roles.AddUserToRole(inputEmail.Text, "Customer");
                }

                Response.Redirect("SignUpSuccessful.aspx");
            }
        }
    }
}