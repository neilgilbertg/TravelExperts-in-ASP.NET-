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
    public partial class UpdateProductSuppliers : Form
    {
        public Products_Suppliers oldSuppProd;
        public Products_Suppliers newSuppProd;

        public UpdateProductSuppliers()
        {
            InitializeComponent();
        }

        private void btnAccept_Click(object sender, EventArgs e)
        {
            bool success = Products_SuppliersDB.UpdateProductsSuppliers(oldSuppProd, newSuppProd);
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

        private void UpdateProductSuppliers_Load(object sender, EventArgs e)
        {
            products_SuppliersBindingSource.Clear();
            products_SuppliersBindingSource.Add(newSuppProd);
        }
    }
}
