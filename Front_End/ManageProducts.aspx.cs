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
    public partial class ManageProducts : System.Web.UI.Page
    {
        Service1Client SC = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

            LoadProducts();
            HandleEditAndDelete();
        }

        private void LoadProducts()
        {
            try
            {
                dynamic products = SC.GetProducts();

                if (products != null)
                {
                    StringBuilder sb = new StringBuilder();

                    foreach (ProductDTO product in products)
                    {
                        sb.Append("<div class='product-item'>");
                        sb.AppendFormat("<img src='{0}' style='max-width: 100px;' />", product.Image);
                        sb.AppendFormat("<h6>{0}</h6>", product.Name);
                        sb.AppendFormat("<h5>R{0:F2}</h5>", product.Price);
                        sb.AppendFormat("<a href='ManageProducts.aspx?edit={0}'>Edit</a>", product.ProductID);
                        sb.AppendFormat("<a href='ManageProducts.aspx?delete={0}'>Delete</a>", product.ProductID);
                        sb.Append("</div>");
                    }

                    productContainer.InnerHtml = sb.ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error loading products: " + ex.Message);
            }
        }

        private void HandleEditAndDelete()
        {
            string editId = Request.QueryString["edit"];
            string deleteId = Request.QueryString["delete"];

            if (!string.IsNullOrEmpty(editId))
            {
                // Redirect to edit page with product ID
                Response.Redirect("EditProduct.aspx?ID=" + editId);
            }

            if (!string.IsNullOrEmpty(deleteId))
            {
                try
                {
                    SC.DeleteProduct(deleteId);
                    LoadProducts();
                }
                catch (Exception ex)
                {
                    Response.Write("Error deleting product: " + ex.Message);
                }
            }
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            // Redirect to Add Product page
            Response.Redirect("AddProduct.aspx");
        }
    }
}
