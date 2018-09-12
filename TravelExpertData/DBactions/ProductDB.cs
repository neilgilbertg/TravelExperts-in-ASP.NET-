using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TravelExpertData
{
    /// <summary>
    /// Author: Neil
    /// </summary>
    public static class ProductDB
    {
        public static List<Products> GetProductNames()
        {
            List<Products> products = new List<Products>();
            Products prod;
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT ProdName " +
                                     "FROM Products";
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);
            try
            {
                connection.Open();
                SqlDataReader dr = selectCommand.ExecuteReader();
                while (dr.Read())
                {
                    prod = new Products();
                    prod.ProdName = dr["ProdName"].ToString();
                    products.Add(prod);
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return products;
        }
        public static List<Products> GetProducts()
        {
            List<Products> products = new List<Products>();
            Products prod;
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT ProductId, ProdName " +
                                     "FROM Products ORDER BY ProductId";
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);
            try
            {
                connection.Open();
                SqlDataReader dr = selectCommand.ExecuteReader();
                while (dr.Read())
                {
                    prod = new Products();
                    prod.ProductId = (int)dr["ProductId"];
                    prod.ProdName = (string)dr["ProdName"];
                    products.Add(prod);
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return products;
        }

        public static int AddProducts(Products prod)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string insertStatement = "INSERT INTO Products " +
                                     "VALUES(@ProdName)";
            SqlCommand cmd = new SqlCommand(insertStatement, con);
            cmd.Parameters.AddWithValue("@ProdName", prod.ProdName);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                string selectQuery = "SELECT IDENT_CURRENT('Products') FROM Products";
                SqlCommand selectCmd = new SqlCommand(selectQuery, con);
                int ProductSupplierId = Convert.ToInt32(selectCmd.ExecuteScalar());
                return ProductSupplierId;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }

        public static bool UpdateProducts(Products oldProd, Products newProd)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string updateStatement = "SET IDENTITY_INSERT Products ON " +
                                     "UPDATE Products " +
                                     "SET ProdName = @NewProdName " +
                                     "WHERE ProductId = @OldProductId " +
                                     "AND ProdName = @OldProdName " +
                                     "SET IDENTITY_INSERT Products OFF";
            SqlCommand cmd = new SqlCommand(updateStatement, con);
            cmd.Parameters.AddWithValue("@NewProductId", newProd.ProductId);
            cmd.Parameters.AddWithValue("@NewProdName", newProd.ProdName);
            cmd.Parameters.AddWithValue("@OldProductId", oldProd.ProductId);
            cmd.Parameters.AddWithValue("@OldProdName", oldProd.ProdName);
            try
            {
                con.Open();
                if (cmd.ExecuteNonQuery() > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public static List<Products> GetProductsFromProductD(int ProductSupplierId)
        {
            List<Products> products = new List<Products>();
            Products prod;
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT p.ProductId, p.ProdName " +
                                     "FROM Products p INNER JOIN Products_Suppliers ps " +
                                            "ON p.ProductId = ps.ProductId " +
                                     "WHERE ProductSupplierId = @ProductSupplierId";
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);
            selectCommand.Parameters.AddWithValue("@ProductSupplierId", ProductSupplierId);
            try
            {
                connection.Open();
                SqlDataReader dr = selectCommand.ExecuteReader();
                while (dr.Read())
                {
                    prod = new Products();
                    prod.ProductId = (int)dr["ProductId"];
                    prod.ProdName = (string)dr["ProdName"];
                    products.Add(prod);
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return products;
        }
    }
}
