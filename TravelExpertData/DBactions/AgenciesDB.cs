using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TravelExpertData.datadefinitions;

namespace TravelExpertData.DBactions
{
    /// <summary>
    /// Author: Neil
    /// Date Created:  July 21, 2018
    /// 
    /// AgenciesDB contains all of the sql statements responsible for data manipulation for the Agencies table
    /// </summary>
    public class AgenciesDB
    {
        /// <summary>
        /// Author: Neil
        /// Method responsible for getting all of the Agencies in the database
        /// </summary>
        public static List<Agencies> getAgencies()
        {
            List<Agencies> agenciesList = new List<Agencies>();
            Agencies agencies;
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT AgncyAddress, AgncyCity, AgncyProv, AgncyPostal, AgncyCountry, AgncyPhone, AgncyFax, AgencyId " +
                                     "FROM Agencies";
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);

            try
            {
                connection.Open();
                SqlDataReader dr = selectCommand.ExecuteReader();
                while (dr.Read())
                {
                    agencies = new Agencies();
                    agencies.AgncyAddress = dr["AgncyAddress"].ToString();
                    agencies.AgncyCity = dr["AgncyCity"].ToString();
                    agencies.AgncyProv = dr["AgncyProv"].ToString();
                    agencies.AgncyPostal = dr["AgncyPostal"].ToString();
                    agencies.AgncyCountry = dr["AgncyCountry"].ToString();
                    agencies.AgncyPhone = dr["AgncyPhone"].ToString();
                    agencies.AgncyFax = dr["AgncyFax"].ToString();
                    // Building the string data for the map window (e,g.: 1155%208th%20Ave%20SW%20Calgary )
                    string[] separatedAdd = dr["AgncyAddress"].ToString().Split();
                    string completedAddress = "";
                    foreach (string add in separatedAdd)
                    {
                        completedAddress += add;
                        completedAddress += "%20";
                    }
                    completedAddress += dr["AgncyCity"].ToString();
                    agencies.MapData = completedAddress;
                    agencies.AgencyId = (int)dr["AgencyId"];
                    agenciesList.Add(agencies);
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
            return agenciesList;
        }
    }
}
