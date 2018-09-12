using packageManagementProgram;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TravelExpertData;

namespace travelExperts_Phase2
{
    public partial class ManagementForm : Form
    {
        const int EDIT_BUTTON = 9;
        const int PRODUCT_EDIT = 2;
        const int SUPPLIER_EDIT = 2;
        const int SUPP_PROD_EDIT = 3;
        List<Products_Suppliers> productSupplierList = Products_SuppliersDB.GetProductsSuppliers();
        List<Package> packList = PackageDB.GetPackages();
        List<Products> prodList = ProductDB.GetProducts();
        List<Supplier> suppList = SupplierDB.GetSuppliers();
        public ManagementForm()
        {
            InitializeComponent();
        }
         

        private void ManagementForm_Load(object sender, EventArgs e)
        {
            
            packageDataGridView.DataSource = TravelExpertData.PackageDB.GetPackages();
            productsDataGridView.DataSource = TravelExpertData.ProductDB.GetProducts();
            supplierDataGridView.DataSource = TravelExpertData.SupplierDB.GetSuppliers();
            products_SuppliersDataGridView.DataSource = TravelExpertData.Products_SuppliersDB.GetProductsSuppliers();
           
            cbProduct.DataSource = productSupplierList;
            cbProduct.DisplayMember = "FullName";
            cbProduct.ValueMember = "ProductId";
           
            cbPack.DataSource = packList;
            cbPack.DisplayMember = "PkgName";
            cbPack.ValueMember = "PackageId";
           
            cbProductforCombination.DataSource = prodList;
            cbProductforCombination.DisplayMember = "ProdName";
            cbProductforCombination.ValueMember = "ProductId";
           
            cbSupplierIDForCombined.DataSource = suppList;
            cbSupplierIDForCombined.DisplayMember = "SupName";
            cbSupplierIDForCombined.ValueMember = "SupplierId";





        }

        private void btnAddPackage_Click(object sender, EventArgs e)
        {
            DialogResult result = new DialogResult();
            if (txtDesc.Text == "")
            {
                MessageBox.Show("Package Description is a required field. Please fill in.");
                result = DialogResult.Retry;
            }
            if(txtPrice.Text == "" || txtCommission.Text == "" || Convert.ToDouble(txtPrice.Text) < Convert.ToDouble(txtCommission.Text))
            {
                MessageBox.Show("The Agency Commission cannot be larger than the Base Price of the package.");
                result = DialogResult.Retry;
            }
            if (txtStart.Text == "" || txtCommission.Text == "" || Convert.ToDateTime(txtStart.Text) >= Convert.ToDateTime(txtEnd.Text))
            {
                MessageBox.Show("The Start Date must be an earlier date than the End Date.");
                result = DialogResult.Retry;
            }
            if(result!=DialogResult.Retry)
            {
                Package pkg = new Package();
                pkg.PkgAgencyCommission = Convert.ToDouble(txtCommission.Text);
                pkg.PkgBasePrice = Convert.ToDouble(txtPrice.Text);
                pkg.PkgDesc = txtDesc.Text.ToString();
                pkg.PkgEndDate = Convert.ToDateTime(txtEnd.Text);
                pkg.PkgName = txtPackageName.Text.ToString();
                pkg.PkgStartDate = Convert.ToDateTime(txtStart.Text);
                TravelExpertData.PackageDB.AddPackage(pkg);
                lblAddPkg.Text = "Package Added Successfully";
                packageDataGridView.DataSource = PackageDB.GetPackages();
            }
            
        }

        private void btnAddProduct_Click(object sender, EventArgs e)
        {
            DialogResult result = new DialogResult();
            Products prod = new Products();
            prod.ProdName = txtProductName.Text;
            if (prod.ProdName == "")
            {
                MessageBox.Show("Product Name is a required field please include.");
                result = DialogResult.OK;
            }
            if (result != DialogResult.OK)
            {
                TravelExpertData.ProductDB.AddProducts(prod);
                lblAddProd.Text = "Product Added Successfully";
                productsDataGridView.DataSource = ProductDB.GetProducts();
            }

        }

        private void btnAddSupplier_Click(object sender, EventArgs e)
        {
            Supplier supp = new Supplier();
            supp.SupName = txtSupplierName.Text;
            TravelExpertData.SupplierDB.AddSupplier(supp);
            lblAddSupp.Text = "Supplier Added Successfully";
        }

        private void btnAddSuppProd_Click(object sender, EventArgs e)
        {
            Products_Suppliers prodSupp = new Products_Suppliers();
            prodSupp.ProductId = Convert.ToInt32(cbProductforCombination.SelectedValue);
            prodSupp.SupplierId = Convert.ToInt32(cbSupplierIDForCombined.SelectedValue);
            Products_SuppliersDB.AddProductsSuppliers(prodSupp);
            lblAddSuppProd.Text = "Supplier/Product Combo has been added";
            supplierDataGridView.DataSource = SupplierDB.GetSuppliers();
        }

        private void btnAddProdToPkg_Click(object sender, EventArgs e)
        {
            PackageDB.AddProductToPackage(Convert.ToInt32(cbPack.SelectedValue), Convert.ToInt32(cbProduct.SelectedValue));
            lblAddProdPkg.Text = "Product has been added to the selected package";
            products_SuppliersDataGridView.DataSource = Products_SuppliersDB.GetProductsSuppliers();
        }

        private void packageDataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if(e.ColumnIndex == EDIT_BUTTON)
            {
                Package oldPack = packList[e.RowIndex].CopyPackage();
                UpdatePackage updateForm = new UpdatePackage();
                //updateForm.newPack = packList[e.RowIndex]; //passing the current customer to the form
                //updateForm.oldPack = oldPack;

                updateForm.DataBindings.Add("dataMember", packList[e.RowIndex], "DepartureFltId", true);
                DialogResult result = updateForm.ShowDialog();//display modal second form
                if (result == DialogResult.OK) //Update Accepted
                {
                    //refresh the grid view
                    CurrencyManager cm = (CurrencyManager)packageDataGridView.BindingContext[PackageDB.GetPackages()];
                    cm.Refresh();
                }
                else//Update cancelled
                {
                    packList[e.RowIndex] = oldPack; //revert to old customer data
                }
            }
        }

        private void btnRefreshPack_Click(object sender, EventArgs e)
        {
            packageDataGridView.DataSource = PackageDB.GetPackages();
        }

        private void btnRefreshProds_Click(object sender, EventArgs e)
        {
            productsDataGridView.DataSource = ProductDB.GetProducts();
        }

        private void productsDataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == PRODUCT_EDIT)
            {
                productsDataGridView.DataSource = ProductDB.GetProducts();
                Products oldProd = prodList[e.RowIndex].CopyProduct();
                UpdateProducts updateForm = new UpdateProducts();
                updateForm.newProd = prodList[e.RowIndex]; //passing the current customer to the form
                updateForm.oldProd = oldProd;
                DialogResult result = updateForm.ShowDialog();//display modal second form
                if (result == DialogResult.OK) //Update Accepted
                {
                    //refresh the grid view
                    CurrencyManager cm = (CurrencyManager)productsDataGridView.BindingContext[PackageDB.GetPackages()];
                    cm.Refresh();
                }
                else//Update cancelled
                {
                    prodList[e.RowIndex] = oldProd; //revert to old customer data
                }
            }
        }

        private void supplierDataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == SUPPLIER_EDIT)
            {
                supplierDataGridView.DataSource = SupplierDB.GetSuppliers();
                Supplier oldSupp = suppList[e.RowIndex].CopySupplier();
                UpdateSuppliers updateForm = new UpdateSuppliers();
                updateForm.newSupp = suppList[e.RowIndex]; //passing the current customer to the form
                updateForm.oldSupp = oldSupp;
                DialogResult result = updateForm.ShowDialog();//display modal second form
                if (result == DialogResult.OK) //Update Accepted
                {
                    //refresh the grid view
                    CurrencyManager cm = (CurrencyManager)supplierDataGridView.BindingContext[SupplierDB.GetSuppliers()];
                    cm.Refresh();
                }
                else//Update cancelled
                {
                    suppList[e.RowIndex] = oldSupp; //revert to old customer data
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            supplierDataGridView.DataSource = SupplierDB.GetSuppliers();
        }

        private void products_SuppliersDataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == SUPP_PROD_EDIT)
            {
                Products_Suppliers oldSuppProd = productSupplierList[e.RowIndex].CopyCombo();
                UpdateProductSuppliers updateForm = new UpdateProductSuppliers();
                updateForm.newSuppProd = productSupplierList[e.RowIndex]; //passing the current customer to the form
                updateForm.oldSuppProd = oldSuppProd;
                DialogResult result = updateForm.ShowDialog();//display modal second form
                if (result == DialogResult.OK) //Update Accepted
                {
                    //refresh the grid view
                    CurrencyManager cm = (CurrencyManager)products_SuppliersDataGridView.BindingContext[SupplierDB.GetSuppliers()];
                    cm.Refresh();
                }
                else//Update cancelled
                {
                   productSupplierList[e.RowIndex] = oldSuppProd; //revert to old customer data
                }
            }
        }

        private void btnRefreshSuppProd_Click(object sender, EventArgs e)
        {
            products_SuppliersDataGridView.DataSource = Products_SuppliersDB.GetProductsSuppliers();
        }
    }
}