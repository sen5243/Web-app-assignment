using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class Assignment : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnprofile_Click(object sender, EventArgs e)
        {

            MembershipUser user = Membership.GetUser();

            if (user != null && user.IsOnline)
            {
                if (Roles.IsUserInRole("Admin"))
                {
                    Response.Redirect("~/view/admin/Report.aspx");
                }
                else
                {
                    Response.Redirect("~/view/user/userProfile.aspx");
                }
            }
            else
            {
                Response.Redirect("~/view/Login.aspx");
            }
        }
    }
}