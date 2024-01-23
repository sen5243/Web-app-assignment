using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.view.user
{
    public partial class EditProfile : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string email = Session["email"].ToString();

                if (!IsPostBack)
                {
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        string query = "SELECT * FROM Customers WHERE Email_Address = @email";
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            command.Parameters.AddWithValue("@email", email);

                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    inputFullName.Text = (string)reader["Customer_Name"];
                                    showEmail.Text = (string)reader["Email_Address"];

                                    if (reader["Gender"] == DBNull.Value)
                                    {

                                    }
                                    else if (reader["Gender"].ToString() == "Male")
                                    {
                                        GenderMale.Checked = true;
                                    }
                                    else if (reader["Gender"].ToString() == "Female")
                                    {
                                        GenderFemale.Checked = true;
                                    }

                                    if (reader["Date_Of_Birth"] == DBNull.Value)
                                    {
                                        inputDoB.Text = "";
                                    }
                                    else
                                    {
                                        DateTime dobValue = DateTime.Parse(reader["Date_Of_Birth"].ToString());
                                        inputDoB.Text = dobValue.ToString("yyyy-MM-dd");
                                    }

                                    inputContactNumber.Text = (reader["Phone_No"] == DBNull.Value) ? "" : (string)reader["Phone_No"]; ;
                                    inputAddress.Text = (reader["Address"] == DBNull.Value) ? "" : (string)reader["Address"];
                                    inputPostalCode.Text = (reader["Postal_Code"] == DBNull.Value) ? "" : (string)reader["Postal_Code"];
                                    ddlState.SelectedValue = (reader["State"] == DBNull.Value) ? "1" : reader["State"].ToString();
                                }
                                reader.Close();
                            }
                        }
                        connection.Close();
                    }
                }
            }
            catch(Exception ex)
            {
                Response.Redirect("~/view/Login.aspx");
            }
            
        }

        protected void btmUpdateProfile_Click(object sender, EventArgs e)
        {
            string email = Session["email"].ToString();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "UPDATE Customers SET Customer_Name=@name, Gender=@gender, Date_Of_Birth=@dob, Phone_No=@phone_no, Address=@address, Postal_Code=@postal_code, State = @state WHERE Email_Address=@email";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@name", inputFullName.Text);
                    command.Parameters.AddWithValue("@email", email);
                    if (GenderMale.Checked == true)
                    {
                        command.Parameters.AddWithValue("@gender", "Male");
                    }
                    else if (GenderFemale.Checked == true)
                    {
                        command.Parameters.AddWithValue("@gender", "Female");
                    }
                    else
                    {
                        command.Parameters.AddWithValue("@gender", "");
                    }
                    command.Parameters.AddWithValue("@dob", inputDoB.Text);
                    command.Parameters.AddWithValue("@phone_no", inputContactNumber.Text);
                    command.Parameters.AddWithValue("@address", inputAddress.Text);
                    command.Parameters.AddWithValue("@postal_code", inputPostalCode.Text);
                    command.Parameters.AddWithValue("@state", ddlState.SelectedValue);
                    
                    Debug.WriteLine(ddlState.SelectedValue.ToString());
                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        string script = "alert('Update Successful!');";
                        ClientScript.RegisterStartupScript(this.GetType(), "ShowAlert", script, true);
                        Response.Redirect("userProfile.aspx");
                    }
                    else
                    {
                        string script = "alert('Something Wrong! Please Try Again');";
                        ClientScript.RegisterStartupScript(this.GetType(), "ShowAlert", script, true);
                    }
                }
                connection.Close();
            }
        }
    }
}