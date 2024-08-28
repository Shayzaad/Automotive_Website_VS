using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Front_End.ServiceReference1;
using HashPass;

namespace Front_End
{
    public partial class Register : System.Web.UI.Page
    {
        Service1Client SC = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //  Customer objCust = new Customer(txtUsername.Text, txtEmail.Text, Secrecy.HashPassword(txtPassword.Text));
            bool SignedUp = SC.Register(txtUsername.Text, txtEmail.Text, Secrecy.HashPassword(txtPassword.Text));

            if (SignedUp == true)
            {
                
                Response.Redirect("./Login.aspx");
            }
            else
            {
                RegOutcome.Text = "Registration Failed";
            }
        }
    }
}