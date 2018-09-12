using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelExpertData.DBactions;

namespace travelWebsite
{
    /// <summary>
    /// Author: Neil
    /// The login page for the website
    /// </summary>
    public partial class Login : System.Web.UI.Page
    {
        int? loggedInUserId; 
        protected void Page_Load(object sender, EventArgs e)
        {
            // Logic for keeping last user logged in cookie active
            if (!(Request.Cookies["custUsername"] is null) || Session["custUsername"] != null)
            {
                Response.Cookies["custUsername"].Expires = DateTime.Now.AddMonths(1);
                Response.Redirect("Homepage.aspx");
            }
        }

        protected void userLogin_Authenticate(object sender, AuthenticateEventArgs e)
        {
            // Sends Login info to the data class and returns a result
            loggedInUserId = CustomerDB.AuthenticateLogin(userLogin);
            if (!(loggedInUserId is null))
            {
                e.Authenticated = true;
            }
            else
            {
                e.Authenticated = false;
            }
        }

        protected void userLogin_LoggedIn(object sender, EventArgs e)
        {
            CheckBox cb = (CheckBox)userLogin.FindControl("RememberMe");
            if (cb.Checked)
            {
                HttpCookie currentUser = new HttpCookie("custUsername");

                currentUser.Value = loggedInUserId.ToString();
                currentUser.Expires = DateTime.Now.AddMonths(1);

                Response.Cookies.Add(currentUser);
                Response.Redirect("Homepage.aspx");
            }
            else
            {
                Session["custUsername"] = loggedInUserId.ToString();
                Response.Redirect("Homepage.aspx");
            }
        }
    }
}