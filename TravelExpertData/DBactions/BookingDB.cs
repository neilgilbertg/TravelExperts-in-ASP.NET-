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
    /// BookingDB contains all of the sql statements responsible for data manipulation for the Booking table
    /// </summary>
    public class BookingDB
    {
        /// <summary>
        /// Author: Neil
        /// Method responsible for getting Bookings accrording to the passed customer Id (can be from the sessionId or cookieID)
        /// </summary>
        public static List<Booking> GetBookingByID(int? CookedCustId, int? SessedCustId)
        {
            int? CustomerId = -1;
            if (CookedCustId != null) { CustomerId = CookedCustId; }
            else if (SessedCustId != null) { CustomerId = SessedCustId; }

            List<Booking> bookingList = new List<Booking>();
            Booking booking = null;
            SqlConnection connection = UnversalDBControls.GetConnection();
            string selectStatement = "SELECT BookingId, BookingDate, BookingNo, TravelerCount, CustomerId, TripTypeId, PackageId " +
                                     "FROM Bookings " +
                                     "WHERE CustomerId = @CustomerId ";
            SqlCommand selectCommand = new SqlCommand(selectStatement, connection);
            selectCommand.Parameters.AddWithValue("@CustomerId", CustomerId);
            try
            {
                connection.Open();
                SqlDataReader dr = selectCommand.ExecuteReader();
                while (dr.Read())
                {
                    booking = new Booking();
                    booking.BookingId = (int)dr["BookingId"];
                    booking.BookingDate = (DateTime)dr["BookingDate"];
                    booking.BookingNo = dr["BookingNo"].ToString();
                    booking.TravelerCount = (double)dr["TravelerCount"];
                    booking.CustomerId = (int)dr["CustomerId"];
                    booking.TripTypeId = dr["TripTypeId"].ToString();
                    booking.PackageId = dr["PackageId"] as int?;
                    bookingList.Add(booking);
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
            return bookingList;
        }
        /// <summary>
        /// Author: Neil
        /// Method responsible for creating a booking ticket and also returns necessary information for BookingDetails creation
        /// </summary>
        public static Booking CreateBookingPckg(Booking book, string Class)
        {
            SqlConnection con = UnversalDBControls.GetConnection();
            string insertStatement = "INSERT INTO Bookings (BookingDate, BookingNo, TravelerCount, CustomerId, TripTypeId, PackageId) " +
                                     "VALUES(@BookingDate, @BookingNo, @TravelerCount, @CustomerId, @TripTypeId, @PackageId)";
            SqlCommand cmd = new SqlCommand(insertStatement, con);
            cmd.Parameters.AddWithValue("@BookingDate", book.BookingDate);
            cmd.Parameters.AddWithValue("@BookingNo", book.BookingNo);
            cmd.Parameters.AddWithValue("@TravelerCount", book.TravelerCount);
            cmd.Parameters.AddWithValue("@CustomerId", book.CustomerId);
            if (Class == "BSN")
            { cmd.Parameters.AddWithValue("@TripTypeId", "B"); }
            else if (book.TravelerCount==1)
            { cmd.Parameters.AddWithValue("@TripTypeId", "L"); }
            else if (book.TravelerCount>=2)
            { cmd.Parameters.AddWithValue("@TripTypeId", "G"); }
            else
            { cmd.Parameters.AddWithValue("@TripTypeId", DBNull.Value); }
            cmd.Parameters.AddWithValue("@PackageId", book.PackageId);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                cmd.CommandText = "Select @@Identity";
                book.BookingId = Convert.ToInt32(cmd.ExecuteScalar());
                return book;
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
