using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Front_End.ServiceReference1;

namespace Front_End
{
    public partial class Shop : System.Web.UI.Page
    {
        Service1Client SC = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {
            int Save = Convert.ToInt32(Request.QueryString["Save"].ToString());

            // Discounted
            if (Save == 1)
            {
                LoadProducts(true);
                return;
            }

            // Non Discounted
            else if (Save == 2)
            {
                LoadProducts(false);
            }
        }

        private void LoadProducts(bool isDiscounted)
        {
            try
            {
                dynamic product = SC.GetProducts();
                StringBuilder sb = new StringBuilder();
                if (product != null)
                {
                    foreach (ProductDTO p in product)
                    {
                        if ((isDiscounted && p.DiscountedPrice != null) || (!isDiscounted && p.DiscountedPrice == null))
                        {
                            sb.Append("<div class='col-lg-4 col-md-6 col-sm-6 pb-1'>");
                            sb.Append("<div class='product-item bg-light mb-4'>");
                            sb.Append("<div class='product-img position-relative overflow-hidden'>");
                            sb.Append($"<a href='AboutProduct.aspx?ID={p.ProductID}'><img class='img-fluid w-100' src='{p.Image}' alt=''></a>");
                            sb.Append("<div class='product-action'>");
                            sb.Append("<a class='btn btn-outline-dark btn-square' href=''><i class='fa fa-shopping-cart'></i></a>");
                            sb.Append("<a class='btn btn-outline-dark btn-square' href=''><i class='far fa-heart'></i></a>");
                            sb.Append("</div>");
                            sb.Append("</div>");
                            sb.Append("<div class='text-center py-4'>");
                            sb.Append($"<a class='h6 text-decoration-none text-truncate' href='AboutProduct.aspx?ID={p.ProductID}'>{p.Name}</a>");
                            sb.Append("<div class='d-flex align-items-center justify-content-center mt-2'>");
                            if (p.DiscountedPrice != null)
                            {
                                sb.Append($"<h5>R{p.DiscountedPrice}</h5><h6 class='text-muted ml-2'><del>R{p.Price}</del></h6>");
                            }
                            else
                            {
                                sb.Append($"<h5>R{p.Price}</h5>");
                            }
                            sb.Append("</div>");
                            sb.Append("</div>");
                            sb.Append("</div>");
                            sb.Append("</div>");
                        }
                    }
                    Prods.InnerHtml = sb.ToString();
                }
            }
            catch (Exception ex)
            {
                // Log the exception or show an error message
                Response.Write($"An error occurred: {ex.Message}");
            }
        }

    }
}
