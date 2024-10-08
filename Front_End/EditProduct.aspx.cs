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
    public partial class EditProduct : System.Web.UI.Page
    {
        Service1Client SC = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProduct();
            }
        }

        private void LoadProduct()
        {
            try
            {
                // Get product ID from URL parameter
                int productId = Convert.ToInt32(Request.QueryString["ID"].ToString());

                // Get the product from your data source
                var product = SC.GetProductDTO(productId);

                if (product != null)
                {
                    txtProductName.Text = product.Name;
                    txtCategory.Text = product.CategoryID.ToString();
                    txtDescription.Text = product.Description;
                    txtPrice.Text = product.Price.ToString("F2"); // Format to 2 decimal places
                    txtImageUrl.Text = product.Image;
                    txtStockQuantity.Text = product.StockQuantity.ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error loading product: " + ex.Message);
            }
        }

        protected void btnUpdateProduct_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["ID"];
            string productName = txtProductName.Text;
            string description = txtDescription.Text;
            decimal price;
            int stockQuantity;
            int CategoryID;

            // Try to parse the price and stock quantity
            bool priceParsed = decimal.TryParse(txtPrice.Text, out price);
            bool stockParsed = int.TryParse(txtStockQuantity.Text, out stockQuantity);
            bool categoryParsed = int.TryParse(txtCategory.Text, out CategoryID);

            if (string.IsNullOrEmpty(productName))
            {
                Response.Write("Product Name is null or empty.");
                return; // Early exit for further processing
            }

            if (!priceParsed)
            {
                Response.Write("Price is invalid.");
                return; // Early exit for further processing
            }

            if (!stockParsed)
            {
                Response.Write("Stock Quantity is invalid.");
                return; // Early exit for further processing
            }

            if (!categoryParsed)
            {
                Response.Write("CategoryID is invalid.");
                return; // Early exit for further processing
            }

            try
            {
                // Update the product
                SC.UpdateProduct(productId, CategoryID, productName, price, txtImageUrl.Text, description, stockQuantity);
                Response.Redirect("ManageProducts.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Error updating product: " + ex.Message);
            }
        }
    }
}
