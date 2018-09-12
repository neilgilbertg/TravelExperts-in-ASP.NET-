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
    /// Date Created:  July 30, 2018
    /// 
    /// ClassesDB contains all of the sql statements responsible for data manipulation for the ClassesDB table
    /// </summary>
    public class ClassesDB
    {
        /// <summary>
        /// Author: Neil
        /// Method responsible for getting Classes from the Classes table
        /// </summary>
        public static List<Classes> GetClasses()
        {
            List<Classes> classesList = new List<Classes>();// empty list
            Classes classes; // for reading
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT ClassId, ClassName " +
                                     "FROM Classes ";
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);

            try
            {
                connection.Open();
                SqlDataReader dr = selectCommand.ExecuteReader();
                while (dr.Read())
                {
                    classes = new Classes();
                    classes.ClassId = dr["ClassId"].ToString();
                    classes.ClassName = dr["ClassName"].ToString();
                    classesList.Add(classes);
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
            return classesList;
        }
    }
}
