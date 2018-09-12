using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using TravelExpertData.datadefinitions;
using TravelExpertData.DBactions;

namespace travelWebsite
{
    /// <summary>
    /// Author: Neil
    /// FlightSearch displays all currently available flights for booking
    /// (Note: In early stages, Not functional)
    /// </summary>
    public partial class FlightSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {        
            Search.DataSource = FlightsTableDB.getFlights();
            Search.DataBind();
        }
        protected void SearchFlghtButton_Click(object sender, EventArgs e)
        {
            SearchParameters sp = new SearchParameters();
            if (From.Text != null)
            {
                sp.Location = From.Text;
            }
            if (Destination.Text != null)
            {
                sp.Destination = Destination.Text;
            }
            if (When.Text != null && When.Text.Length > 0)
            {
                //MessageBox.Show(When.Text);
                sp.departDt = Convert.ToDateTime(When.Text);
            }
            if ((When.Text != null && When.Text.Length > 0) && (Days.Text != null && Days.Text.Length > 0))
            {
                sp.returnDt = Convert.ToDateTime(When.Text).AddDays(Convert.ToInt32(Days.Text));
            }
            Search.DataSource = FlightsTableDB.SearchFlights(sp);
            Search.DataBind();
            //MessageBox.Show(sp.Destination + sp.Location + sp.departDt + sp.returnDt);
        }
        
    }
}