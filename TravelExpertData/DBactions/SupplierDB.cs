using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TravelExpertData
{
   public static class SupplierDB
    {
        public static List<Supplier> GetSuppliers()
        {
            List<Supplier> suppliers = new List<Supplier>();
            Supplier nextSupplier;
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectstatement = "SELECT * FROM [Suppliers]";
            SqlCommand selectCommand = new SqlCommand(selectstatement, connection);
           
            
            try
            {
                connection.Open();
                SqlDataReader reader = selectCommand.ExecuteReader();
                while (reader.Read())
                {
                    nextSupplier = new Supplier();
                    nextSupplier.SupplierId = Convert.ToInt32(reader["SupplierId"]);
                    nextSupplier.SupName = Convert.ToString(reader["SupName"]);                  
                    suppliers.Add(nextSupplier);
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
            return suppliers;

        }
        public static int AddSupplier(Supplier nextSuplier)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string insertStatement = "INSERT INTO Suppliers (SupplierId, SupName) " +
                                     "VALUES(@SupplierId, @SupName)";
            SqlCommand cmd = new SqlCommand(insertStatement, con);
            cmd.Parameters.AddWithValue("@SupplierId", nextSuplier.SupplierId);
            cmd.Parameters.AddWithValue("@SupName", nextSuplier.SupName);
            
            try
            {
                int SupplierID;
                con.Open();
                cmd.ExecuteNonQuery();
                string selectQuery = "SELECT IDENT_CURRENT('Suppliers') FROM Suppliers";
                SqlCommand selectCmd = new SqlCommand(selectQuery, con);
                if (selectCmd.ExecuteScalar() == DBNull.Value)
                {
                    SupplierID = Convert.ToInt32(null);
                }
                else
                {
                    SupplierID = Convert.ToInt32(selectCmd.ExecuteScalar()); // returning with DBNULL value.. assumption is that this doesnt need to be called just a simple insert but iunno
                }
                return SupplierID;
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

        public static bool UpdateSupplier(Supplier oldSup, Supplier newSup)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string updateStatement = "UPDATE Suppliers " +
                                     "SET SupName=@NewSupName " +
                                     "WHERE SupplierId=@OldSupplierId " +
                                     "AND SupName=@OldSupName";
                                     
                                     
            SqlCommand cmd = new SqlCommand(updateStatement, con);
            cmd.Parameters.AddWithValue("@NewSupName", newSup.SupName);
            cmd.Parameters.AddWithValue("@OldSupName", oldSup.SupName);
            cmd.Parameters.AddWithValue("@OldSupplierId", oldSup.SupplierId);
           
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
