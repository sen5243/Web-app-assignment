using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;

namespace Assignment
{
    public partial class AddProduct : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void fvAddProduct_InsertItem()
        {
            DropDownList ddlList = (DropDownList)fvAddProduct.FindControl("ddlCat");
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();


            FileUpload fileUpload1 = (FileUpload)fvAddProduct.FindControl("FileUpload1");
            Label LabelResult = (Label)fvAddProduct.FindControl("LabelResult");

            try
            {
                if (fileUpload1.HasFile)
                {
                    //fileName = fuimage.FileName;
                    String filePath = Server.MapPath("~/assets/images/" + fileUpload1.FileName);
                    fileUpload1.SaveAs(filePath);
                    LabelResult.Text = "Your file was successfully uploaded";
                    con.Open();
                    cmd.Connection = con;
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.CommandText = "Product";
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
                Response.Write("Failed");
            }

            try
            {
                Models.Product item = new Models.Product();
                TryUpdateModel(item);
                if (ModelState.IsValid)
                {

                    // Save changes here
                    item.Category_ID = Int32.Parse(ddlList.SelectedValue);
                    item.Image_Path = "~/assets/images/" + fileUpload1.FileName;
                    
                    Models.ShopEntities _db = new Models.ShopEntities();
                    _db.Products.Add(item);

                    _db.SaveChanges();
                    Response.Redirect("Product.aspx");
                }
            }
            catch(Exception ex)
            {
                LabelResult.ForeColor = Color.Red;
                LabelResult.Text = "Invalid data input, please check it again";
            }
           
        }

        protected void fvAddProduct_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName == "Cancel")
                Response.Redirect("Product.aspx");
        }

        protected void fvAddProduct_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }

}