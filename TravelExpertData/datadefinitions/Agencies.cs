using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TravelExpertData.datadefinitions
{
    /// <summary>
    /// Author: Neil
    /// Created: July 21, 2018
    /// 
    /// Agency data definitions
    /// Responsible for storing Information about the Agency
    /// </summary>
    public class Agencies
    {
        public string AgncyAddress { get; set; }
        public string AgncyCity { get; set; }
        public string AgncyProv { get; set; }
        public string AgncyPostal { get; set; }
        public string AgncyCountry { get; set; }
        public string AgncyPhone { get; set; }
        public string AgncyFax { get; set; }
        public string MapData { get; set; }
        public int AgencyId { get; set; }

    }
}
