using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TravelExpertData.datadefinitions
{
    /// <summary>
    /// Author: Neil
    /// Created: July 31, 2018
    /// 
    /// SearchParameters definitions
    /// Responsible for storing Information about the SearchParameters passed by the flightsearch page
    /// </summary>
    public class SearchParameters
    {
        public string Location { get; set; }
        public string Destination { get; set; }
        public DateTime? departDt { get; set; }
        public DateTime? returnDt { get; set; }
    }
}
