using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Not_Apple.view.user
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btmChangePassword_Click(object sender, EventArgs e)
        {
            lblPasswordError.Visible = true;
            MembershipUser u = Membership.GetUser(Session["email"].ToString());

            if (inputNewPassword.Text.Length < Membership.MinRequiredPasswordLength || !Regex.IsMatch(inputNewPassword.Text, Membership.PasswordStrengthRegularExpression))
            {
                lblPasswordError.Text = "Please enter your password with the length of 7 to 32 characters consists of " +
                    "\nat least 1 alpha";
            }
            else
            {
                if (u.ChangePassword(inputOldPassword.Text, inputNewPassword.Text))
                {
                    string script = "alert(\"Hello!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    Response.Redirect("UserProfile.aspx");
                }
                else
                {
                    if(!Membership.ValidateUser(u.Email, inputOldPassword.Text))
                    {
                        Debug.Write(u.Email + " "+ inputOldPassword.Text);
                        lblPasswordError.Text = "Old Password Wrong! Please Try Again.";
                    }
                    else
                    {
                        lblPasswordError.Text = "Something wrong";
                    }
                }
            }
        }
    }
}