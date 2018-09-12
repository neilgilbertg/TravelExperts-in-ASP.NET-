using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TravelExpertData
{
    public class PackageDB
    {
        public static List<Package> GetPackages()
        {
            List<Package> packages = new List<Package>();// empty list
            Package pack; // for reading
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT PackageId, PkgName, PkgStartDate, PkgEndDate, PkgDesc, PkgBasePrice, PkgAgencyCommission,DeparturePlnId, ReturnPlnId " +
                                     "FROM Packages ORDER BY PackageId";
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);

            try
            {
                connection.Open();
                SqlDataReader dr = selectCommand.ExecuteReader();
                while (dr.Read())
                {
                    pack = new Package();
                    pack.PackageId = (int)dr["PackageId"];
                    pack.PkgName = dr["PkgName"].ToString();
                    pack.PkgStartDate = (DateTime)dr["PkgStartDate"];
                    pack.PkgEndDate = (DateTime)dr["PkgEndDate"];
                    pack.PkgDesc = dr["PkgDesc"].ToString();
                    pack.PkgBasePrice = Convert.ToDouble(dr["PkgBasePrice"]);
                    pack.PkgAgencyCommission = Convert.ToDouble(dr["PkgAgencyCommission"]);
                    pack.DepartureFlight = Convert.ToInt32(dr["DeparturePlnId"]);
                    pack.ReturnFlight = Convert.ToInt32(dr["ReturnPlnId"]);
                    packages.Add(pack);
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
            return packages;
        }

        public static int AddPackage(Package pack)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string insertStatement = "INSERT INTO Packages (PkgName, PkgStartDate, PkgEndDate, PkgDesc, PkgBasePrice, PkgAgencyCommission, DeparturePlnId, ReturnPlnId) " +
                                     "VALUES(@PkgName, @PkgStartDate, @PkgEndDate, @PkgDesc, @PkgBasePrice, @PkgAgencyCommission,@DeparturePlnId,@ReturnPlnId)";
            SqlCommand cmd = new SqlCommand(insertStatement, con);
            cmd.Parameters.AddWithValue("@PkgName", pack.PkgName);
            cmd.Parameters.AddWithValue("@PkgStartDate", pack.PkgStartDate);
            cmd.Parameters.AddWithValue("@PkgEndDate", pack.PkgEndDate);
            cmd.Parameters.AddWithValue("@PkgDesc", pack.PkgDesc);
            cmd.Parameters.AddWithValue("@PkgBasePrice", pack.PkgBasePrice);
            cmd.Parameters.AddWithValue("@PkgAgencyCommission", pack.PkgAgencyCommission);
            cmd.Parameters.AddWithValue("@DeparturePlnId", pack.DepartureFlight);
            cmd.Parameters.AddWithValue("@ReturnPlnId", pack.ReturnFlight);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                string selectQuery = "SELECT IDENT_CURRENT('Packages') FROM Packages";
                SqlCommand selectCmd = new SqlCommand(selectQuery, con);
                int packageID = Convert.ToInt32(selectCmd.ExecuteScalar());
                return packageID;
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

        public static bool UpdatePackage(Package oldPack, Package newPack)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string updateStatement =
                                     "UPDATE Packages " +
                                     "SET PkgName = @NewPkgName, " +
                                     "PkgStartDate = @NewPkgStartDate, " +
                                     "PkgEndDate = @NewPkgEndDate, " +
                                     "PkgDesc = @NewPkgDesc, " +
                                     "PkgBasePrice = @NewPkgBasePrice, " +
                                     "PkgAgencyCommission = @NewPkgAgencyCommission, " +
                                     "DeparturePlnId = @NewDeparturePlnId, " +
                                     "ReturnPlnId = @NewReturnPlnId " +
                                     "WHERE PackageId = @OldPackageId " +
                                     "AND PkgName = @OldPkgName " +
                                     "AND PkgStartDate = @OldPkgStartDate " +
                                     "AND PkgEndDate = @OldPkgEndDate " +
                                     "AND PkgDesc = @OldPkgDesc " +
                                     "AND PkgBasePrice = @OldPkgBasePrice " +
                                     "AND PkgAgencyCommission = @OldPkgAgencyCommission " +
                                     "AND DeparturePlnId = @OldDeparturePlnId " +
                                     "AND ReturnPlnId = @OldReturnPlnId ";
                                   
                                    
            SqlCommand cmd = new SqlCommand(updateStatement, con);
            cmd.Parameters.AddWithValue("@NewPkgName", newPack.PkgName);
            cmd.Parameters.AddWithValue("@NewPkgStartDate", newPack.PkgStartDate);
            cmd.Parameters.AddWithValue("@NewPkgEndDate", newPack.PkgEndDate);
            cmd.Parameters.AddWithValue("@NewPkgDesc", newPack.PkgDesc);
            cmd.Parameters.AddWithValue("@NewPkgBasePrice", newPack.PkgBasePrice);
            cmd.Parameters.AddWithValue("@NewDeparturePlnId", newPack.DepartureFlight);
            cmd.Parameters.AddWithValue("@NewReturnPlnId", newPack.ReturnFlight);
            cmd.Parameters.AddWithValue("@NewPkgAgencyCommission", newPack.PkgAgencyCommission);
            cmd.Parameters.AddWithValue("@OldPackageId", oldPack.PackageId);
            cmd.Parameters.AddWithValue("@OldPkgName", oldPack.PkgName);
            cmd.Parameters.AddWithValue("@OldPkgStartDate", oldPack.PkgStartDate);
            cmd.Parameters.AddWithValue("@OldPkgEndDate", oldPack.PkgEndDate);
            cmd.Parameters.AddWithValue("@OldPkgDesc", oldPack.PkgDesc);
            cmd.Parameters.AddWithValue("@OldPkgBasePrice", oldPack.PkgBasePrice);
            cmd.Parameters.AddWithValue("@OldPkgAgencyCommission", oldPack.PkgAgencyCommission);
            cmd.Parameters.AddWithValue("@OldDeparturePlnId", oldPack.DepartureFlight);
            cmd.Parameters.AddWithValue("@OldReturnPlnId", oldPack.ReturnFlight);
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
        public static bool AddProductToPackage(int packageID,int productsSuppliersId)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string insertStatement = "INSERT INTO Packages_Products_Suppliers(PackageId, ProductSupplierId) " +
                                     "VALUES(@packageId, @productsSuppliersId)";
            SqlCommand cmd = new SqlCommand(insertStatement, con);
            cmd.Parameters.AddWithValue("@packageId", packageID);
            cmd.Parameters.AddWithValue("@productsSuppliersId", productsSuppliersId);
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
        public static List<Package> GetPackagesById(int PackageId)
        {
            List<Package> packages = new List<Package>();// empty list
            Package pack; // for reading
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT PackageId, PkgName, PkgStartDate, PkgEndDate, PkgDesc, PkgBasePrice, PkgAgencyCommission,DeparturePlnId, ReturnPlnId " +
                                     "FROM Packages " +
                                     "WHERE PackageId = @PackageId";
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);
            selectCommand.Parameters.AddWithValue("@PackageId", PackageId);
            try
            {
                connection.Open();
                SqlDataReader dr = selectCommand.ExecuteReader(CommandBehavior.SingleRow);
                if (dr.Read())
                {
                    pack = new Package();
                    pack.PackageId = (int)dr["PackageId"];
                    pack.PkgName = dr["PkgName"].ToString();
                    pack.PkgStartDate = (DateTime)dr["PkgStartDate"];
                    pack.PkgEndDate = (DateTime)dr["PkgEndDate"];
                    pack.PkgDesc = dr["PkgDesc"].ToString();
                    pack.PkgBasePrice = Convert.ToDouble(dr["PkgBasePrice"]);
                    pack.PkgAgencyCommission = Convert.ToDouble(dr["PkgAgencyCommission"]);
                    pack.DepartureFlight = Convert.ToInt32(dr["DeparturePlnId"]);
                    pack.ReturnFlight = Convert.ToInt32(dr["ReturnPlnId"]);
                    packages.Add(pack);
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
            return packages;
        }
    }
}

