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
           
            //try
            //{
            //     dynamic product = SC.GetProducts();
            //    dynamic product = SC.GetProducts();
            //    string Display = "";
            //    if (product != null)
            //    {
            //        foreach (Product p in product)
            //        {
            //            Display += "<div class='col-lg-3 col-md-4 col-sm-6 pb-1'>";
            //            Display += "<div class='product-item bg-light mb-4'>";
            //            Display += "<div class='product-img position-relative overflow-hidden'>";
            //            Display += $"<img class='img-fluid w-100' src='{p.Image}' alt='{p.Name}'>";
            //            Display += "<div class='product-action'>";
            //            Display += "<a class='btn btn-outline-dark btn-square' href=''><i class='fa fa-shopping-cart'></i></a>";
            //            Display += "<a class='btn btn-outline-dark btn-square' href=''><i class='far fa-heart'></i></a>";
            //            Display += "<a class='btn btn-outline-dark btn-square' href=''><i class='fa fa-sync-alt'></i></a>";
            //            Display += "<a class='btn btn-outline-dark btn-square' href=''><i class='fa fa-search'></i></a>";
            //            Display += "</div>";
            //            Display += "</div>";
            //            Display += "<div class='text-center py-4'>";
            //            Display += $"<a class='h6 text-decoration-none text-truncate' href='AboutProduct.aspx?ID={p.ProductID}' target='_blank'>{p.Name}</a>";
            //            Display += "<div class='d-flex align-items-center justify-content-center mt-2'>";
            //            Display += $"<h5>R{p.Price}</h5><h6 class='text-muted ml-2'><del>R{p.Price}</del></h6>";
            //            Display += "</div>";
            //            Display += "<div class='d-flex align-items-center justify-content-center mb-1'>";
            //            Display += "<small class='fa fa-star text-primary mr-1'></small>";
            //            Display += "<small class='fa fa-star text-primary mr-1'></small>";
            //            Display += "<small class='fa fa-star text-primary mr-1'></small>";
            //            Display += "<small class='fa fa-star text-primary mr-1'></small>";
            //            Display += "<small class='fa fa-star text-primary mr-1'></small>";
            //            Display += "<small>(99)</small>";
            //            Display += "</div>";
            //            Display += "</div>";
            //            Display += "</div>";
            //            Display += "</div>";
            //        }

            //        DisProd.InnerHtml = Display;
            //    }
            //}
            //catch (Exception ex)
            //{
            //    // Log the exception or show an error message
            //    Response.Write($"An error occurred: {ex.Message}");
            //}
            
        }
    }
}