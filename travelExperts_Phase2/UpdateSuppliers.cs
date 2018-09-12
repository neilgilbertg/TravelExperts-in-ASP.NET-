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

namespace travelExperts_Phase2
{
    public partial class UpdateSuppliers : Form
    {
        public Supplier newSupp;
        public Supplier oldSupp;
        public UpdateSuppliers()
        {
            InitializeComponent();
        }


        private void UpdateSuppliers_Load(object sender, EventArgs e)
        {
            supplierBindingSource.Clear();
            supplierBindingSource.Add(newSupp);
        }

        private void btnAccept_Click(object sender, EventArgs e)
        {
            bool success = SupplierDB.UpdateSupplier(oldSupp, newSupp);
            if (success)
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

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Retry;
        }
    }
}
