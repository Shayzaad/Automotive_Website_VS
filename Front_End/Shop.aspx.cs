using System;
using System.Collections.Generic;
using System.Text;
using System.Web.UI;
using Front_End.ServiceReference1;

namespace Front_End
{
    public partial class Shop : System.Web.UI.Page
    {
        Service1Client SC = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {
            string categoryParam = Request.QueryString["Category"];
            string saveParam = Request.QueryString["Save"];
            string sortParam = Request.QueryString["sort"];

            dynamic filteredProducts = null;

            if (!string.IsNullOrEmpty(categoryParam))
            {
                // Check if the category is an integer (for numerical categories)
                if (int.TryParse(categoryParam, out int categoryId))
                {
                    filteredProducts = SC.GetProductByCategory(categoryId);
                }
            }
            else
            {
                // Fetch all products from the service
                dynamic product = SC.GetProducts();
                if (product != null)
                {
                    filteredProducts = new List<ProductDTO>(product);
                }
            }

            // Apply filtering based on the Save parameter
            if (!string.IsNullOrEmpty(saveParam) && int.TryParse(saveParam, out int save))
            {
                filteredProducts = FilterProductsBySave(filteredProducts, save);
            }

            // Sort the products if a sort parameter is provided
            if (!string.IsNullOrEmpty(sortParam))
            {
                SortProducts(filteredProducts, sortParam);
            }

            // Generate HTML output for the products
            StringBuilder sb = new StringBuilder();
            sb.Append("<div class='row'>"); // Create a row for Bootstrap grid

            foreach (ProductDTO p in filteredProducts)
            {
                sb.Append("<div class='col-lg-4 col-md-6 col-sm-12 pb-1'>"); // Use col-lg-4 for 3 in a row
                sb.Append("<div class='product-item bg-light mb-4'>");
                sb.Append("<div class='product-img position-relative overflow-hidden'>");
                sb.Append("<img class='img-fluid w-100' src='" + p.Image + "' alt=''>");
                sb.Append("<div class='product-action'>");
                sb.Append("<a class='btn btn-outline-dark btn-square' href=''><i class='fa fa-shopping-cart'></i></a>");
                sb.Append("<a class='btn btn-outline-dark btn-square' href=''><i class='far fa-heart'></i></a>");
                sb.Append("</div>");
                sb.Append("</div>");
                sb.Append("<div class='text-center py-4'>");
                //sb.Append("<a class='h6 text-decoration-none text-truncate' href=''>" + p.Name + "</a>");
                sb.Append("<a class='h6 text-decoration-none text-truncate' href='AboutProduct.aspx?ProductId=" + p.ProductID + "'>" + p.Name + "</a>");
                sb.Append("<div class='d-flex align-items-center justify-content-center mt-2'>");
                if (p.DiscountedPrice != null)
                {
                    sb.Append("<h5>R" + p.DiscountedPrice + "</h5><h6 class='text-muted ml-2'><del>R" + p.Price + "</del></h6>");
                }
                else
                {
                    sb.Append("<h5>R" + p.Price + "</h5>");
                }
                sb.Append("</div>");
                sb.Append("</div>");
                sb.Append("</div>");
                sb.Append("</div>"); // Close the product item div
            }

            sb.Append("</div>"); // Close the row div
            Prods.InnerHtml = sb.ToString(); // Set the generated HTML to the Prods section
            Prods2.InnerHtml = sb.ToString(); // Set the generated HTML to the Prods section
            Prods3.InnerHtml = sb.ToString(); // Set the generated HTML to the Prods section
        }


        private void SortProducts(List<ProductDTO> products, string sortParam)
        {
            switch (sortParam)
            {
                case "price_asc":
                    products.Sort((a, b) => a.Price.CompareTo(b.Price));
                    break;
                case "price_desc":
                    products.Sort((a, b) => b.Price.CompareTo(a.Price));
                    break;
                case "name_asc":
                    products.Sort((a, b) => string.Compare(a.Name, b.Name));
                    break;
                case "name_desc":
                    products.Sort((a, b) => string.Compare(b.Name, a.Name));
                    break;
            }
        }

        private List<ProductDTO> FilterProductsBySave(List<ProductDTO> products, int save)
        {
            List<ProductDTO> filteredProducts = new List<ProductDTO>();

            foreach (ProductDTO p in products)
            {
                if (save == 1 && p.DiscountedPrice != null)
                {
                    filteredProducts.Add(p); // Discounted products
                }
                else if (save == 2 && p.DiscountedPrice == null)
                {
                    filteredProducts.Add(p); // Non-discounted products
                }
            }

            return filteredProducts;
        }


    }
}
