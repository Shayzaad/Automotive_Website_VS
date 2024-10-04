using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front_End
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Only clear the session if it's the very first load of the website
            if (!IsPostBack && Session["UserType"] == null)
            {
                string Type = Session["UserType"] as string;

                // Clear the session to ensure all roles are logged out initially
                Session["UserType"] = null;
            }

            string userType = Session["UserType"] as string;

            if (userType == null)
            {
                pnlCustomer.Visible = false;
                pnlLoggedOut.Visible = true;
                pnlManager.Visible = false;
            }
            else if (userType.Equals("0"))
            {
                pnlCustomer.Visible = true;
                pnlLoggedOut.Visible = false;
                pnlManager.Visible = false;
            }
            else if (userType.Equals("1"))
            {
                pnlManager.Visible = true;
                pnlCustomer.Visible = false;
                pnlLoggedOut.Visible = false;
            }
            else
            {
                // Handle unexpected userType values
                pnlCustomer.Visible = false;
                pnlLoggedOut.Visible = true;
                pnlManager.Visible = false;
            }
        }
    }
    }
