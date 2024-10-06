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
                if (Request.QueryString["ID"] != null)
                {
                    int productId = int.Parse(Request.QueryString["ID"]);
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
                // Map Product to ProductDTO
                ProductDTO productDTO = new ProductDTO
                {
                    ProductID = product.ProductID,
                    CategoryID = product.CategoryID,
                    Name = product.Name,
                    Image = product.Image,
                    Price = product.Price,
                    DiscountedPrice = product.DiscountedPrice,
                    Description = product.Description,
                    Rating = product.Rating,
                    StockQuantity = product.StockQuantity
                };

                ProductImage.Src = productDTO.Image;
                ProductName.InnerText = productDTO.Name;
                ProductPrice.InnerText = $"Price: R{productDTO.Price}";
                DiscountedPrice.InnerText = productDTO.DiscountedPrice != null
                    ? $"Discounted Price: R{productDTO.DiscountedPrice}"
                    : "";
                ProductDescription.InnerText = productDTO.Description;
                StockQuantity.InnerText = productDTO.StockQuantity.ToString();
            }
        }

    }
}
