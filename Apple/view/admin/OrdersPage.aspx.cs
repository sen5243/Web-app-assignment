using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.view.admin
{
    public partial class OrdersPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "select * from Orders";

            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;



            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);


            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            //data bnding
            //Gridview1.DataSource = dr;
            GridView1.DataSource = dr;
            GridView1.DataBind();

            dr.Close();
            con.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DetailsView2_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}