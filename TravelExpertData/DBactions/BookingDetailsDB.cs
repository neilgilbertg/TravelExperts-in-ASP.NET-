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
    /// Date Created:  July 28, 2018
    /// 
    /// BookingDetailDB contains all of the sql statements responsible for data manipulation for the BookingDetailDB table
    /// </summary>
    public class BookingDetailsDB
    {
        string BookingNo = ""; private static Random random = new Random();

        /// <summary>
        /// Author: Neil
        /// Method responsible for getting BookingDetails accrording to the passed booking Id
        /// </summary>
        public static BookingDetails GetBookingDetailByID(int BookingId)
        {
            BookingDetails bookingDetails = null;
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT BookingDetailId, ItineraryNo, TripStart, TripEnd, Description, " +
                                            "Destination, BasePrice, AgencyCommission, BookingId, RegionId, " +
                                            "ClassId, FeeId, ProductSupplierId, DeparturePlnId, ReturnPlnId " +
                                     "FROM BookingDetails " +
                                     "WHERE BookingId = @BookingId ";
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);
            selectCommand.Parameters.AddWithValue("@BookingId", BookingId);
            try
            {
                connection.Open();
                SqlDataReader dr = selectCommand.ExecuteReader(CommandBehavior.SingleRow);
                if (dr.Read())
                {
                    bookingDetails = new BookingDetails();
                    bookingDetails.BookingDetailId = (int)dr["BookingDetailId"];
                    bookingDetails.ItineraryNo = (double)dr["ItineraryNo"];
                    bookingDetails.TripStart = (DateTime)dr["TripStart"];
                    bookingDetails.TripEnd = (DateTime)dr["TripEnd"];
                    bookingDetails.Description = dr["Description"].ToString();
                    bookingDetails.Destination = dr["Destination"].ToString();
                    bookingDetails.BasePrice = (decimal)dr["BasePrice"];
                    bookingDetails.AgencyCommission = (decimal)dr["AgencyCommission"];
                    bookingDetails.BookingId = (int)dr["BookingId"];
                    bookingDetails.RegionId = dr["RegionId"].ToString();
                    bookingDetails.ClassId = dr["ClassId"].ToString();
                    bookingDetails.FeeId = dr["FeeId"].ToString();
                    bookingDetails.ProductSupplierId = (int)dr["ProductSupplierId"];
                    bookingDetails.DeparturePlnId = (int)dr["DeparturePlnId"];
                    bookingDetails.ReturnPlnId = (int)dr["ReturnPlnId"];
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
            return bookingDetails;
        }
        
        /// <summary>
        /// Author: Neil
        /// Method responsible for creating BookingDetails accrording to the passed bookingId and class
        /// </summary>
        public static void CreateBookingDetailPckg(Booking newBooking, string Class)
        {
            List<Package> selectedPckg = PackageDB.GetPackagesById((int)newBooking.PackageId);
            List<FlightsTable> inclFlights = FlightsTableDB.getFlightsById(selectedPckg[0].DepartureFlight, selectedPckg[0].ReturnFlight);
            List<Products_Suppliers> usedProds = Products_SuppliersDB.GetProductsSuppliersIdFromPackageId((int)newBooking.PackageId);

            SqlConnection con = UnversalDBControls.GetConnection();
            string insertStatement = "ALTER TABLE BookingDetails " +
                                     "NOCHECK CONSTRAINT FK_BookingDetails_Bookings; " +
                                     "ALTER TABLE BookingDetails " +
                                     "NOCHECK CONSTRAINT FK_BookingDetails_Regions; " +
                                     "INSERT INTO BookingDetails (ItineraryNo, TripStart, TripEnd, Description, Destination, BasePrice, " +
                                                                 "AgencyCommission, BookingId, RegionId, ClassId, FeeId, ProductSupplierId, " +
                                                                 "DeparturePlnId, ReturnPlnId) " +
                                     "VALUES(@ItineraryNo, @TripStart, @TripEnd, @Description, @Destination, @BasePrice, " +
                                                                 "@AgencyCommission, @BookingId, @RegionId, @ClassId, @FeeId, @ProductSupplierId, " +
                                                                 "@DeparturePlnId, @ReturnPlnId)";
            SqlCommand cmd = new SqlCommand(insertStatement, con);
            cmd.Parameters.AddWithValue("@ItineraryNo", RandomString(6));
            cmd.Parameters.AddWithValue("@TripStart", inclFlights[0].FltDepart);
            cmd.Parameters.AddWithValue("@TripEnd", inclFlights[1].FltReturn);
            cmd.Parameters.AddWithValue("@Description", inclFlights[0].FltLocation+"/"+inclFlights[1].FltDestination+"/"+inclFlights[0].FltLocation);
            cmd.Parameters.AddWithValue("@Destination", inclFlights[1].FltDestination);
            cmd.Parameters.AddWithValue("@BasePrice", selectedPckg[0].PkgBasePrice);
            cmd.Parameters.AddWithValue("@AgencyCommission", selectedPckg[0].PkgAgencyCommission);
            cmd.Parameters.AddWithValue("@BookingId", newBooking.BookingId);
            cmd.Parameters.AddWithValue("@RegionId", inclFlights[1].RegionId);
            cmd.Parameters.AddWithValue("@ClassId", Class);
            if (newBooking.TravelerCount == 1)
            { cmd.Parameters.AddWithValue("@FeeId", "BK"); }
            else if (newBooking.TravelerCount >= 2)
            { cmd.Parameters.AddWithValue("@FeeId", "GR"); }
            cmd.Parameters.AddWithValue("@ProductSupplierId", usedProds[0].ProductSupplierId);
            cmd.Parameters.AddWithValue("@DeparturePlnId", inclFlights[0].FlightId);
            cmd.Parameters.AddWithValue("@ReturnPlnId", inclFlights[1].FlightId);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
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
        /// This method will return a random string
        /// The ItineraryNo is highly dependent on this (Subject to change if proper formatting is presented)
        /// </summary>
        public static string RandomString(int length)
        {
            const string chars = "0123456789";
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }
    }
}
