using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using TravelExpertData;

namespace travelWebsite
{
    /// <summary>
    /// Author: Neil
    /// The site master that will dictate how the header, navbar and footers look
    /// </summary>
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Request.Cookies["custUsername"] is null) || Session["custUsername"] != null)
            {
                string CustName = "";
                if (!(Request.Cookies["custUsername"] is null))
                {
                    Request.Cookies["custUsername"].Expires = DateTime.Now.AddMonths(1);
                    CustName = TravelExpertData.DBactions.CustomerDB.GetCustName(Convert.ToInt32(Request.Cookies["custUsername"].Value));
                }
                if (Session["custUsername"] != null)
                {
                    CustName = TravelExpertData.DBactions.CustomerDB.GetCustName(Convert.ToInt32(Session["custUsername"].ToString()));
                }
                accountLabel.Text = "Hi, "+ CustName;

                var accountInfo = new HtmlGenericControl("a") { InnerText = "ACCOUNT SETTINGS" };
                accountInfo.Attributes.Add("class", "dropdown-item");
                accountInfo.Attributes.Add("href", "#");
                acctDropDown.Controls.Add(accountInfo);

                var bookings = new HtmlGenericControl("a") { InnerText = "BOOKING HISTORY" };
                bookings.Attributes.Add("class", "dropdown-item");
                bookings.Attributes.Add("href", "BookingHistory.aspx");
                acctDropDown.Controls.Add(bookings);

                var divider = new HtmlGenericControl("div");
                divider.Attributes.Add("class", "dropdown-divider");
                acctDropDown.Controls.Add(divider);

                var login = new HtmlGenericControl("a") { InnerText = "LOGOUT" };
                login.Attributes.Add("class", "dropdown-item");
                login.Attributes.Add("href", "scripts/Logout.aspx");
                acctDropDown.Controls.Add(login);
            }
            else
            {
                var register = new HtmlGenericControl("a") { InnerText = "REGISTER" };
                register.Attributes.Add("class", "dropdown-item");
                register.Attributes.Add("href", "CustomerRegistration.aspx");
                acctDropDown.Controls.Add(register);

                var divider = new HtmlGenericControl("div");
                divider.Attributes.Add("class", "dropdown-divider");
                acctDropDown.Controls.Add(divider);

                var login = new HtmlGenericControl("a") { InnerText = "LOGIN" };
                login.Attributes.Add("class", "dropdown-item");
                login.Attributes.Add("href", "Login.aspx");
                acctDropDown.Controls.Add(login);
            }
        }
        
       
    }
}