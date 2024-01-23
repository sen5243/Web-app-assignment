using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment.cart
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Data.SqlClient;
    using System.Configuration;

    public class DataAccess
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        public List<Product> GetAllProducts()
        {
            List<Product> products = new List<Product>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "Select Product_Variant.Product_ID,Product_Variant.Variant_ID,Product.Product_Name,Product_Variant.Variant_Name,Product_Variant.Image_Path,Product_Variant.Unit_Price, Product_Variant.Units_In_Stock FROM Product_Variant,Product,Variant WHERE Product_Variant.Product_ID = Product.Product_ID AND Product_Variant.Variant_ID = Variant.Variant_ID";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Product product = new Product
                            {
                                ProductID = (int)reader["Product_ID"],
                                VariantID = (int)reader["Variant_ID"],
                                ProductName = reader["Product_Name"].ToString(),
                                VariantName = reader["Variant_Name"].ToString(),
                                Price = (decimal)reader["Unit_Price"],
                                Image = reader["Image_Path"].ToString(),
                                Unit_In_Stock = (int)reader["Units_In_Stock"]
                                
                            };
                            products.Add(product);
                        }
                    }
                }
            }

            return products;
        }

        public Product GetProductById(int productId, int variantId)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string sql = "Select Product_Variant.Product_ID,Product_Variant.Variant_ID,Product.Product_Name,Product_Variant.Variant_Name,Product_Variant.Image_Path,Product_Variant.Unit_Price, Product_Variant.Units_In_Stock FROM Product_Variant,Product,Variant WHERE Product_Variant.Product_ID = Product.Product_ID AND Product_Variant.Variant_ID = Variant.Variant_ID AND Product_Variant.Product_ID = @Product_ID AND Product_Variant.Variant_ID = @Variant_ID";

                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        cmd.Parameters.AddWithValue("@Product_ID", productId);
                        cmd.Parameters.AddWithValue("@Variant_ID", variantId);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                Product product = new Product
                                {
                                    ProductID = (int)reader["Product_ID"],
                                    VariantID = (int)reader["Variant_ID"],
                                    ProductName = reader["Product_Name"].ToString(),
                                    VariantName = reader["Variant_Name"].ToString(),
                                    Price = (decimal)reader["Unit_Price"],
                                    Image = reader["Image_Path"].ToString(),
                                    Unit_In_Stock = (int)reader["Units_In_Stock"]

                                };
                                return product;
                            }
                        }
                    }
                }
            }
            catch(Exception ex)
            {
                return null;
            }
            

            // If the product with the specified ID is not found, return null
            return null;
        }

    }

}