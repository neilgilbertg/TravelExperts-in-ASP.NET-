using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TravelExpertData;
using packageManagementProgram;

namespace travelExperts_Phase2
{
    public partial class UpdatePackage : Form
    {
        public Package oldPack;
        public Package newPack;
        public UpdatePackage()
        {
            InitializeComponent();
        }

        private void UpdatePackage_Load(object sender, EventArgs e)
        {
            packageBindingSource.Clear();
            packageBindingSource.Add(newPack);
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Retry;
        }

        private void btnAccept_Click(object sender, EventArgs e)
        {
            bool success = PackageDB.UpdatePackage(oldPack, newPack);
            if(success)
            {
                this.DialogResult = DialogResult.OK;
                ManagementForm frm = new ManagementForm();
                frm.Refresh();
            }
            else
            {
                this.DialogResult = DialogResult.Retry;
            }
           
        }
    }
}
