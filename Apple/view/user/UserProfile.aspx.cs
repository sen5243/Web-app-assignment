using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.view.user
{
    public partial class userProfile : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            String email;
            if (Session["email"] == null) {
                Response.Redirect("~/view/Login.aspx");
            }
            else
            {
                email = Session["email"].ToString();
            }

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT * FROM customers LEFT JOIN State ON Customers.State = State.State_ID WHERE Email_Address = @email";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@email", Session["email"].ToString());
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.Read())
                        {
                            string readName = reader.IsDBNull(reader.GetOrdinal("Customer_Name"))
                                ? "Not Set"
                                : reader.GetString(reader.GetOrdinal("Customer_Name"));

                            string readEmail = reader.IsDBNull(reader.GetOrdinal("Email_Address"))
                                ? "Not Set"
                                : reader.GetString(reader.GetOrdinal("Email_Address"));

                            string readGender = reader.IsDBNull(reader.GetOrdinal("Gender"))
                                ? "Not Set"
                                : reader.GetString(reader.GetOrdinal("Gender"));

                            string readDob;
                            if (reader.IsDBNull(reader.GetOrdinal("Date_Of_Birth")))
                            {
                                readDob = "Not Set";
                            }
                            else
                            {
                                DateTime dateValue = reader.GetDateTime(reader.GetOrdinal("Date_Of_Birth"));
                                readDob = dateValue.ToString("dd MMMM yyyy", CultureInfo.InvariantCulture);
                            }

                            string readPhoneNo = reader.IsDBNull(reader.GetOrdinal("Phone_No"))
                                ? "Not Set"
                                : reader.GetString(reader.GetOrdinal("Phone_No"));

                            string readAddress = reader.IsDBNull(reader.GetOrdinal("Address"))
                                ? "Not Set"
                                : reader.GetString(reader.GetOrdinal("Address"));

                            string readPostalCode = reader.IsDBNull(reader.GetOrdinal("Postal_Code"))
                                ? "Not Set"
                                : reader.GetString(reader.GetOrdinal("Postal_Code"));

                            string readState = reader.IsDBNull(reader.GetOrdinal("State_Name"))
                                ? "Not Set"
                                : reader.GetString(reader.GetOrdinal("State_Name"));

                            lblfull_name.Text = readName;
                            lblemail.Text = readEmail;
                            lblgender.Text = readGender;
                            lbldob.Text = readDob;
                            lblcontact_no.Text = readPhoneNo;
                            lbladdress.Text = readAddress;
                            lblpostal_code.Text = readPostalCode;
                            lblstate.Text = readState;
                        }
                        reader.Close();
                    }
                    connection.Close();
                }
            }
           
        }
    }
