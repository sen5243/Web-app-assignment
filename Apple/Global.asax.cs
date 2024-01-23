using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.SessionState;
using Stripe;

namespace Assignment
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            HttpContext context = HttpContext.Current;
            if (context != null && context.Session != null)
            {
                Session.Clear();
            }
            if (!Roles.RoleExists("Admin"))
            {
                Debug.WriteLine(Roles.GetAllRoles().ToString());
                Roles.CreateRole("Admin");
            }

            if (!Roles.RoleExists("Customer"))
            {
                Debug.WriteLine(Roles.GetAllRoles().ToString());
                Roles.CreateRole("Customer");
            }


            if (Membership.FindUsersByName("admin@gmail.com").Count == 0)
            {
                Membership.CreateUser("admin@gmail.com", "admin1234");
                MembershipUser user = Membership.GetUser("admin@gmail.com");
                user.Email = "admin@gmail.com";
                Membership.UpdateUser(user);
            }

            if (!Roles.IsUserInRole("admin@gmail.com", "Admin"))
            {
                Roles.AddUserToRole("admin@gmail.com", "Admin");
                Debug.WriteLine("Role added to Admin"); 
            }
        }
        void Application_End(object sender, EventArgs e)
        {
            HttpContext context = HttpContext.Current;
            if (context != null && context.Session != null)
            {
                Session.Clear();
            }
        }
        void Session_End(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
        }
    }
}