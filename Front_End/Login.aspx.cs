using Front_End.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HashPass;

namespace Front_End
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Service1Client SC = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            bool SignedIn = SC.Login(txtEmail.Text, Secrecy.HashPassword(txtPassword.Text));

            if (SignedIn == true)
            {
                Response.Redirect("Index.aspx");
            }
            else
            {
                //Remain on same page
                LoginOutcome.Text = "Incorrect Email or Password";
            }
        }
    }
}