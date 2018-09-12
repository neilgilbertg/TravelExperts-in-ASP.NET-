using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using TravelExpertData.datadefinitions;

namespace TravelExpertData.DBactions
{
    public class CustomerDB
    {
        public static int AddCustomer(Customer cust)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string insertStatement = "INSERT INTO Customers (CustFirstName, CustLastName, CustAddress, CustCity, CustProv, CustPostal, CustCountry, CustHomePhone, CustBusPhone, CustEmail, CustUsername, CustPassword) " +
                                     "VALUES(@CustFirstName, @CustLastName, @CustAddress, @CustCity, @CustProv, @CustPostal, @CustCountry, @CustHomePhone, @CustBusPhone, @CustEmail, @CustUsername, @CustPassword)";
            SqlCommand cmd = new SqlCommand(insertStatement, con);
            cmd.Parameters.AddWithValue("@CustFirstName", cust.CustFirstName);
            cmd.Parameters.AddWithValue("@CustLastName", cust.CustLastName);
            cmd.Parameters.AddWithValue("@CustAddress", cust.CustAddress);
            cmd.Parameters.AddWithValue("@CustCity", cust.CustCity);
            cmd.Parameters.AddWithValue("@CustProv", cust.CustProv);
            cmd.Parameters.AddWithValue("@CustPostal", cust.CustPostal);
            cmd.Parameters.AddWithValue("@CustCountry", cust.CustCountry);
            cmd.Parameters.AddWithValue("@CustHomePhone", cust.CustHomePhone);
            cmd.Parameters.AddWithValue("@CustBusPhone", cust.CustBusPhone);
            cmd.Parameters.AddWithValue("@CustEmail", cust.CustEmail);
            cmd.Parameters.AddWithValue("@CustUsername", cust.CustUsername);
            cmd.Parameters.AddWithValue("@CustPassword", cust.CustPassword);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                string selectQuery = "SELECT IDENT_CURRENT('Customers') FROM Customers";
                SqlCommand selectCmd = new SqlCommand(selectQuery, con);
                int customerID = Convert.ToInt32(selectCmd.ExecuteScalar());
                return customerID;
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

        /// <summary>
        /// Author: Neil
        /// Method responsible for authenticating the login using the login data sent by the Login.aspx
        /// </summary>
        public static int? AuthenticateLogin(Login sentLogin)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT CustomerId, CustUsername, CustPassword " +
                                        "FROM Customers " +
                                        "WHERE CustUsername = @DUsername " +
                                        "AND CustPassword = @DPassword";
            SqlCommand cmd = new SqlCommand(selectStatement, con);
            cmd.Parameters.AddWithValue("@DUsername", sentLogin.UserName);
            cmd.Parameters.AddWithValue("@DPassword", sentLogin.Password);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.SingleRow);
                if (dr.Read())
                {
                    //MessageBox.Show("Login success");
                    return (int)dr["CustomerId"];
                }
                else
                {
                    //MessageBox.Show("Login failed");
                    return null;
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


        /// <summary>
        /// Author: Neil
        /// Method responsible getting the name of the current logged in customer (according to the custId passed)
        /// </summary>
        public static string GetCustName(int custId)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT CustFirstName " +
                                        "FROM Customers " +
                                        "WHERE CustomerId = @CustomerId ";
            SqlCommand cmd = new SqlCommand(selectStatement, con);
            cmd.Parameters.AddWithValue("@CustomerId", custId);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.SingleRow);
                if (dr.Read())
                {
                    //MessageBox.Show("Login success");
                    return dr["CustFirstName"].ToString();
                }
                else
                {
                    //MessageBox.Show("Login failed");
                    return null;
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
        // delete this later only for testing purposes
        public static List<Customer> DummyCustomer()
        {
            List<Customer> custList = new List<Customer>();
            Customer cust;
            SqlConnection con = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT CustomerId, CustFirstName " +
                                        "FROM Customers ";
            SqlCommand cmd = new SqlCommand(selectStatement, con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    cust = new Customer();
                    cust.CustomerId = (int)dr["CustomerId"];
                    cust.CustFirstName = dr["CustFirstName"].ToString();
                    custList.Add(cust);
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
            return custList;
        }
    }
}
