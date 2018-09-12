using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelExpertData.DBactions;
using TravelExpertData.datadefinitions;

namespace travelWebsite
{
    /// <summary>
    /// Author: Neil
    /// ConfirmOrders initially displays the information of the currently processing order
    /// </summary>
    public partial class ConfirmOrder : System.Web.UI.Page
    {
        string BookingNo = ""; private static Random random = new Random();
        DateTime Date = DateTime.Now.Date;
        protected void Page_Load(object sender, EventArgs e)
        {
            BookingNo = RandomString(4);
        }

        protected void DataList1_ItemCreated(object sender, DataListItemEventArgs e)
        {
            if (Session["lastPckgVw"] == null)
            {
                Response.Redirect("Homepage.aspx");
            }
        }
        public static string RandomString(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Booking book = new Booking();
            book.BookingDate = Date;
            book.BookingNo = BookingNo;
            book.TravelerCount = Convert.ToInt32(TravelerCount.Text);

            if (!(Request.Cookies["custUsername"] is null))
            {
                book.CustomerId = Convert.ToInt32(Request.Cookies["custUsername"].Value);
            }
            if (Session["custUsername"] != null)
            {
                book.CustomerId = Convert.ToInt32(Session["custUsername"].ToString());
            }
            book.PackageId = ToNullableInt(Session["lastPckgVw"].ToString());
            BookingDetailsDB.CreateBookingDetailPckg(BookingDB.CreateBookingPckg(book, ClassesDropDDl.SelectedValue), ClassesDropDDl.SelectedValue);
            Response.Redirect("Homepage.aspx");
        }
        public static int? ToNullableInt(string s)
        {
            int i;
            if (int.TryParse(s, out i)) return i;
            return null;
        }
    }
}