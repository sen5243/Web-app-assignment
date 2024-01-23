using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.view.admin
{
    public partial class CustomerDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    // If querystring value is missing, send the user to ManageUsers.aspx
                    string user = Request.QueryString["Email_Address"];
                    if (string.IsNullOrEmpty(user))
                        Response.Redirect("Customer.aspx");

                    // Get information about this user
                    MembershipUser usr = Membership.GetUser(user);

                    lblCustomer.Text = usr.UserName;

                    if (usr.IsLockedOut)
                    {
                        lblLock.Text = "Locked Out";
                    }
                    else
                    {
                        lblLock.Text = "Not Locked Out";
                    }

                    if (usr.LastLockoutDate.Year < 2000)

                        lblDate.Text = "NULL";
                    else
                        lblDate.Text = usr.LastLockoutDate.ToShortDateString();

                    btnUnlock.Enabled = usr.IsLockedOut;
                }
                catch (Exception ex)
                {
                    Response.Redirect("~/DefaultError.aspx");
                }

            }
        }

        protected void btnUnlock_Click(object sender, EventArgs e)
        {

                // Unlock the user account
                string user = Request.QueryString["Email_Address"];
                MembershipUser usr = Membership.GetUser(user);

                usr.UnlockUser();
                btnUnlock.Enabled = false;
                lblMsg.Visible = true;
                lblMsg.Text = "The user account has been unlocked.";

        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            string user = Request.QueryString["Email_Address"];
            MembershipUser usr = Membership.GetUser(user);

            Response.Redirect("CustomerOrder.aspx?Email_Address=" + usr.Email);
        }
    }
}