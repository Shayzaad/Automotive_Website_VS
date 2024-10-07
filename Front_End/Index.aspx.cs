using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Front_End.ServiceReference1;


namespace Front_End
{
    public partial class Index : System.Web.UI.Page
    {
        Service1Client SC = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                dynamic product = SC.GetProducts();
                string Display = "";
                if (product != null)
                {
                    int Counter = 0;
                    foreach (ProductDTO p in product)
                    {
                        if(p.DiscountedPrice == null)
                        {
                            if (Counter == 4)
                            {
                                break;
                            }
                            Counter++;
                            Display += "<div class='col-lg-3 col-md-4 col-sm-6 pb-1'>";
                            Display += "<div class='product-item bg-light mb-4'>";
                            Display += "<div class='product-img position-relative overflow-hidden'>";
                            Display += $"<img class='img-fluid w-100' src='{p.Image}' alt='{p.Name}'>";
                            Display += "<div class='product-action'>";
                            Display += "<a class='btn btn-outline-dark btn-square' href='Cart.aspx?AddToCart=" + p.ProductID + "'><i class='fa fa-shopping-cart'></i></a>";
                            Display += "<a class='btn btn-outline-dark btn-square' href='Wishlist.aspx'><i class='far fa-heart'></i></a>";
                            Display += "</div>";
                            Display += "</div>";
                            Display += "<div class='text-center py-4'>";
                            Display += $"<a class='h6 text-decoration-none text-truncate' href='AboutProduct.aspx?ID={p.ProductID}' target='_blank'>{p.Name}</a>";
                            Display += "<div class='d-flex align-items-center justify-content-center mt-2'>";
                            
                            Display += $"<a href='AboutProduct.aspx?ID={p.ProductID}' target='_blank' style='text-decoration:none;color:inherit;' " +
                                        "onmouseover=\"this.children[0].style.color='#fd7e14';\" " +
                                        "onmouseout=\"this.children[0].style.color='inherit';\">" +
                                        $"<h5 style='display:inline-block;'>R{p.Price}</h5></a>";
                            

                            Display += "</div>";
                            Display += "<div class='d-flex align-items-center justify-content-center mb-1'>";
                            //Display += "<small class='fa fa-star text-primary mr-1'></small>";
                            //Display += "<small class='fa fa-star text-primary mr-1'></small>";
                            //Display += "<small class='fa fa-star text-primary mr-1'></small>";
                            //Display += "<small class='fa fa-star text-primary mr-1'></small>";
                            //Display += "<small class='fa fa-star text-primary mr-1'></small>";
                            //Display += "<small>(99)</small>";
                            Display += "</div>";
                            Display += "</div>";
                            Display += "</div>";
                            Display += "</div>";
                        }
                    }

                    DisProd.InnerHtml = Display;
                    DisProd2.InnerHtml = Display;
                    DisProd3.InnerHtml = Display;
                }
            }
            catch (Exception ex)
            {
                // Log the exception or show an error message
                Response.Write($"An error occurred: {ex.Message}");
            }

            //Discounted Prods
            try
            {
                dynamic product = SC.GetProducts();
                string DisplayDis = "";
                if (product != null)
                {
                    int Counter = 0;
                    foreach (ProductDTO p in product)
                    {
                        if(p.DiscountedPrice != null)
                        {
                            if (Counter == 4)
                            {
                                break;
                            }
                            Counter++;
                            DisplayDis += "<div class='col-lg-3 col-md-4 col-sm-6 pb-1'>";
                            DisplayDis += "<div class='product-item bg-light mb-4'>";
                            DisplayDis += "<div class='product-img position-relative overflow-hidden'>";
                            DisplayDis += $"<img class='img-fluid w-100' src='{p.Image}' alt='{p.Name}'>";
                            DisplayDis += "<div class='product-action'>";
                            DisplayDis += "<a class='btn btn-outline-dark btn-square' href='Cart.aspx?AddToCart=" + p.ProductID + "'><i class='fa fa-shopping-cart'></i></a>";
                            DisplayDis += "<a class='btn btn-outline-dark btn-square' href='Wishlist.aspx'><i class='far fa-heart'></i></a>";
                            DisplayDis += "</div>";
                            DisplayDis += "</div>";
                            DisplayDis += "<div class='text-center py-4'>";
                            DisplayDis += $"<a class='h6 text-decoration-none text-truncate' href='AboutProduct.aspx?ID={p.ProductID}' target='_blank'>{p.Name}</a>";
                            DisplayDis += "<div class='d-flex align-items-center justify-content-center mt-2'>";
                            
                            DisplayDis += $"<a href='AboutProduct.aspx?ID={p.ProductID}' target='_blank' style='text-decoration:none;color:inherit;' " +
                            "onmouseover=\"this.children[0].style.color='#fd7e14'; this.children[1].style.color='#fd7e14';\" " +
                            "onmouseout=\"this.children[0].style.color='inherit'; this.children[1].style.color='inherit';\">" +
                            $"<h5 style='display:inline-block;'>R{p.DiscountedPrice}</h5>" +
                            $"<h6 class='text-muted ml-2' style='display:inline-block;'><del>R{p.Price}</del></h6></a>";
                        

                            DisplayDis += "</div>";
                            DisplayDis += "<div class='d-flex align-items-center justify-content-center mb-1'>";
                            //Display += "<small class='fa fa-star text-primary mr-1'></small>";
                            //Display += "<small class='fa fa-star text-primary mr-1'></small>";
                            //Display += "<small class='fa fa-star text-primary mr-1'></small>";
                            //Display += "<small class='fa fa-star text-primary mr-1'></small>";
                            //Display += "<small class='fa fa-star text-primary mr-1'></small>";
                            //Display += "<small>(99)</small>";
                            DisplayDis += "</div>";
                            DisplayDis += "</div>";
                            DisplayDis += "</div>";
                            DisplayDis += "</div>";
                        }
                    }

                    DiscountProd.InnerHtml = DisplayDis.ToString();
                    DiscountProd2.InnerHtml = DisplayDis.ToString();
                    DiscountProd3.InnerHtml = DisplayDis.ToString();
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