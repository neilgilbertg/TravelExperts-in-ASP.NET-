using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelExpertData.datadefinitions;
using TravelExpertData.DBactions;

namespace travelWebsite
{
    public partial class CustomerRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Customer customer = new Customer();
            customer.CustFirstName = txtFirstName.Text;
            customer.CustLastName = txtLastName.Text;
            customer.CustAddress = txtAddress.Text;
            customer.CustCity = txtCity.Text;
            customer.CustProv = ddlProvince.SelectedValue;
            customer.CustCountry = txtCountry.Text;
            customer.CustPostal = txtPostal.Text.ToUpper();
            customer.CustEmail = txtEmail.Text;
            customer.CustHomePhone = txtHomePhone.Text.Replace("(", "").Replace(")", "").Replace("-", "");
            customer.CustBusPhone = txtBusinessPhone.Text.Replace("(", "").Replace(")", "").Replace("-", "");
            customer.CustUsername = txtUsername.Text;
            customer.CustPassword = txtPassword1.Text;
            customer.CustFirstName = txtFirstName.Text;

            CustomerDB.AddCustomer(customer);
            Response.Redirect("Homepage.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            ddlProvince.SelectedValue = "-1";
            txtCountry.Text = "";
            txtPostal.Text = "";
            txtEmail.Text = "";
            txtHomePhone.Text = "";
            txtBusinessPhone.Text = "";
            txtUsername.Text = "";
            txtPassword1.Text = "";
            txtPassword2.Text = "";
            txtFirstName.Focus();
        }
    }
}