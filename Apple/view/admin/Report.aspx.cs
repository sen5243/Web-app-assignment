using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;

namespace Assignment.view.admin
{
    public partial class Chart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "SELECT DISTINCT YEAR(Orders.Order_Date) AS Years FROM Orders";
                //string query2 = "SELECT  DISTINCT YEAR(Orders.Order_Date) AS Years FROM Orders";
                DataTable dt = GetData(query);
                // DataTable dt2 = GetData2(query2);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "Years";
                DropDownList1.DataValueField = "Years";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("Select", ""));


            }




        }



        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //pie chart
            Chart1.Visible = DropDownList1.SelectedValue != "";
           
            string query = string.Format("SELECT c.Category_Name, SUM(od.Quantity) AS CategorySalesCount FROM Category c LEFT JOIN Product p ON c.Category_ID = p.Category_ID LEFT JOIN Order_Detail od ON p.Product_ID = od.Product_ID LEFT JOIN Orders o ON od.Order_No = o.Order_No WHERE YEAR(o.Order_Date) = {0} GROUP BY c.Category_Name ORDER BY CategorySalesCount DESC", DropDownList1.SelectedValue);
            DataTable dt = GetData(query);


            string[] x = new string[dt.Rows.Count];  //array for category name
            int[] y = new int[dt.Rows.Count];   //array for productsSold

            for (int i = 0; i < dt.Rows.Count; i++)
            {

                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);

            }
            //Console.WriteLine(y);
            Chart1.Series[0].Points.DataBindXY(x, y);
            Chart1.DataBind();


            //////////
            //column chart
            Chart2.Visible = DropDownList1.SelectedValue != "";
            //string sql = " SELECT MONTH(o.Order_Date) AS Month,SUM(od.Quantity) AS IphoneSalesCount FROM Category c LEFT JOIN Product p ON c.Category_ID = p.Category_ID LEFT JOIN Product_Variant pv ON p.Product_ID = pv.Product_ID LEFT JOIN Order_Detail od ON pv.Variant_ID = od.Variant_ID LEFT JOIN Orders o ON od.Order_No = o.Order_No WHERE c.Category_Name = {0} GROUP BY MONTH(o.Order_Date) ORDER BY Month";

            //string query2 = string.Format("SELECT MONTH(o.Order_Date) AS Month,SUM(o.Total_Amount) AS SalesAmount FROM Category c LEFT JOIN Product p ON c.Category_ID = p.Category_ID LEFT JOIN Product_Variant pv ON p.Product_ID = pv.Product_ID LEFT JOIN Order_Detail od ON pv.Variant_ID = od.Variant_ID LEFT JOIN Orders o ON od.Order_No = o.Order_No WHERE YEAR(o.Order_Date) = {0} GROUP BY MONTH(o.Order_Date) ORDER BY Month", DropDownList2.SelectedValue);
            string query2 = string.Format("SELECT MONTH(o.Order_Date) AS Month, SUM(o.Total_Amount) AS SalesAmount FROM Orders o WHERE YEAR(o.Order_Date) = {0} GROUP BY MONTH(o.Order_Date) ORDER BY Month", DropDownList1.SelectedValue);
            DataTable dt2 = GetData2(query2);


            string[] a = new string[dt2.Rows.Count];  //array for category name
            int[] b = new int[dt2.Rows.Count];   //array for productsSold

            for (int i = 0; i < dt2.Rows.Count; i++)
            {

                //x[i] = dt2.Rows[i][0].ToString();
                //y[i] = Convert.ToInt32(dt2.Rows[i][1]);
                if (DBNull.Value.Equals(dt2.Rows[i][1]))
                {
                    b[i] = 0;
                }
                else
                {
                    b[i] = Convert.ToInt32(dt2.Rows[i][1]);
                }

                a[i] = dt2.Rows[i][0].ToString();

            }
            //Console.WriteLine(y);


            Chart2.Series[0].Points.DataBindXY(a, b);
            //Chart2.ChartAreas("CharArea1").AxisX.Title ="hje"
            Chart2.DataBind();


        }


        private static DataTable GetData(string query)
        {

            DataTable dt = new DataTable();
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(query);
            SqlDataAdapter da = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            da.SelectCommand = cmd;
            da.Fill(dt);
            return dt;
        }

        private static DataTable GetData2(string query2)
        {

            DataTable dt2 = new DataTable();
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(query2);
            SqlDataAdapter da = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            da.SelectCommand = cmd;
            da.Fill(dt2);
            return dt2;
        }

    }
}