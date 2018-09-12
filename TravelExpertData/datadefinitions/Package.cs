using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TravelExpertData
{    
    public class Package
    {
        public int PackageId { get; set; }
        public string PkgName { get; set; }
        public DateTime? PkgStartDate { get; set; }
        public DateTime? PkgEndDate { get; set; }
        public string PkgDesc { get; set; }
        public double PkgBasePrice { get; set; }
        public double? PkgAgencyCommission { get; set; }
        public int DepartureFlight { get; set; }
        public int ReturnFlight { get; set; }
        public Package CopyPackage()
        {
            Package copy = new Package();
            copy.PackageId = this.PackageId;
            copy.PkgAgencyCommission = this.PkgAgencyCommission;
            copy.PkgBasePrice = this.PkgBasePrice;
            copy.PkgDesc = this.PkgDesc;
            copy.PkgEndDate = this.PkgEndDate;
            copy.PkgName = this.PkgName;
            copy.PkgStartDate = this.PkgStartDate;
            copy.ReturnFlight = this.ReturnFlight;
            copy.DepartureFlight = this.DepartureFlight;
            return copy;

        }
    }
   
}
