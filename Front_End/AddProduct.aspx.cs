using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using Front_End.ServiceReference1;

namespace Front_End
{
    public partial class AddProduct : Page
    {
        Service1Client SC = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {
            // No need to load the form dynamically; it's defined in ASPX markup.
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            // Collecting form data from textboxes
            string productName = txtProductName.Text;
            int categoryID;
            decimal price;
            string imageUrl = txtImageUrl.Text;
            string description = txtDescription.Text;
            int stockQuantity;

            // Validate and parse inputs
            if (string.IsNullOrEmpty(productName))
            {
                Response.Write("Product Name is required.");
                return;
            }

            if (!decimal.TryParse(txtPrice.Text, out price))
            {
                Response.Write("Invalid price.");
                return;
            }

            if (!int.TryParse(txtStockQuantity.Text, out stockQuantity))
            {
                Response.Write("Invalid stock quantity.");
                return;
            }

            if (!int.TryParse(txtCategoryID.Text, out categoryID))
            {
                Response.Write("Invalid categoryID.");
                return;
            }

            try
            {
                // Add the product
                bool outcome = SC.AddProduct(productName, categoryID, price, imageUrl, description, stockQuantity);

                if (outcome)
                {
                    Response.Redirect("ManageProducts.aspx");
                }
                else
                {
                    Response.Write("Error adding product.");
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error adding product: " + ex.Message);
            }
        }
    }
}
