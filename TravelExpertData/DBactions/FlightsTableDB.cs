using System;
using System.Collections.Generic;
using System.Data;
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
    /// FlightsTableDB contains all of the sql statements responsible for data manipulation for the FlightsTableDB table
    /// </summary>
    public class FlightsTableDB
    {
        /// <summary>
        /// Author: Neil
        /// Method responsible for getting Flights from the Flights table
        /// </summary>
        public static List<FlightsTable> getFlights()
        {
            List<FlightsTable> flightLists = new List<FlightsTable>();
            FlightsTable flights;
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT FlightId, FltPlaneNo, FltDepart, FltReturn, FltLocation, FltDestination, RegionId, FltTicketPrice " +
                                     "FROM FlightsTable";
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);

            try
            {
                connection.Open();
                SqlDataReader dr = selectCommand.ExecuteReader();
                while (dr.Read())
                {
                    flights = new FlightsTable();
                    flights.FlightId = (int)dr["FlightId"];
                    flights.FltPlaneNo = (int)dr["FltPlaneNo"];
                    flights.FltDepart = (DateTime)dr["FltDepart"];
                    flights.FltReturn = (DateTime)dr["FltReturn"];
                    flights.FltLocation = dr["FltLocation"].ToString();
                    flights.FltDestination = dr["FltDestination"].ToString();
                    flights.RegionId = dr["RegionId"].ToString();
                    flights.FltTicketPrice = Convert.ToDouble(dr["FltTicketPrice"]);
                    flightLists.Add(flights);
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
            return flightLists;
        }
        /// <summary>
        /// Author: Neil
        /// Method responsible for getting Flights according to the depart and return plane Id
        /// </summary>
        public static List<FlightsTable> getFlightsById(int DepartPlnId, int ReturnPlnId)
        {
            List<FlightsTable> flightLists = new List<FlightsTable>();
            FlightsTable flights;
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT FlightId, FltPlaneNo, FltDepart, FltReturn, FltLocation, FltDestination, RegionId, FltTicketPrice " +
                                     "FROM FlightsTable " +
                                     "WHERE FlightId = @DepartPlnId " +
                                     "AND FlightId <> 0";
            SqlCommand selectCommand1 = new SqlCommand(selectStatement, connection);
            selectCommand1.Parameters.AddWithValue("@DepartPlnId", DepartPlnId);

            selectStatement = "SELECT FlightId, FltPlaneNo, FltDepart, FltReturn, FltLocation, FltDestination, RegionId, FltTicketPrice " +
                                     "FROM FlightsTable " +
                                     "WHERE FlightId = @ReturnPlnId " +
                                     "AND FlightId <> 0";
            SqlCommand selectCommand2 = new SqlCommand(selectStatement, connection);
            selectCommand2.Parameters.AddWithValue("@ReturnPlnId", ReturnPlnId);

            try
            {
                connection.Open();
                SqlDataReader dr = selectCommand1.ExecuteReader(CommandBehavior.SingleRow);
                while (dr.Read())
                {
                    flights = new FlightsTable();
                    flights.FlightId = (int)dr["FlightId"];
                    flights.FltPlaneNo = (int)dr["FltPlaneNo"];
                    flights.FltDepart = (DateTime)dr["FltDepart"];
                    flights.FltReturn = (DateTime)dr["FltReturn"];
                    flights.FltLocation = dr["FltLocation"].ToString();
                    flights.FltDestination = dr["FltDestination"].ToString();
                    flights.RegionId = dr["RegionId"].ToString();
                    flights.FltTicketPrice = Convert.ToDouble(dr["FltTicketPrice"]);
                    flightLists.Add(flights);
                }
                connection.Close();
                connection.Open();
                dr = selectCommand2.ExecuteReader(CommandBehavior.SingleRow);
                while (dr.Read())
                {
                    flights = new FlightsTable();
                    flights.FlightId = (int)dr["FlightId"];
                    flights.FltPlaneNo = (int)dr["FltPlaneNo"];
                    flights.FltDepart = (DateTime)dr["FltDepart"];
                    flights.FltReturn = (DateTime)dr["FltReturn"];
                    flights.FltLocation = dr["FltLocation"].ToString();
                    flights.FltDestination = dr["FltDestination"].ToString();
                    flights.RegionId = dr["RegionId"].ToString();
                    flights.FltTicketPrice = Convert.ToDouble(dr["FltTicketPrice"]);
                    flightLists.Add(flights);
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
            return flightLists;
        }













        /// <summary>
        /// Author: Neil
        /// Method responsible for getting Flights according to the search parameters (note: still in early stages not functional)
        /// </summary>
        public static List<ResultFlightsTable> SearchFlights(SearchParameters sp)
        {
            List<ResultFlightsTable> flightLists = new List<ResultFlightsTable>();
            ResultFlightsTable flights;

            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT FlightId, FltPlaneNo, FltDepart, FltReturn, FltLocation, FltDestination, RegionId, FltTicketPrice " +
                                     "FROM FlightsTable ";
            List<string> whereStt = new List<string>();
            if (sp.Location != null)
            {
                whereStt.Add("FltLocation = @FltLocation ");
            }
            if (sp.Destination != null)
            {
                whereStt.Add("FltDestination = @FltDestination ");
            }
            if (sp.departDt != null)
            {
                whereStt.Add("FltDepart = @FltDepart ");
            }
            /*
            if (sp.returnDt != null)
            {
                whereStt.Add("FltReturn = @FltReturn");
            }
            */
            selectStatement += "WHERE ";
            for (int i = 1; i <= whereStt.Count; i++)
            {
                selectStatement += whereStt[i-1];
                if (i != whereStt.Count)
                {
                    selectStatement += "AND ";
                }
            }
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);
            if (sp.Location != null)
            {
                selectCommand.Parameters.AddWithValue("@FltLocation", sp.Location);
            }
            if (sp.Destination != null)
            {
                selectCommand.Parameters.AddWithValue("@FltDestination", sp.Destination);
            }
            if (sp.departDt != null)
            {
                selectCommand.Parameters.AddWithValue("@FltDepart", sp.departDt);
            }
            /*
            if (sp.returnDt != null)
            {
                selectCommand.Parameters.AddWithValue("@FltReturn", sp.returnDt);
            }
            */

            try
            {
                connection.Open();
                SqlDataReader dr = selectCommand.ExecuteReader();
                while (dr.Read())
                {
                    flights = new ResultFlightsTable();
                    flights.DepartPlId = (int)dr["FlightId"];
                    flights.DepartPlaneNo = (int)dr["FltPlaneNo"];
                    flights.ReturnPlId = (int)dr["FlightId"];
                    flights.RetuPlaneNo = (int)dr["FltPlaneNo"];
                    flights.FltDepart = (DateTime)dr["FltDepart"];
                    flights.FltReturn = (DateTime)dr["FltReturn"];
                    flights.FltLocation = dr["FltLocation"].ToString();
                    flights.FltDestination = dr["FltDestination"].ToString();
                    flights.RegionId = dr["RegionId"].ToString();
                    flights.FltTicketPrice = Convert.ToDouble(dr["FltTicketPrice"]);
                    flightLists.Add(flights);
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
            return flightLists;
        }

        public class ResultFlightsTable
        {
            public int DepartPlId { get; set; }
            public int DepartPlaneNo { get; set; }
            public int ReturnPlId { get; set; }
            public int RetuPlaneNo { get; set; }
            public DateTime FltDepart { get; set; }
            public DateTime FltReturn { get; set; }
            public string FltLocation { get; set; }
            public string FltDestination { get; set; }
            public string RegionId { get; set; }
            public double FltTicketPrice { get; set; }
        }
    }
}
