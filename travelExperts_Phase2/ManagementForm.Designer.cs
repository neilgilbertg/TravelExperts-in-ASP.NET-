using System.Data;
using System.Windows;

namespace travelExperts_Phase2
{
    partial class ManagementForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.btnRefreshPack = new System.Windows.Forms.Button();
            this.packageDataGridView = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.departureFlightDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.returnFlightDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Edit = new System.Windows.Forms.DataGridViewButtonColumn();
            this.packageBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.txtReturnFlight = new System.Windows.Forms.TextBox();
            this.txtDepartFlight = new System.Windows.Forms.TextBox();
            this.label19 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.cbPack = new System.Windows.Forms.ComboBox();
            this.lblAddProdPkg = new System.Windows.Forms.Label();
            this.lblAddPkg = new System.Windows.Forms.Label();
            this.label25 = new System.Windows.Forms.Label();
            this.cbProduct = new System.Windows.Forms.ComboBox();
            this.productsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.label24 = new System.Windows.Forms.Label();
            this.btnAddProdToPkg = new System.Windows.Forms.Button();
            this.btnAddPackage = new System.Windows.Forms.Button();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.txtDesc = new System.Windows.Forms.TextBox();
            this.txtCommission = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.txtPrice = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtEnd = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtStart = new System.Windows.Forms.TextBox();
            this.txtPackageName = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.btnRefreshProds = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.lblAddProd = new System.Windows.Forms.Label();
            this.productsDataGridView = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn9 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.EditProduct = new System.Windows.Forms.DataGridViewButtonColumn();
            this.btnAddProduct = new System.Windows.Forms.Button();
            this.label11 = new System.Windows.Forms.Label();
            this.txtProductName = new System.Windows.Forms.TextBox();
            this.label18 = new System.Windows.Forms.Label();
            this.label20 = new System.Windows.Forms.Label();
            this.btnRefreshSuppliers = new System.Windows.Forms.TabPage();
            this.button1 = new System.Windows.Forms.Button();
            this.lblAddSupp = new System.Windows.Forms.Label();
            this.supplierDataGridView = new System.Windows.Forms.DataGridView();
            this.supplierBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.btnAddSupplier = new System.Windows.Forms.Button();
            this.label12 = new System.Windows.Forms.Label();
            this.txtSupplierName = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.btnRefreshSuppProd = new System.Windows.Forms.Button();
            this.cbProductforCombination = new System.Windows.Forms.ComboBox();
            this.cbSupplierIDForCombined = new System.Windows.Forms.ComboBox();
            this.lblAddSuppProd = new System.Windows.Forms.Label();
            this.products_SuppliersDataGridView = new System.Windows.Forms.DataGridView();
            this.products_SuppliersBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.btnAddSuppProd = new System.Windows.Forms.Button();
            this.label23 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.txtSupProdID = new System.Windows.Forms.TextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.label21 = new System.Windows.Forms.Label();
            this.label22 = new System.Windows.Forms.Label();
            this.supplierContactBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.products_SuppliersDBBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.packageDBBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dataGridViewTextBoxColumn12 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn13 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn14 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.EditSupplierProduct = new System.Windows.Forms.DataGridViewButtonColumn();
            this.dataGridViewTextBoxColumn10 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn11 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.EditSupplier = new System.Windows.Forms.DataGridViewButtonColumn();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.packageDataGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.packageBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.productsBindingSource)).BeginInit();
            this.tabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.productsDataGridView)).BeginInit();
            this.btnRefreshSuppliers.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.supplierDataGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierBindingSource)).BeginInit();
            this.tabPage4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.products_SuppliersDataGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.products_SuppliersBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierContactBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.products_SuppliersDBBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.packageDBBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Controls.Add(this.btnRefreshSuppliers);
            this.tabControl1.Controls.Add(this.tabPage4);
            this.tabControl1.Location = new System.Drawing.Point(13, 12);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(1096, 497);
            this.tabControl1.TabIndex = 0;
            // 
            // tabPage1
            // 
            this.tabPage1.AutoScroll = true;
            this.tabPage1.Controls.Add(this.btnRefreshPack);
            this.tabPage1.Controls.Add(this.packageDataGridView);
            this.tabPage1.Controls.Add(this.txtReturnFlight);
            this.tabPage1.Controls.Add(this.txtDepartFlight);
            this.tabPage1.Controls.Add(this.label19);
            this.tabPage1.Controls.Add(this.label14);
            this.tabPage1.Controls.Add(this.cbPack);
            this.tabPage1.Controls.Add(this.lblAddProdPkg);
            this.tabPage1.Controls.Add(this.lblAddPkg);
            this.tabPage1.Controls.Add(this.label25);
            this.tabPage1.Controls.Add(this.cbProduct);
            this.tabPage1.Controls.Add(this.label24);
            this.tabPage1.Controls.Add(this.btnAddProdToPkg);
            this.tabPage1.Controls.Add(this.btnAddPackage);
            this.tabPage1.Controls.Add(this.label10);
            this.tabPage1.Controls.Add(this.label9);
            this.tabPage1.Controls.Add(this.txtDesc);
            this.tabPage1.Controls.Add(this.txtCommission);
            this.tabPage1.Controls.Add(this.label8);
            this.tabPage1.Controls.Add(this.label7);
            this.tabPage1.Controls.Add(this.txtPrice);
            this.tabPage1.Controls.Add(this.label6);
            this.tabPage1.Controls.Add(this.txtEnd);
            this.tabPage1.Controls.Add(this.label5);
            this.tabPage1.Controls.Add(this.txtStart);
            this.tabPage1.Controls.Add(this.txtPackageName);
            this.tabPage1.Controls.Add(this.label4);
            this.tabPage1.Controls.Add(this.label3);
            this.tabPage1.Controls.Add(this.label1);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(1088, 471);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Packages";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // btnRefreshPack
            // 
            this.btnRefreshPack.Location = new System.Drawing.Point(946, 214);
            this.btnRefreshPack.Name = "btnRefreshPack";
            this.btnRefreshPack.Size = new System.Drawing.Size(116, 23);
            this.btnRefreshPack.TabIndex = 33;
            this.btnRefreshPack.Text = "Refresh Packages";
            this.btnRefreshPack.UseVisualStyleBackColor = true;
            // 
            // packageDataGridView
            // 
            this.packageDataGridView.AllowUserToDeleteRows = false;
            this.packageDataGridView.AllowUserToOrderColumns = true;
            this.packageDataGridView.AutoGenerateColumns = false;
            this.packageDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.packageDataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3,
            this.dataGridViewTextBoxColumn4,
            this.dataGridViewTextBoxColumn5,
            this.dataGridViewTextBoxColumn6,
            this.dataGridViewTextBoxColumn7,
            this.departureFlightDataGridViewTextBoxColumn,
            this.returnFlightDataGridViewTextBoxColumn,
            this.Edit});
            this.packageDataGridView.DataSource = this.packageBindingSource;
            this.packageDataGridView.Location = new System.Drawing.Point(3, 243);
            this.packageDataGridView.Name = "packageDataGridView";
            this.packageDataGridView.Size = new System.Drawing.Size(1059, 220);
            this.packageDataGridView.TabIndex = 32;
            this.packageDataGridView.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.packageDataGridView_CellContentClick);
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "PackageId";
            this.dataGridViewTextBoxColumn1.HeaderText = "PackageId";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.DataPropertyName = "PkgName";
            this.dataGridViewTextBoxColumn2.HeaderText = "PkgName";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.DataPropertyName = "PkgStartDate";
            this.dataGridViewTextBoxColumn3.HeaderText = "PkgStartDate";
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.DataPropertyName = "PkgEndDate";
            this.dataGridViewTextBoxColumn4.HeaderText = "PkgEndDate";
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            // 
            // dataGridViewTextBoxColumn5
            // 
            this.dataGridViewTextBoxColumn5.DataPropertyName = "PkgDesc";
            this.dataGridViewTextBoxColumn5.HeaderText = "PkgDesc";
            this.dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            // 
            // dataGridViewTextBoxColumn6
            // 
            this.dataGridViewTextBoxColumn6.DataPropertyName = "PkgBasePrice";
            this.dataGridViewTextBoxColumn6.HeaderText = "PkgBasePrice";
            this.dataGridViewTextBoxColumn6.Name = "dataGridViewTextBoxColumn6";
            // 
            // dataGridViewTextBoxColumn7
            // 
            this.dataGridViewTextBoxColumn7.DataPropertyName = "PkgAgencyCommission";
            this.dataGridViewTextBoxColumn7.HeaderText = "PkgAgencyCommission";
            this.dataGridViewTextBoxColumn7.Name = "dataGridViewTextBoxColumn7";
            // 
            // departureFlightDataGridViewTextBoxColumn
            // 
            this.departureFlightDataGridViewTextBoxColumn.DataPropertyName = "DepartureFlight";
            this.departureFlightDataGridViewTextBoxColumn.HeaderText = "DepartureFlight";
            this.departureFlightDataGridViewTextBoxColumn.Name = "departureFlightDataGridViewTextBoxColumn";
            // 
            // returnFlightDataGridViewTextBoxColumn
            // 
            this.returnFlightDataGridViewTextBoxColumn.DataPropertyName = "ReturnFlight";
            this.returnFlightDataGridViewTextBoxColumn.HeaderText = "ReturnFlight";
            this.returnFlightDataGridViewTextBoxColumn.Name = "returnFlightDataGridViewTextBoxColumn";
            // 
            // Edit
            // 
            this.Edit.HeaderText = "Edit Package";
            this.Edit.Name = "Edit";
            this.Edit.Text = "Edit";
            this.Edit.UseColumnTextForButtonValue = true;
            // 
            // packageBindingSource
            // 
            this.packageBindingSource.DataSource = typeof(TravelExpertData.PackageDB);
            // 
            // txtReturnFlight
            // 
            this.txtReturnFlight.Location = new System.Drawing.Point(8, 200);
            this.txtReturnFlight.Name = "txtReturnFlight";
            this.txtReturnFlight.Size = new System.Drawing.Size(100, 20);
            this.txtReturnFlight.TabIndex = 32;
            // 
            // txtDepartFlight
            // 
            this.txtDepartFlight.Location = new System.Drawing.Point(9, 161);
            this.txtDepartFlight.Name = "txtDepartFlight";
            this.txtDepartFlight.Size = new System.Drawing.Size(100, 20);
            this.txtDepartFlight.TabIndex = 31;
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Location = new System.Drawing.Point(8, 184);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(81, 13);
            this.label19.TabIndex = 30;
            this.label19.Text = "Return FlightID:";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(8, 145);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(96, 13);
            this.label14.TabIndex = 29;
            this.label14.Text = "Departure FlightID:";
            // 
            // cbPack
            // 
            this.cbPack.FormattingEnabled = true;
            this.cbPack.Location = new System.Drawing.Point(413, 103);
            this.cbPack.Name = "cbPack";
            this.cbPack.Size = new System.Drawing.Size(121, 21);
            this.cbPack.TabIndex = 28;
            // 
            // lblAddProdPkg
            // 
            this.lblAddProdPkg.AutoSize = true;
            this.lblAddProdPkg.Location = new System.Drawing.Point(471, 200);
            this.lblAddProdPkg.Name = "lblAddProdPkg";
            this.lblAddProdPkg.Size = new System.Drawing.Size(0, 13);
            this.lblAddProdPkg.TabIndex = 27;
            // 
            // lblAddPkg
            // 
            this.lblAddPkg.AutoSize = true;
            this.lblAddPkg.Location = new System.Drawing.Point(114, 207);
            this.lblAddPkg.Name = "lblAddPkg";
            this.lblAddPkg.Size = new System.Drawing.Size(0, 13);
            this.lblAddPkg.TabIndex = 26;
            // 
            // label25
            // 
            this.label25.AutoSize = true;
            this.label25.Location = new System.Drawing.Point(410, 31);
            this.label25.Name = "label25";
            this.label25.Size = new System.Drawing.Size(95, 13);
            this.label25.TabIndex = 25;
            this.label25.Text = "Choose a Product:";
            // 
            // cbProduct
            // 
            this.cbProduct.DataBindings.Add(new System.Windows.Forms.Binding("SelectedValue", this.productsBindingSource, "ProdName", true));
            this.cbProduct.FormattingEnabled = true;
            this.cbProduct.Location = new System.Drawing.Point(413, 45);
            this.cbProduct.Name = "cbProduct";
            this.cbProduct.Size = new System.Drawing.Size(121, 21);
            this.cbProduct.TabIndex = 24;
            // 
            // productsBindingSource
            // 
            this.productsBindingSource.DataSource = typeof(TravelExpertData.Products);
            // 
            // label24
            // 
            this.label24.AutoSize = true;
            this.label24.Location = new System.Drawing.Point(410, 86);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(142, 13);
            this.label24.TabIndex = 22;
            this.label24.Text = "PackageID to add Products:";
            // 
            // btnAddProdToPkg
            // 
            this.btnAddProdToPkg.Location = new System.Drawing.Point(416, 128);
            this.btnAddProdToPkg.Name = "btnAddProdToPkg";
            this.btnAddProdToPkg.Size = new System.Drawing.Size(75, 23);
            this.btnAddProdToPkg.TabIndex = 21;
            this.btnAddProdToPkg.Text = "Add";
            this.btnAddProdToPkg.UseVisualStyleBackColor = true;
            this.btnAddProdToPkg.Click += new System.EventHandler(this.btnAddProdToPkg_Click);
            // 
            // btnAddPackage
            // 
            this.btnAddPackage.Location = new System.Drawing.Point(145, 155);
            this.btnAddPackage.Name = "btnAddPackage";
            this.btnAddPackage.Size = new System.Drawing.Size(75, 23);
            this.btnAddPackage.TabIndex = 20;
            this.btnAddPackage.Text = "Add";
            this.btnAddPackage.UseVisualStyleBackColor = true;
            this.btnAddPackage.Click += new System.EventHandler(this.btnAddPackage_Click);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(6, 220);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(144, 20);
            this.label10.TabIndex = 19;
            this.label10.Text = "Package Details:";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(398, 12);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(222, 16);
            this.label9.TabIndex = 16;
            this.label9.Text = "Add Products to New Package:";
            // 
            // txtDesc
            // 
            this.txtDesc.Location = new System.Drawing.Point(145, 47);
            this.txtDesc.Multiline = true;
            this.txtDesc.Name = "txtDesc";
            this.txtDesc.Size = new System.Drawing.Size(179, 20);
            this.txtDesc.TabIndex = 14;
            // 
            // txtCommission
            // 
            this.txtCommission.Location = new System.Drawing.Point(145, 126);
            this.txtCommission.Name = "txtCommission";
            this.txtCommission.Size = new System.Drawing.Size(119, 20);
            this.txtCommission.TabIndex = 13;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(142, 110);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(104, 13);
            this.label8.TabIndex = 12;
            this.label8.Text = "Agency Commission:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(142, 71);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(61, 13);
            this.label7.TabIndex = 11;
            this.label7.Text = "Base Price:";
            // 
            // txtPrice
            // 
            this.txtPrice.Location = new System.Drawing.Point(145, 87);
            this.txtPrice.Name = "txtPrice";
            this.txtPrice.Size = new System.Drawing.Size(119, 20);
            this.txtPrice.TabIndex = 10;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(142, 31);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(63, 13);
            this.label6.TabIndex = 9;
            this.label6.Text = "Description:";
            // 
            // txtEnd
            // 
            this.txtEnd.Location = new System.Drawing.Point(9, 125);
            this.txtEnd.Name = "txtEnd";
            this.txtEnd.Size = new System.Drawing.Size(130, 20);
            this.txtEnd.TabIndex = 8;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 109);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(55, 13);
            this.label5.TabIndex = 7;
            this.label5.Text = "End Date:";
            // 
            // txtStart
            // 
            this.txtStart.Location = new System.Drawing.Point(9, 86);
            this.txtStart.Name = "txtStart";
            this.txtStart.Size = new System.Drawing.Size(130, 20);
            this.txtStart.TabIndex = 6;
            // 
            // txtPackageName
            // 
            this.txtPackageName.Location = new System.Drawing.Point(9, 47);
            this.txtPackageName.Name = "txtPackageName";
            this.txtPackageName.Size = new System.Drawing.Size(130, 20);
            this.txtPackageName.TabIndex = 5;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 70);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(58, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Start Date:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 31);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(84, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Package Name:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(4, 7);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(202, 24);
            this.label1.TabIndex = 0;
            this.label1.Text = "Add A New Package";
            // 
            // tabPage2
            // 
            this.tabPage2.AutoScroll = true;
            this.tabPage2.Controls.Add(this.btnRefreshProds);
            this.tabPage2.Controls.Add(this.label2);
            this.tabPage2.Controls.Add(this.lblAddProd);
            this.tabPage2.Controls.Add(this.productsDataGridView);
            this.tabPage2.Controls.Add(this.btnAddProduct);
            this.tabPage2.Controls.Add(this.label11);
            this.tabPage2.Controls.Add(this.txtProductName);
            this.tabPage2.Controls.Add(this.label18);
            this.tabPage2.Controls.Add(this.label20);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(1088, 471);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Products";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // btnRefreshProds
            // 
            this.btnRefreshProds.Location = new System.Drawing.Point(241, 136);
            this.btnRefreshProds.Name = "btnRefreshProds";
            this.btnRefreshProds.Size = new System.Drawing.Size(113, 23);
            this.btnRefreshProds.TabIndex = 43;
            this.btnRefreshProds.Text = "Refresh Products";
            this.btnRefreshProds.UseVisualStyleBackColor = true;
            this.btnRefreshProds.Click += new System.EventHandler(this.btnRefreshProds_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(92, 73);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(0, 13);
            this.label2.TabIndex = 42;
            // 
            // lblAddProd
            // 
            this.lblAddProd.AutoSize = true;
            this.lblAddProd.Location = new System.Drawing.Point(92, 73);
            this.lblAddProd.Name = "lblAddProd";
            this.lblAddProd.Size = new System.Drawing.Size(0, 13);
            this.lblAddProd.TabIndex = 41;
            // 
            // productsDataGridView
            // 
            this.productsDataGridView.AllowUserToDeleteRows = false;
            this.productsDataGridView.AutoGenerateColumns = false;
            this.productsDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.productsDataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn8,
            this.dataGridViewTextBoxColumn9,
            this.EditProduct});
            this.productsDataGridView.DataSource = this.productsBindingSource;
            this.productsDataGridView.Location = new System.Drawing.Point(7, 162);
            this.productsDataGridView.Name = "productsDataGridView";
            this.productsDataGridView.ReadOnly = true;
            this.productsDataGridView.Size = new System.Drawing.Size(347, 220);
            this.productsDataGridView.TabIndex = 40;
            this.productsDataGridView.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.productsDataGridView_CellContentClick);
            // 
            // dataGridViewTextBoxColumn8
            // 
            this.dataGridViewTextBoxColumn8.DataPropertyName = "ProductId";
            this.dataGridViewTextBoxColumn8.HeaderText = "ProductId";
            this.dataGridViewTextBoxColumn8.Name = "dataGridViewTextBoxColumn8";
            this.dataGridViewTextBoxColumn8.ReadOnly = true;
            // 
            // dataGridViewTextBoxColumn9
            // 
            this.dataGridViewTextBoxColumn9.DataPropertyName = "ProdName";
            this.dataGridViewTextBoxColumn9.HeaderText = "ProdName";
            this.dataGridViewTextBoxColumn9.Name = "dataGridViewTextBoxColumn9";
            this.dataGridViewTextBoxColumn9.ReadOnly = true;
            // 
            // EditProduct
            // 
            this.EditProduct.HeaderText = "Edit Product";
            this.EditProduct.Name = "EditProduct";
            this.EditProduct.ReadOnly = true;
            this.EditProduct.Text = "Edit";
            this.EditProduct.UseColumnTextForButtonValue = true;
            // 
            // btnAddProduct
            // 
            this.btnAddProduct.Location = new System.Drawing.Point(10, 73);
            this.btnAddProduct.Name = "btnAddProduct";
            this.btnAddProduct.Size = new System.Drawing.Size(75, 23);
            this.btnAddProduct.TabIndex = 40;
            this.btnAddProduct.Text = "Add";
            this.btnAddProduct.UseVisualStyleBackColor = true;
            this.btnAddProduct.Click += new System.EventHandler(this.btnAddProduct_Click);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(3, 139);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(137, 20);
            this.label11.TabIndex = 39;
            this.label11.Text = "Product Details:";
            // 
            // txtProductName
            // 
            this.txtProductName.Location = new System.Drawing.Point(9, 46);
            this.txtProductName.Name = "txtProductName";
            this.txtProductName.Size = new System.Drawing.Size(130, 20);
            this.txtProductName.TabIndex = 25;
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(6, 30);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(78, 13);
            this.label18.TabIndex = 22;
            this.label18.Text = "Product Name:";
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label20.Location = new System.Drawing.Point(5, 6);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(194, 24);
            this.label20.TabIndex = 20;
            this.label20.Text = "Add A New Product";
            // 
            // btnRefreshSuppliers
            // 
            this.btnRefreshSuppliers.AutoScroll = true;
            this.btnRefreshSuppliers.Controls.Add(this.button1);
            this.btnRefreshSuppliers.Controls.Add(this.lblAddSupp);
            this.btnRefreshSuppliers.Controls.Add(this.supplierDataGridView);
            this.btnRefreshSuppliers.Controls.Add(this.btnAddSupplier);
            this.btnRefreshSuppliers.Controls.Add(this.label12);
            this.btnRefreshSuppliers.Controls.Add(this.txtSupplierName);
            this.btnRefreshSuppliers.Controls.Add(this.label13);
            this.btnRefreshSuppliers.Controls.Add(this.label15);
            this.btnRefreshSuppliers.Location = new System.Drawing.Point(4, 22);
            this.btnRefreshSuppliers.Name = "btnRefreshSuppliers";
            this.btnRefreshSuppliers.Padding = new System.Windows.Forms.Padding(3);
            this.btnRefreshSuppliers.Size = new System.Drawing.Size(1088, 471);
            this.btnRefreshSuppliers.TabIndex = 2;
            this.btnRefreshSuppliers.Text = "Suppliers";
            this.btnRefreshSuppliers.UseVisualStyleBackColor = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(292, 130);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(124, 23);
            this.button1.TabIndex = 49;
            this.button1.Text = "Refresh Suppliers";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // lblAddSupp
            // 
            this.lblAddSupp.AutoSize = true;
            this.lblAddSupp.Location = new System.Drawing.Point(83, 72);
            this.lblAddSupp.Name = "lblAddSupp";
            this.lblAddSupp.Size = new System.Drawing.Size(0, 13);
            this.lblAddSupp.TabIndex = 48;
            // 
            // supplierDataGridView
            // 
            this.supplierDataGridView.AutoGenerateColumns = false;
            this.supplierDataGridView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.DisplayedCells;
            this.supplierDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.supplierDataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn10,
            this.dataGridViewTextBoxColumn11,
            this.EditSupplier});
            this.supplierDataGridView.DataSource = this.supplierBindingSource;
            this.supplierDataGridView.Location = new System.Drawing.Point(6, 159);
            this.supplierDataGridView.Name = "supplierDataGridView";
            this.supplierDataGridView.Size = new System.Drawing.Size(410, 220);
            this.supplierDataGridView.TabIndex = 47;
            this.supplierDataGridView.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.supplierDataGridView_CellContentClick);
            // 
            // supplierBindingSource
            // 
            this.supplierBindingSource.DataSource = typeof(TravelExpertData.Supplier);
            // 
            // btnAddSupplier
            // 
            this.btnAddSupplier.Location = new System.Drawing.Point(7, 72);
            this.btnAddSupplier.Name = "btnAddSupplier";
            this.btnAddSupplier.Size = new System.Drawing.Size(75, 23);
            this.btnAddSupplier.TabIndex = 47;
            this.btnAddSupplier.Text = "Add";
            this.btnAddSupplier.UseVisualStyleBackColor = true;
            this.btnAddSupplier.Click += new System.EventHandler(this.btnAddSupplier_Click);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(3, 136);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(141, 20);
            this.label12.TabIndex = 46;
            this.label12.Text = "Supplier Details:";
            // 
            // txtSupplierName
            // 
            this.txtSupplierName.Location = new System.Drawing.Point(7, 45);
            this.txtSupplierName.Name = "txtSupplierName";
            this.txtSupplierName.Size = new System.Drawing.Size(130, 20);
            this.txtSupplierName.TabIndex = 44;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(4, 29);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(79, 13);
            this.label13.TabIndex = 42;
            this.label13.Text = "Supplier Name:";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label15.Location = new System.Drawing.Point(8, 3);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(200, 24);
            this.label15.TabIndex = 40;
            this.label15.Text = "Add A New Supplier";
            // 
            // tabPage4
            // 
            this.tabPage4.AutoScroll = true;
            this.tabPage4.Controls.Add(this.btnRefreshSuppProd);
            this.tabPage4.Controls.Add(this.cbProductforCombination);
            this.tabPage4.Controls.Add(this.cbSupplierIDForCombined);
            this.tabPage4.Controls.Add(this.lblAddSuppProd);
            this.tabPage4.Controls.Add(this.products_SuppliersDataGridView);
            this.tabPage4.Controls.Add(this.btnAddSuppProd);
            this.tabPage4.Controls.Add(this.label23);
            this.tabPage4.Controls.Add(this.label16);
            this.tabPage4.Controls.Add(this.txtSupProdID);
            this.tabPage4.Controls.Add(this.label17);
            this.tabPage4.Controls.Add(this.label21);
            this.tabPage4.Controls.Add(this.label22);
            this.tabPage4.Location = new System.Drawing.Point(4, 22);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Size = new System.Drawing.Size(1088, 471);
            this.tabPage4.TabIndex = 3;
            this.tabPage4.Text = "Product/Suppliers";
            this.tabPage4.UseVisualStyleBackColor = true;
            // 
            // btnRefreshSuppProd
            // 
            this.btnRefreshSuppProd.Location = new System.Drawing.Point(364, 207);
            this.btnRefreshSuppProd.Name = "btnRefreshSuppProd";
            this.btnRefreshSuppProd.Size = new System.Drawing.Size(157, 23);
            this.btnRefreshSuppProd.TabIndex = 60;
            this.btnRefreshSuppProd.Text = "Refresh Supplier/Product";
            this.btnRefreshSuppProd.UseVisualStyleBackColor = true;
            this.btnRefreshSuppProd.Click += new System.EventHandler(this.btnRefreshSuppProd_Click);
            // 
            // cbProductforCombination
            // 
            this.cbProductforCombination.FormattingEnabled = true;
            this.cbProductforCombination.Location = new System.Drawing.Point(11, 126);
            this.cbProductforCombination.Name = "cbProductforCombination";
            this.cbProductforCombination.Size = new System.Drawing.Size(121, 21);
            this.cbProductforCombination.TabIndex = 59;
            // 
            // cbSupplierIDForCombined
            // 
            this.cbSupplierIDForCombined.FormattingEnabled = true;
            this.cbSupplierIDForCombined.Location = new System.Drawing.Point(11, 87);
            this.cbSupplierIDForCombined.Name = "cbSupplierIDForCombined";
            this.cbSupplierIDForCombined.Size = new System.Drawing.Size(121, 21);
            this.cbSupplierIDForCombined.TabIndex = 58;
            // 
            // lblAddSuppProd
            // 
            this.lblAddSuppProd.AutoSize = true;
            this.lblAddSuppProd.Location = new System.Drawing.Point(93, 152);
            this.lblAddSuppProd.Name = "lblAddSuppProd";
            this.lblAddSuppProd.Size = new System.Drawing.Size(0, 13);
            this.lblAddSuppProd.TabIndex = 57;
            // 
            // products_SuppliersDataGridView
            // 
            this.products_SuppliersDataGridView.AutoGenerateColumns = false;
            this.products_SuppliersDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.products_SuppliersDataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn12,
            this.dataGridViewTextBoxColumn13,
            this.dataGridViewTextBoxColumn14,
            this.EditSupplierProduct});
            this.products_SuppliersDataGridView.DataSource = this.products_SuppliersBindingSource;
            this.products_SuppliersDataGridView.Location = new System.Drawing.Point(11, 236);
            this.products_SuppliersDataGridView.Name = "products_SuppliersDataGridView";
            this.products_SuppliersDataGridView.Size = new System.Drawing.Size(510, 160);
            this.products_SuppliersDataGridView.TabIndex = 56;
            this.products_SuppliersDataGridView.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.products_SuppliersDataGridView_CellContentClick);
            // 
            // products_SuppliersBindingSource
            // 
            this.products_SuppliersBindingSource.DataSource = typeof(TravelExpertData.Products_Suppliers);
            // 
            // btnAddSuppProd
            // 
            this.btnAddSuppProd.Location = new System.Drawing.Point(11, 151);
            this.btnAddSuppProd.Name = "btnAddSuppProd";
            this.btnAddSuppProd.Size = new System.Drawing.Size(75, 23);
            this.btnAddSuppProd.TabIndex = 56;
            this.btnAddSuppProd.Text = "Add";
            this.btnAddSuppProd.UseVisualStyleBackColor = true;
            this.btnAddSuppProd.Click += new System.EventHandler(this.btnAddSuppProd_Click);
            // 
            // label23
            // 
            this.label23.AutoSize = true;
            this.label23.Location = new System.Drawing.Point(7, 109);
            this.label23.Name = "label23";
            this.label23.Size = new System.Drawing.Size(61, 13);
            this.label23.TabIndex = 54;
            this.label23.Text = "Product ID:";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label16.Location = new System.Drawing.Point(7, 213);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(208, 20);
            this.label16.TabIndex = 53;
            this.label16.Text = "Supplier/Product Details:";
            // 
            // txtSupProdID
            // 
            this.txtSupProdID.Location = new System.Drawing.Point(10, 46);
            this.txtSupProdID.Name = "txtSupProdID";
            this.txtSupProdID.Size = new System.Drawing.Size(100, 20);
            this.txtSupProdID.TabIndex = 50;
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(7, 70);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(62, 13);
            this.label17.TabIndex = 49;
            this.label17.Text = "Supplier ID:";
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(7, 30);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(101, 13);
            this.label21.TabIndex = 48;
            this.label21.Text = "Product/SupplierID:";
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label22.Location = new System.Drawing.Point(7, 6);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(351, 24);
            this.label22.TabIndex = 47;
            this.label22.Text = "Add A New Supplier/Product Combo";
            // 
            // supplierContactBindingSource
            // 
            this.supplierContactBindingSource.DataSource = typeof(TravelExpertData.SupplierContact);
            // 
            // products_SuppliersDBBindingSource
            // 
            this.products_SuppliersDBBindingSource.DataSource = typeof(TravelExpertData.Products_SuppliersDB);
            // 
            // packageDBBindingSource
            // 
            this.packageDBBindingSource.DataSource = typeof(TravelExpertData.PackageDB);
            // 
            // dataGridViewTextBoxColumn12
            // 
            this.dataGridViewTextBoxColumn12.DataPropertyName = "ProductSupplierId";
            this.dataGridViewTextBoxColumn12.HeaderText = "ProductSupplierId";
            this.dataGridViewTextBoxColumn12.Name = "dataGridViewTextBoxColumn12";
            // 
            // dataGridViewTextBoxColumn13
            // 
            this.dataGridViewTextBoxColumn13.DataPropertyName = "ProductId";
            this.dataGridViewTextBoxColumn13.HeaderText = "ProductId";
            this.dataGridViewTextBoxColumn13.Name = "dataGridViewTextBoxColumn13";
            // 
            // dataGridViewTextBoxColumn14
            // 
            this.dataGridViewTextBoxColumn14.DataPropertyName = "SupplierId";
            this.dataGridViewTextBoxColumn14.HeaderText = "SupplierId";
            this.dataGridViewTextBoxColumn14.Name = "dataGridViewTextBoxColumn14";
            // 
            // EditSupplierProduct
            // 
            this.EditSupplierProduct.HeaderText = "Edit Supplier/Product";
            this.EditSupplierProduct.Name = "EditSupplierProduct";
            this.EditSupplierProduct.Text = "Edit";
            this.EditSupplierProduct.UseColumnTextForButtonValue = true;
            // 
            // dataGridViewTextBoxColumn10
            // 
            this.dataGridViewTextBoxColumn10.DataPropertyName = "SupplierId";
            this.dataGridViewTextBoxColumn10.HeaderText = "SupplierId";
            this.dataGridViewTextBoxColumn10.Name = "dataGridViewTextBoxColumn10";
            this.dataGridViewTextBoxColumn10.Width = 79;
            // 
            // dataGridViewTextBoxColumn11
            // 
            this.dataGridViewTextBoxColumn11.DataPropertyName = "SupName";
            this.dataGridViewTextBoxColumn11.HeaderText = "SupName";
            this.dataGridViewTextBoxColumn11.Name = "dataGridViewTextBoxColumn11";
            this.dataGridViewTextBoxColumn11.Width = 79;
            // 
            // EditSupplier
            // 
            this.EditSupplier.HeaderText = "Edit Suppliers";
            this.EditSupplier.Name = "EditSupplier";
            this.EditSupplier.Text = "Edit";
            this.EditSupplier.UseColumnTextForButtonValue = true;
            this.EditSupplier.Width = 77;
            // 
            // ManagementForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1132, 543);
            this.Controls.Add(this.tabControl1);
            this.Name = "ManagementForm";
            this.Text = "ManagementForm";
            this.Load += new System.EventHandler(this.ManagementForm_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.packageDataGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.packageBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.productsBindingSource)).EndInit();
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.productsDataGridView)).EndInit();
            this.btnRefreshSuppliers.ResumeLayout(false);
            this.btnRefreshSuppliers.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.supplierDataGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierBindingSource)).EndInit();
            this.tabPage4.ResumeLayout(false);
            this.tabPage4.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.products_SuppliersDataGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.products_SuppliersBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierContactBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.products_SuppliersDBBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.packageDBBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.TextBox txtPackageName;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TabPage btnRefreshSuppliers;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtProductName;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtDesc;
        private System.Windows.Forms.TextBox txtCommission;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtPrice;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtEnd;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtStart;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtSupplierName;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.TextBox txtSupProdID;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.Label label23;
        private System.Windows.Forms.Button btnAddSuppProd;

        private System.Windows.Forms.DataGridViewTextBoxColumn productSupplierIdDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn productIdDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn supplierIdDataGridViewTextBoxColumn;

        private System.Windows.Forms.Button btnAddPackage;
        private System.Windows.Forms.DataGridViewTextBoxColumn packageIdDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn pkgNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn pkgStartDateDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn pkgEndDateDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn pkgDescDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn pkgBasePriceDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn pkgAgencyCommissionDataGridViewTextBoxColumn;
        private System.Windows.Forms.Button btnAddProduct;
        private System.Windows.Forms.Button btnAddSupplier;
        private System.Windows.Forms.Button btnAddProdToPkg;
        private System.Windows.Forms.BindingSource packageBindingSource;
        private System.Windows.Forms.DataGridView productsDataGridView;
        private System.Windows.Forms.BindingSource productsBindingSource;
        private System.Windows.Forms.DataGridView supplierDataGridView;
        private System.Windows.Forms.BindingSource supplierBindingSource;
        private System.Windows.Forms.BindingSource products_SuppliersBindingSource;
        private System.Windows.Forms.BindingSource supplierContactBindingSource;
        private System.Windows.Forms.Label label24;
        private System.Windows.Forms.DataGridView products_SuppliersDataGridView;
        private System.Windows.Forms.BindingSource products_SuppliersDBBindingSource;
        private System.Windows.Forms.Label label25;
        private System.Windows.Forms.ComboBox cbProduct;
        private System.Windows.Forms.Label lblAddProdPkg;
        private System.Windows.Forms.Label lblAddPkg;
        private System.Windows.Forms.ComboBox cbPack;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblAddProd;
        private System.Windows.Forms.Label lblAddSupp;
        private System.Windows.Forms.Label lblAddSuppProd;
        private System.Windows.Forms.ComboBox cbProductforCombination;
        private System.Windows.Forms.ComboBox cbSupplierIDForCombined;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox txtReturnFlight;
        private System.Windows.Forms.TextBox txtDepartFlight;
        private System.Windows.Forms.DataGridView packageDataGridView;
        private System.Windows.Forms.BindingSource packageDBBindingSource;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn6;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn7;
        private System.Windows.Forms.DataGridViewTextBoxColumn departureFlightDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn returnFlightDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewButtonColumn Edit;
        private System.Windows.Forms.Button btnRefreshPack;
        private System.Windows.Forms.Button btnRefreshProds;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn8;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn9;
        private System.Windows.Forms.DataGridViewButtonColumn EditProduct;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btnRefreshSuppProd;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn10;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn11;
        private System.Windows.Forms.DataGridViewButtonColumn EditSupplier;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn12;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn13;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn14;
        private System.Windows.Forms.DataGridViewButtonColumn EditSupplierProduct;
    }
}