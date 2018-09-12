using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TravelExpertData
{
    public static class SupplierContactDB
    {   
        public static List<SupplierContact> GetSupplierContact(int SupplierContactId)
        {
            List<SupplierContact> supplierContacts = new List<SupplierContact>();
            SupplierContact nextSupplierContact;
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectstatement = "SELECT * FROM [SupplierContacts] where SupplierId = @SupplierId";
            SqlCommand selectCommand = new SqlCommand(selectstatement, connection);
           // selectCommand.Parameters.AddWithValue("@SupplierId", SupplierId);

            try
            {
                connection.Open();
                SqlDataReader reader = selectCommand.ExecuteReader();
                while (reader.Read())
                {
                    nextSupplierContact = new SupplierContact();
                    nextSupplierContact.SupplierContactId = Convert.ToInt32(reader["SupplierContactId"]);
                    nextSupplierContact.SupConFirstName = Convert.ToString(reader["SupConFirstName"]);
                    nextSupplierContact.SupConLastName = Convert.ToString(reader["SupConLastName"]);
                    nextSupplierContact.SupConCompany = Convert.ToString(reader["SupConCompany"]);
                    nextSupplierContact.SupConAddress = Convert.ToString(reader["SupConAddress"]);
                    nextSupplierContact.SupConCity = Convert.ToString(reader["SupConCity"]);
                    nextSupplierContact.SupConProvince = Convert.ToString(reader["SupConProvince"]);
                    nextSupplierContact.SupConPostal = Convert.ToString(reader["SupConPostal"]);
                    nextSupplierContact.SupConCountry = Convert.ToString(reader["SupConCountry"]);
                    nextSupplierContact.SupConBusPhone = Convert.ToString(reader["SupConBusPhone"]);
                    nextSupplierContact.SupConFax = Convert.ToString(reader["SupConFax"]);
                    nextSupplierContact.SupConEmail = Convert.ToString(reader["SupConEmail"]);
                    nextSupplierContact.SupConURL = Convert.ToString(reader["SupConURL"]);
                    nextSupplierContact.AffiliationId = Convert.ToString(reader["AffiliationId"]);
                    nextSupplierContact.SupplierId = Convert.ToInt32(reader["SupplierId"]);
                    supplierContacts.Add(nextSupplierContact);
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
            return supplierContacts;

        }
        public static int AddSupplierContact(SupplierContact nextContact)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string insertStatement = "INSERT INTO SupplierContacts (SupplierContactId, SupConFirstName, SupConLastName, SupConCompany, SupConAddress, SupConCity, SupConProvince, SupConPostal, SupConCountry, SupConBusPhone, SupConEmail, SupConURL, AffiliationId, SupplierId) " +
                                     "VALUES(@SupplierContactId, @SupConFirstName, @SupConLastName, @SupConCompany, @SupConAddress, @SupConCity, @SupConProvince, @SupConPostal, @SupConCountry, @SupConBusPhone, @SupConEmail, @SupConURL, @AffiliationId, @SupplierId)";
            SqlCommand cmd = new SqlCommand(insertStatement, con);
            cmd.Parameters.AddWithValue("@SupplierContactId", nextContact.SupplierContactId);
            cmd.Parameters.AddWithValue("@SupConFirstName", nextContact.SupplierContactId);
            cmd.Parameters.AddWithValue("@SupConLastName", nextContact.SupplierContactId);
            cmd.Parameters.AddWithValue("@SupConCompany", nextContact.SupplierContactId);
            cmd.Parameters.AddWithValue("@SupConAddress", nextContact.SupplierContactId);
            cmd.Parameters.AddWithValue("@SupConCity", nextContact.SupplierContactId);
            cmd.Parameters.AddWithValue("@SupConProvince", nextContact.SupplierContactId);
            cmd.Parameters.AddWithValue("@SupConPostal", nextContact.SupplierContactId);
            cmd.Parameters.AddWithValue("@SupConCountry", nextContact.SupplierContactId);
            cmd.Parameters.AddWithValue("@SupConBusPhone", nextContact.SupplierContactId);
            cmd.Parameters.AddWithValue("@SupConEmail", nextContact.SupplierContactId);
            cmd.Parameters.AddWithValue("@SupConURL", nextContact.SupplierContactId);
            cmd.Parameters.AddWithValue("@AffiliationId", nextContact.SupplierContactId);
            cmd.Parameters.AddWithValue("@SupplierId", nextContact.SupplierContactId);
            

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                string selectQuery = "SELECT IDENT_CURRENT('SupplierContacts') FROM SupplierContacts";
                SqlCommand selectCmd = new SqlCommand(selectQuery, con);
                int SupplierContactID = Convert.ToInt32(selectCmd.ExecuteScalar());
                return SupplierContactID;
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

        public static bool UpdateSupplierContact(SupplierContact oldSup, SupplierContact newSup)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string updateStatement = "UPDATE SupplierContacts " +
                                    "SET SupConFirstName = @NewSupConFirstName, " +
                                    "SET SupConLastName = @NewSupConLastName, " +
                                    "SET SupConCompany = @NewSupConCompany, " +
                                    "SET SupConAddress = @NewSupConAddress, " +
                                    "SET SupConCity = @NewSupConCity, " +
                                    "SET SupConProvince = @NewSupConProvince " +
                                    "SET SupConPostal = @NewSupConPostal " +
                                    "SET SupConCountry = @NewSupConCountry " +
                                    "SET SupConBusPhone = @NewSupConBusPhone " +
                                    "SET SupConFax = @NewSupConFax " +
                                    "SET SupConEmail = @NewSupConEmail " +
                                    "SET SupConURL = @NewSupConURL " +
                                    "SET AffiliationId = @NewAffiliationId " +
                                    "WHERE SupplierId = @OldSupplierId " +
                                    "AND SupConFirstName = @OldSupConFirstName " +
                                    "AND SupConLastName = @OldSupConLastName " +
                                    "AND SupConCompany = @OldSupConCompany " +
                                    "AND SupConAddress = @OldSupConAddress " +
                                    "AND SupConCity = @OldSupConCity " +
                                    "AND SupConProvince = @OldSupConProvince " +
                                    "AND SupConPostal = @OldSupConPostal " +
                                    "AND SupConCountry = @OldSupConCountry " +
                                    "AND SupConBusPhone = @OldSupConBusPhone " +
                                    "AND SupConFax = @OldSupConFax " +
                                    "AND SupConEmail = @OldSupConEmail " +
                                    "AND SupConURL = @OldSupConURL " +
                                    "AND AffiliationId = @OldAffiliationId";
            SqlCommand cmd = new SqlCommand(updateStatement, con);
            cmd.Parameters.AddWithValue("@NewSupConFirstName", newSup.SupConFirstName);
            cmd.Parameters.AddWithValue("@NewSupConLastName", newSup.SupConLastName);
            cmd.Parameters.AddWithValue("@NewSupConCompany", newSup.SupConCompany);
            cmd.Parameters.AddWithValue("@NewSupConAddress", newSup.SupConAddress);
            cmd.Parameters.AddWithValue("@NewSupConCity", newSup.SupConCity);
            cmd.Parameters.AddWithValue("@NewSupConProvince", newSup.SupConProvince);
            cmd.Parameters.AddWithValue("@NewSupConPostal", newSup.SupConPostal);
            cmd.Parameters.AddWithValue("@NewSupConCountry", newSup.SupConCountry);
            cmd.Parameters.AddWithValue("@NewSupConBusPhone", newSup.SupConBusPhone);
            cmd.Parameters.AddWithValue("@NewSupConFax", newSup.SupConFax);
            cmd.Parameters.AddWithValue("@NewSupConEmail", newSup.SupConEmail);
            cmd.Parameters.AddWithValue("@NewSupConURL", newSup.SupConURL);
            cmd.Parameters.AddWithValue("@NewAffiliationId", newSup.AffiliationId);
            cmd.Parameters.AddWithValue("@OldSupplierId", oldSup.SupplierId);
            cmd.Parameters.AddWithValue("@OldSupConFirstName", oldSup.SupConFirstName);
            cmd.Parameters.AddWithValue("@OldSupConLastName", oldSup.SupConLastName);
            cmd.Parameters.AddWithValue("@OldSupConCompany", oldSup.SupConCompany);
            cmd.Parameters.AddWithValue("@OldSupConAddress", oldSup.SupConAddress);
            cmd.Parameters.AddWithValue("@OldSupConCity", oldSup.SupConCity);
            cmd.Parameters.AddWithValue("@OldSupConProvince", oldSup.SupConProvince);
            cmd.Parameters.AddWithValue("@OldSupConPostal", oldSup.SupConPostal);
            cmd.Parameters.AddWithValue("@OldSupConCountry", oldSup.SupConCountry);
            cmd.Parameters.AddWithValue("@OldSupConBusPhone", oldSup.SupConBusPhone);
            cmd.Parameters.AddWithValue("@OldSupSupConFax", oldSup.SupConFax);
            cmd.Parameters.AddWithValue("@OldSupConEmail", oldSup.SupConEmail);
            cmd.Parameters.AddWithValue("@OldSupConURL", oldSup.SupConURL);
            cmd.Parameters.AddWithValue("@OldAffiliationId", oldSup.AffiliationId);

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
