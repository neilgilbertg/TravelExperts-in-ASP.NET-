using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TravelExpertData;
using travelExperts_Phase2;

namespace packageManagementProgram
{
    class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new ManagementForm());
            // TravelExpertData.PackageDB.GetPackages(); // Made for testing purposes
        }
    }
}
