using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class AddProductVariant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void fvInsertVariant_InsertItem()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();


            FileUpload fileUpload1 = (FileUpload)fvInsertVariant.FindControl("FileUpload1");
            //Label LabelResult = (Label)fvInsertVariant.FindControl("LabelResult");
            DropDownList ddlList = (DropDownList)fvInsertVariant.FindControl("vIdList");
            DropDownList ddlList2 = (DropDownList)fvInsertVariant.FindControl("pIdList");
            
            try
            {
                if (fileUpload1.HasFile)
                {
                    String filePath = Server.MapPath("~/assets/images/" + fileUpload1.FileName);
                    fileUpload1.SaveAs(filePath);
                    con.Open();
                    cmd.Connection = con;
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.CommandText = "Product_Variant";
                    cmd.Parameters.AddWithValue("@Image_Path", fileUpload1.FileName);
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    con.Dispose();
                    con.Close();

                    Response.Write("Succ");
                }
                else
                {
                    Response.Write("Failed");
                }

            }
            catch (Exception)
            {
                Response.Write("Failed. Product already exists.");
            }

            try
            {
                Models.Product_Variant item = new Models.Product_Variant();
                TryUpdateModel(item);
                if (ModelState.IsValid)
                {
                    item.Product_ID = Int32.Parse(ddlList2.SelectedValue);
                    // Save changes here
                    item.Variant_ID = Int32.Parse(ddlList.SelectedValue);
                    item.Image_Path = "~/assets/images/" + fileUpload1.FileName;

                    Models.ShopEntities _db = new Models.ShopEntities();
                    _db.Product_Variant.Add(item);
                    _db.SaveChanges();
                    Response.Redirect("Product.aspx");
                }
            }
            catch(Exception ex)
            {
                Response.Write("");
            }

        }

        protected void fvInsertVariant_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName == "Cancel")
                Response.Redirect("Product.aspx");
        }

        protected void fvInsertVariant_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
}