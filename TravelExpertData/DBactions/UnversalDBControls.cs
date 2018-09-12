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
    /// Date created: July 22, 2018
    /// 
    /// UniversalDBControls responsible for distributing the SQL connection to different DB related classes.
    /// Created this so other cs files can easily reuse the GetConnection() string without creating the connection in class
    /// </summary>
    public static class UnversalDBControls
    {
        public static SqlConnection GetConnection()
        {
            return new SqlConnection(@"Data Source=DESKTOP-UMQBR0F;Initial Catalog=TravelExperts;Integrated Security=True");
        }
    }
}
