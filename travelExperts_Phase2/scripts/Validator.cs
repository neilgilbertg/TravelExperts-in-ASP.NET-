using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TravelExpertData;

namespace packageManagementProgram
{
    public static class Validator
    {
        public static bool Validate(Package pack)
        {
            if (pack.PkgAgencyCommission > pack.PkgBasePrice || pack.PkgEndDate < pack.PkgStartDate || pack.PkgDesc is null || pack.PkgName is null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}
