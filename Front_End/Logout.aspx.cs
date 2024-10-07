using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front_End
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set the session for the user
            Session["UserType"] = null;

            Session["User"] =null;

            Response.Redirect("Index.aspx");
        }
    }
}