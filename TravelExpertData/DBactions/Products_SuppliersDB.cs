using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TravelExpertData
{
    /// <summary>
    /// Author: Neil
    /// </summary>
    public class Products_SuppliersDB
    {
        /// <summary>
        /// Author: Neil
        /// </summary>
        public static List<Products_Suppliers> GetProductsSuppliers()
        {
            List<Products_Suppliers> products_supplier = new List<Products_Suppliers>();
            Products_Suppliers prodsupp;
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT ProductSupplierId, ps.ProductId, ps.SupplierId,p.ProdName,s.SupName " +
                                     "FROM Products_Suppliers ps, Products p, Suppliers s  where p.ProductId = ps.ProductId and s.SupplierId = ps.SupplierId ORDER BY ProductSupplierId";
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);
            try
            {
                connection.Open();
                SqlDataReader dr = selectCommand.ExecuteReader();
                while (dr.Read())
                {
                    prodsupp = new Products_Suppliers();
                    prodsupp.ProductSupplierId = (int)dr["ProductSupplierId"];
                    prodsupp.ProductId = (int)dr["ProductId"];
                    prodsupp.SupplierId = (int)dr["SupplierId"];
                    prodsupp.ProductName = dr["ProdName"].ToString();
                    prodsupp.SupplierName = dr["SupName"].ToString();
                    products_supplier.Add(prodsupp);
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
            return products_supplier;
        }

        /// <summary>
        /// Author: Neil
        /// </summary>
        public static List<Products_Suppliers> GetProductsSuppliersIdFromPackageId(int PackageId)
        {
            List<Products_Suppliers> products_supplier = new List<Products_Suppliers>();
            Products_Suppliers prodsupp;
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT a.ProductSupplierId, a.ProductId, a.SupplierId " +
                                     "FROM Products_Suppliers a INNER JOIN Packages_Products_Suppliers b " +
                                     "ON a.ProductSupplierId = b.ProductSupplierId " +
                                     "WHERE b.PackageId = @PackageId";
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);
            selectCommand.Parameters.AddWithValue("@PackageId", PackageId);
            try
            {
                connection.Open();
                SqlDataReader dr = selectCommand.ExecuteReader();
                while (dr.Read())
                {
                    prodsupp = new Products_Suppliers();
                    prodsupp.ProductSupplierId = (int)dr["ProductSupplierId"];
                    prodsupp.ProductId = (int)dr["ProductId"];
                    prodsupp.SupplierId = (int)dr["SupplierId"];
                    products_supplier.Add(prodsupp);
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
            return products_supplier;
        }

        public static int AddProductsSuppliers(Products_Suppliers prodsupp)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string insertStatement = "INSERT INTO Products_Suppliers (ProductId, SupplierId) " +
                                     "VALUES(@ProductId, @SupplierId)";
            SqlCommand cmd = new SqlCommand(insertStatement, con);
            cmd.Parameters.AddWithValue("@ProductId", prodsupp.ProductId);
            cmd.Parameters.AddWithValue("@SupplierId", prodsupp.SupplierId);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                string selectQuery = "SELECT IDENT_CURRENT('Products_Suppliers') FROM Products_Suppliers";
                SqlCommand selectCmd = new SqlCommand(selectQuery, con);
                int ProductSupplierId = Convert.ToInt32(selectCmd.ExecuteScalar());
                return ProductSupplierId;
            }
            catch (SqlException ex)
            {
                throw ex; //IDENTITY_INSERT is left on.. i dont know but it says i need to turn it off
            }
            finally
            {
                con.Close();
            }
        }

        public static bool UpdateProductsSuppliers(Products_Suppliers oldProdSupp, Products_Suppliers newProdSupp)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string updateStatement = "SET IDENTITY_INSERT Products_Suppliers ON "+
                                     "UPDATE Products_Suppliers " +
                                     "SET ProductId = @NewProductId, " +
                                     "SupplierId = @NewSupplierId " +
                                     "WHERE ProductSupplierId = @OldProductSupplierId " +
                                     "AND ProductId = @OldProductId " +
                                     "AND SupplierId = @OldSupplierId " +
                                     "SET IDENTITY_INSERT Products_Suppliers OFF";
            SqlCommand cmd = new SqlCommand(updateStatement, con);
            cmd.Parameters.AddWithValue("@NewProductId", newProdSupp.ProductId);
            cmd.Parameters.AddWithValue("@NewSupplierId", newProdSupp.SupplierId);
            cmd.Parameters.AddWithValue("@OldProductId", oldProdSupp.ProductId);
            cmd.Parameters.AddWithValue("@OldSupplierId", oldProdSupp.SupplierId);
            cmd.Parameters.AddWithValue("@OldProductSupplierId", oldProdSupp.ProductSupplierId);
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
    }
}
