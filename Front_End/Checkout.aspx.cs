using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front_End
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btnPlaceOrder_Click(object sender, EventArgs e)
        //{
        //    // Logic to handle placing the order
        //    string firstName = txtFirstName.Text;
        //    string lastName = txtLastName.Text;
        //    string email = txtEmail.Text;
        //    string mobile = txtMobile.Text;
        //    string addressLine1 = txtAddressLine1.Text;
        //    string addressLine2 = txtAddressLine2.Text;
        //    string country = ddlCountry.SelectedValue;
        //    string city = txtCity.Text;
        //    string state = txtState.Text;
        //    string zipCode = txtZipCode.Text;

        //    // If shipping address is different, get those details as well
        //    string shipFirstName = txtShipFirstName.Text;
        //    string shipLastName = txtShipLastName.Text;
        //    string shipEmail = txtShipEmail.Text;
        //    string shipMobile = txtShipMobile.Text;
        //    string shipAddressLine1 = txtShipAddressLine1.Text;
        //    string shipAddressLine2 = txtShipAddressLine2.Text;
        //    string shipCountry = ddlShipCountry.SelectedValue;
        //    string shipCity = txtShipCity.Text;
        //    string shipState = txtShipState.Text;
        //    string shipZipCode = txtShipZipCode.Text;

        //    bool createAccount = chkCreateAccount.Checked;
        //    string paymentMethod = rbPaypal.Checked ? "Paypal" : rbDirectCheck.Checked ? "Direct Check" : "Bank Transfer";

        //    // Here, you can add your logic to save the order details to a database or process the order
        //    // For example:
        //    // SaveOrder(firstName, lastName, email, mobile, addressLine1, addressLine2, country, city, state, zipCode, 
        //    // shipFirstName, shipLastName, shipEmail, shipMobile, shipAddressLine1, shipAddressLine2, shipCountry, shipCity, shipState, shipZipCode, createAccount, paymentMethod);

        //    // Redirect to a confirmation page or show a success message
        //    Response.Redirect("OrderConfirmation.aspx");
        //}
    }
}