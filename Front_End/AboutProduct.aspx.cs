using System;
using System.Web.UI;
using Front_End.ServiceReference1;

namespace Front_End
{
    public partial class AboutProduct : Page
    {
        Service1Client SC = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check for both "ID" and "ProductId" in the query string
                if (Request.QueryString["ID"] != null && int.TryParse(Request.QueryString["ID"], out int productId))
                {
                    LoadProductDetails(productId);
                }
                else if (Request.QueryString["ProductId"] != null && int.TryParse(Request.QueryString["ProductId"], out productId))
                {
                    LoadProductDetails(productId);
                }
                else
                {
                    Response.Redirect("Index.aspx");
                }
            }
        }

        private void LoadProductDetails(int productId)
        {
            ProductDTO product = SC.GetProductDTO(productId);
            if (product != null)
            {
                // Populate product details dynamically
                ProductImage.Src = product.Image;
                ProductName.InnerText = product.Name;
                ProductPrice.InnerText = $"Price: R{product.Price}";
                DiscountedPrice.InnerText = product.DiscountedPrice != null
                    ? $"Discounted Price: R{product.DiscountedPrice}"
                    : "";
                ProductDescription.InnerText = product.Description;
                //StockQuantity.InnerText = product.StockQuantity.ToString();
                //ReviewCount.InnerText = $"({product.ReviewCount} Reviews)";

                // Generate sizes and colors dynamically
                //GenerateSizeOptions(product.Sizes);
                //GenerateColorOptions(product.Colors);

                // Generate rating stars dynamically
                //GenerateRatingStars(product.Rating);
            }
        }

                

        private void GenerateRatingStars(int rating)
        {
            for (int i = 0; i < 5; i++)
            {
                if (i < rating)
                {
                    ProductRating.InnerHtml += "<small class='fas fa-star'></small>";
                }
                else
                {
                    ProductRating.InnerHtml += "<small class='far fa-star'></small>";
                }
            }
        }
    }
}
