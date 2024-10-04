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

            //Discounted
            if(Save == 1)
            {
                try
                {
                    dynamic product = SC.GetProducts();
                    StringBuilder sb = new StringBuilder();
                    if (product != null)
                    {
                        foreach (ProductDTO p in product)
                        {
                            if(p.DiscountedPrice != null)
                            {
                                sb.Append("<div class='col-lg-4 col-md-6 col-sm-6 pb-1'>");
                                sb.Append("<div class='product-item bg-light mb-4'>");
                                sb.Append("<div class='product-img position-relative overflow-hidden'>");
                                sb.Append("<img class='img-fluid w-100' src=" + p.Image + " alt=''>");
                                sb.Append("<div class='product-action'>");
                                sb.Append("<a class='btn btn-outline-dark btn-square' href='Cart.aspx'><i class='fa fa-shopping-cart'></i></a>");
                                sb.Append("<a class='btn btn-outline-dark btn-square' href='Wishlist.aspx'><i class='far fa-heart'></i></a>");
                                sb.Append("</div>");
                                sb.Append("</div>");
                                sb.Append("<div class='text-center py-4'>");
                                sb.Append($"<a class='h6 text-decoration-none text-truncate' href='AboutProduct.aspx?ID={p.ProductID}'>{p.Name}</a>");
                                sb.Append("<div class='d-flex align-items-center justify-content-center mt-2'>");
                                sb.Append($"<a href='AboutProduct.aspx?ID={p.ProductID}' target='_blank' style='text-decoration:none; color:inherit;' " +
                                           "onmouseover=\"this.children[0].style.color='#fd7e14'; this.children[1].style.color='#fd7e14';\" " +
                                           "onmouseout=\"this.children[0].style.color='inherit'; this.children[1].style.color='inherit';\">" +
                                           $"<h5 style='display:inline-block;'>R{p.DiscountedPrice}</h5>" +
                                           $"<h6 class='text-muted ml-2' style='display:inline-block;'><del>R{p.Price}</del></h6></a>");
                                sb.Append("</div>");
                                //sb.Append("<div class='d-flex align-items-center justify-content-center mb-1'>");
                                //sb.Append("<small class='fa fa-star text-primary mr-1'></small>");
                                //sb.Append("<small class='fa fa-star text-primary mr-1'></small>");
                                //sb.Append("<small class='fa fa-star text-primary mr-1'></small>");
                                //sb.Append("<small class='fa fa-star text-primary mr-1'></small>");
                                //sb.Append("<small class='fa fa-star text-primary mr-1'></small>");
                                //sb.Append("<small>(99)</small>");
                                //sb.Append("</div>");
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
                return;
            }


            //Non Discounted
            else if(Save == 2)
            {
                try
                {
                    dynamic product = SC.GetProducts();
                    StringBuilder sb = new StringBuilder();
                    if (product != null)
                    {
                        foreach (ProductDTO p in product)
                        {
                            if(p.DiscountedPrice == null)
                            {
                                sb.Append("<div class='col-lg-4 col-md-6 col-sm-6 pb-1'>");
                                sb.Append("<div class='product-item bg-light mb-4'>");
                                sb.Append("<div class='product-img position-relative overflow-hidden'>");
                                sb.Append("<img class='img-fluid w-100' src=" + p.Image + " alt=''>");
                                sb.Append("<div class='product-action'>");
                                sb.Append("<a class='btn btn-outline-dark btn-square' href='Cart.aspx'><i class='fa fa-shopping-cart'></i></a>");
                                sb.Append("<a class='btn btn-outline-dark btn-square' href='Wishlist.aspx'><i class='far fa-heart'></i></a>");
                                sb.Append("</div>");
                                sb.Append("</div>");
                                sb.Append("<div class='text-center py-4'>");
                                sb.Append($"<a class='h6 text-decoration-none text-truncate' href='AboutProduct.aspx?ID={p.ProductID}'>{p.Name}</a>");
                                sb.Append("<div class='d-flex align-items-center justify-content-center mt-2'>");
                                sb.Append($"<a href='AboutProduct.aspx?ID={p.ProductID}' target='_blank' style='text-decoration:none; color:inherit;' " +
                                           "onmouseover=\"this.children[0].style.color='#fd7e14';\" " +
                                           "onmouseout=\"this.children[0].style.color='inherit';\">" +
                                           $"<h5 style='display:inline-block;'>R{p.Price}</h5></a>");
                                sb.Append("</div>");
                                //sb.Append("<div class='d-flex align-items-center justify-content-center mb-1'>");
                                //sb.Append("<small class='fa fa-star text-primary mr-1'></small>");
                                //sb.Append("<small class='fa fa-star text-primary mr-1'></small>");
                                //sb.Append("<small class='fa fa-star text-primary mr-1'></small>");
                                //sb.Append("<small class='fa fa-star text-primary mr-1'></small>");
                                //sb.Append("<small class='fa fa-star text-primary mr-1'></small>");
                                //sb.Append("<small>(99)</small>");
                                //sb.Append("</div>");
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
}