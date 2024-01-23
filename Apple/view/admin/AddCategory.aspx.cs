using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void fvInsertCategory_InsertItem()
        {
            Models.Category item = new Models.Category();
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                // Save changes here
                Models.ShopEntities _db = new Models.ShopEntities();
                _db.Categories.Add(item);
                _db.SaveChanges();
                Response.Redirect("Category.aspx");
            }
        }

        protected void fvInsertCategory_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName == "Cancel")
                Response.Redirect("Category.aspx");
        }
    }
}