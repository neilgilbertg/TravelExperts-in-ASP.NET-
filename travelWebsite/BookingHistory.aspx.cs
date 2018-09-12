using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace travelWebsite
{
    /// <summary>
    /// Styling: Neil
    /// </summary>
    public partial class BookingHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Request.Cookies["custUsername"] is null) || Session["custUsername"] != null)
            {
                if (!(Request.Cookies["custUsername"] is null))
                {
                    Request.Cookies["custUsername"].Expires = DateTime.Now.AddMonths(1);
                }
            }
            else
            {
                Response.Redirect("Homepage.aspx");
            }
        }
        
    }
}