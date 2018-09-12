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
    public partial class UpdateProducts : Form
    {
        public Products oldProd;
        public Products newProd;

        public UpdateProducts()
        {
            InitializeComponent();
        }
       

        private void UpdateProducts_Load(object sender, EventArgs e)
        {
            productsBindingSource.Clear();
            productsBindingSource.Add(newProd);
        }

   

        private void btnAccept_Click(object sender, EventArgs e)
        {
            bool success = ProductDB.UpdateProducts(oldProd, newProd);
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

