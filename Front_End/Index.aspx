<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Front_End.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- Carousel Start -->
    <div class="container-fluid mb-3">
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <div id="header-carousel" class="carousel slide carousel-fade mb-30 mb-lg-0" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <%--<li data-target="#header-carousel" data-slide-to="0" class="active"></li>--%>
                        <%--<li data-target="#header-carousel" data-slide-to="1"></li>
                        <li data-target="#header-carousel" data-slide-to="2"></li>--%>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item position-relative active" style="height: 430px;">
                            <video class="fullscreen-video" style="object-fit: cover;" autoplay muted loop>
                                <source src="vid/BMW_M4.mp4" type="video/mp4">
                                Your browser does not support the video tag.
                            </video>
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Exquisite Parts</h1>
                                    <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Engineered for Excellence, Priced for You!</p>
                                    <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="Shop.aspx?Save=2">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="product-offer mb-30" style="height: 430px;">
                    <img class="img-fluid" src="https://p4.wallpaperbetter.com/wallpaper/121/366/464/air-bel-chevrolet-drag-wallpaper-preview.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Price Slashed Performance</h6>
                        <h3 class="text-white mb-3">Up To 50% Off</h3>
                        <a href="Shop.aspx?Save=1" class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->


   <!-- Featured Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->


    <!-- Categories Start -->
    <div class="container-fluid pt-5">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Categories</span></h2>
        <div class="row px-xl-5 pb-3">
           <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=1">
        <div class="cat-item d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Brakes.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Braking System</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=2">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Suspension_Steering.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Suspension and Steering</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=3">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Interior.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Interior</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=4">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Exterior.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Exterior</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=7">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Wheel_Tire.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Wheel/Rim</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=5">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Engine.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Engine Components</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=6">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Oil_Filter.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Filters</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=8">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Tyre.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Tires</h6>
            </div>
        </div>
    </a>
</div>

    <!-- Categories End -->


    <!-- Products Start -->
    <div class="container-fluid pt-5 pb-3" >
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Featured Products</span></h2>
        <div class="row px-xl-5" id="DisProd" runat="server">
            <%--Dynamically populate featured products--%>
        </div>

       <%-- Go to the shop page--%>
       <a href="Shop.aspx?Save=2"
           style="display: inline-block; padding: 12px 30px; background-color: #f1c40f; color: black; text-align: center; text-decoration: none; border-radius: 25px; border: 2px solid #e1b307; font-size: 18px; font-weight: bold; cursor: pointer; box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); transition: all 0.3s ease; margin: 20px auto; display: block; width: fit-content;"
           onmouseover="this.style.backgroundColor='#e1b307'; this.style.boxShadow='0px 6px 12px rgba(0, 0, 0, 0.3)';"
           onmouseout="this.style.backgroundColor='#f1c40f'; this.style.boxShadow='0px 4px 8px rgba(0, 0, 0, 0.2)';">
           View More
        </a>
    </div>
    <!-- Products End -->


    <!-- Products Start -->
    <div class="container-fluid pt-5 pb-3">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Discounted Products</span></h2>
        <div class="row px-xl-5" id="DiscountProd" runat="server">
            <%--<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://www.autocapeacc.co.za/wp-content/uploads/2021/07/NP2.png" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">License plate holder</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R100.00</h5><h6 class="text-muted ml-2"><del>R100.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://media-www.canadiantire.ca/product/automotive/tires/wheels-and-accessories/2410928/drivestyle-nero-silver-black-17-wheel-cover-a56d6f16-c14a-4ade-a4c4-d143618328c5-jpgrendition.jpg?im=whresize&wid=142&hei=142" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">13" Wheelcover Set</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R410.00</h5><h6 class="text-muted ml-2"><del>R410.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star-half-alt text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://automarket.blob.core.windows.net/articleimagesplus-prod/83a5568f-3027-4d8f-be24-9456491eaab1" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Seat Covers</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R515.00</h5><h6 class="text-muted ml-2"><del>R515.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star-half-alt text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://5.imimg.com/data5/SELLER/Default/2021/11/JU/EZ/PD/108640138/car-wiper-blade-500x500.png" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Windshield Wiper Blades </a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R180.00</h5><h6 class="text-muted ml-2"><del>R180.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://modernautoparts.co.za/cdn/shop/collections/80e2d9bc77a488a027b5357641f764d1_600x600_crop_center.png?v=1636537219" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Rectangle Air filter</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R200.00</h5><h6 class="text-muted ml-2"><del>R200.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://www.autosiliconehoses.com/media/catalog/product/cache/4fa4194b4ab295b8ede1b9d0780f6e28/a/f/aft_s.0004.png" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Cone Air Filter</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R575.00</h5><h6 class="text-muted ml-2"><del>R575.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star-half-alt text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://midas.co.za/media/catalog/product/cache/1c03c6f0ac742252c16095fcf64862c0/t/p/tpru01.png" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Exhaust tip</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R330.00</h5><h6 class="text-muted ml-2"><del>R330.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star-half-alt text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://www.blendswap.com/blend_previews/25494/0/0" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Fan belt</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R90.00</h5><h6 class="text-muted ml-2"><del>R90.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>--%>
        </div>
        <%-- Go to the shop page (Discounted)--%>
       <a href="Shop.aspx?Save=1"
           style="display: inline-block; padding: 12px 30px; background-color: #f1c40f; color: black; text-align: center; text-decoration: none; border-radius: 25px; border: 2px solid #e1b307; font-size: 18px; font-weight: bold; cursor: pointer; box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); transition: all 0.3s ease; margin: 20px auto; display: block; width: fit-content;"
           onmouseover="this.style.backgroundColor='#e1b307'; this.style.boxShadow='0px 6px 12px rgba(0, 0, 0, 0.3)';"
           onmouseout="this.style.backgroundColor='#f1c40f'; this.style.boxShadow='0px 4px 8px rgba(0, 0, 0, 0.2)';">
           View More
        </a>
    </div>
    <!-- Products End -->


    <%--<!-- Vendor Start -->
    <div class="container-fluid py-5">
        <div class="row px-xl-5">
            <div class="col">
                <div class="owl-carousel vendor-carousel">
                    <div class="bg-light p-4">
                        <img src="img/vendor-1.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-2.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-3.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-4.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-5.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-6.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-7.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-8.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Vendor End -->--%>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <!-- Carousel Start -->
    <div class="container-fluid mb-3">
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <div id="header-carousel" class="carousel slide carousel-fade mb-30 mb-lg-0" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <%--<li data-target="#header-carousel" data-slide-to="0" class="active"></li>--%>
                        <%--<li data-target="#header-carousel" data-slide-to="1"></li>
                        <li data-target="#header-carousel" data-slide-to="2"></li>--%>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item position-relative active" style="height: 430px;">
                            <video class="fullscreen-video" style="object-fit: cover;" autoplay muted loop>
                                <source src="vid/BMW_M4.mp4" type="video/mp4">
                                Your browser does not support the video tag.
                            </video>
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Exquisite Parts</h1>
                                    <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Engineered for Excellence, Priced for You!</p>
                                    <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="Shop.aspx?Save=2">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="product-offer mb-30" style="height: 430px;">
                    <img class="img-fluid" src="https://p4.wallpaperbetter.com/wallpaper/121/366/464/air-bel-chevrolet-drag-wallpaper-preview.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Price Slashed Performance</h6>
                        <h3 class="text-white mb-3">Up To 50% Off</h3>
                        <a href="Shop.aspx?Save=1" class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->


   <!-- Featured Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->


    <!-- Categories Start -->
    <div class="container-fluid pt-5">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Categories</span></h2>
        <div class="row px-xl-5 pb-3">
           <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=1">
        <div class="cat-item d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Brakes.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Braking System</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=2">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Suspension_Steering.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Suspension and Steering</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=3">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Interior.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Interior</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=4">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Exterior.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Exterior</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=7">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Wheel_Tire.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Wheel/Rim</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=5">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Engine.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Engine Components</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=6">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Oil_Filter.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Filters</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=8">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Tyre.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Tires</h6>
            </div>
        </div>
    </a>
</div>

    <!-- Categories End -->


    <!-- Products Start -->
    <div class="container-fluid pt-5 pb-3" >
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Featured Products</span></h2>
        <div class="row px-xl-5" id="DisProd2" runat="server">
            <%--Dynamically populate featured products--%>
        </div>

       <%-- Go to the shop page--%>
       <a href="Shop.aspx?Save=2"
           style="display: inline-block; padding: 12px 30px; background-color: #f1c40f; color: black; text-align: center; text-decoration: none; border-radius: 25px; border: 2px solid #e1b307; font-size: 18px; font-weight: bold; cursor: pointer; box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); transition: all 0.3s ease; margin: 20px auto; display: block; width: fit-content;"
           onmouseover="this.style.backgroundColor='#e1b307'; this.style.boxShadow='0px 6px 12px rgba(0, 0, 0, 0.3)';"
           onmouseout="this.style.backgroundColor='#f1c40f'; this.style.boxShadow='0px 4px 8px rgba(0, 0, 0, 0.2)';">
           View More
        </a>
    </div>
    <!-- Products End -->


    <!-- Products Start -->
    <div class="container-fluid pt-5 pb-3">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Discounted Products</span></h2>
        <div class="row px-xl-5" id="DiscountProd2" runat="server">
            <%--<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://www.autocapeacc.co.za/wp-content/uploads/2021/07/NP2.png" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">License plate holder</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R100.00</h5><h6 class="text-muted ml-2"><del>R100.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://media-www.canadiantire.ca/product/automotive/tires/wheels-and-accessories/2410928/drivestyle-nero-silver-black-17-wheel-cover-a56d6f16-c14a-4ade-a4c4-d143618328c5-jpgrendition.jpg?im=whresize&wid=142&hei=142" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">13" Wheelcover Set</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R410.00</h5><h6 class="text-muted ml-2"><del>R410.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star-half-alt text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://automarket.blob.core.windows.net/articleimagesplus-prod/83a5568f-3027-4d8f-be24-9456491eaab1" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Seat Covers</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R515.00</h5><h6 class="text-muted ml-2"><del>R515.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star-half-alt text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://5.imimg.com/data5/SELLER/Default/2021/11/JU/EZ/PD/108640138/car-wiper-blade-500x500.png" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Windshield Wiper Blades </a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R180.00</h5><h6 class="text-muted ml-2"><del>R180.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://modernautoparts.co.za/cdn/shop/collections/80e2d9bc77a488a027b5357641f764d1_600x600_crop_center.png?v=1636537219" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Rectangle Air filter</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R200.00</h5><h6 class="text-muted ml-2"><del>R200.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://www.autosiliconehoses.com/media/catalog/product/cache/4fa4194b4ab295b8ede1b9d0780f6e28/a/f/aft_s.0004.png" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Cone Air Filter</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R575.00</h5><h6 class="text-muted ml-2"><del>R575.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star-half-alt text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://midas.co.za/media/catalog/product/cache/1c03c6f0ac742252c16095fcf64862c0/t/p/tpru01.png" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Exhaust tip</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R330.00</h5><h6 class="text-muted ml-2"><del>R330.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star-half-alt text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://www.blendswap.com/blend_previews/25494/0/0" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Fan belt</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R90.00</h5><h6 class="text-muted ml-2"><del>R90.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>--%>
        </div>
        <%-- Go to the shop page (Discounted)--%>
       <a href="Shop.aspx?Save=1"
           style="display: inline-block; padding: 12px 30px; background-color: #f1c40f; color: black; text-align: center; text-decoration: none; border-radius: 25px; border: 2px solid #e1b307; font-size: 18px; font-weight: bold; cursor: pointer; box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); transition: all 0.3s ease; margin: 20px auto; display: block; width: fit-content;"
           onmouseover="this.style.backgroundColor='#e1b307'; this.style.boxShadow='0px 6px 12px rgba(0, 0, 0, 0.3)';"
           onmouseout="this.style.backgroundColor='#f1c40f'; this.style.boxShadow='0px 4px 8px rgba(0, 0, 0, 0.2)';">
           View More
        </a>
    </div>
    <!-- Products End -->


    <%--<!-- Vendor Start -->
    <div class="container-fluid py-5">
        <div class="row px-xl-5">
            <div class="col">
                <div class="owl-carousel vendor-carousel">
                    <div class="bg-light p-4">
                        <img src="img/vendor-1.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-2.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-3.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-4.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-5.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-6.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-7.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-8.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Vendor End -->--%>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
      <!-- Carousel Start -->
    <div class="container-fluid mb-3">
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <div id="header-carousel" class="carousel slide carousel-fade mb-30 mb-lg-0" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <%--<li data-target="#header-carousel" data-slide-to="0" class="active"></li>--%>
                        <%--<li data-target="#header-carousel" data-slide-to="1"></li>
                        <li data-target="#header-carousel" data-slide-to="2"></li>--%>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item position-relative active" style="height: 430px;">
                            <video class="fullscreen-video" style="object-fit: cover;" autoplay muted loop>
                                <source src="vid/BMW_M4.mp4" type="video/mp4">
                                Your browser does not support the video tag.
                            </video>
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Exquisite Parts</h1>
                                    <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Engineered for Excellence, Priced for You!</p>
                                    <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="Shop.aspx?Save=2">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="product-offer mb-30" style="height: 430px;">
                    <img class="img-fluid" src="https://p4.wallpaperbetter.com/wallpaper/121/366/464/air-bel-chevrolet-drag-wallpaper-preview.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Price Slashed Performance</h6>
                        <h3 class="text-white mb-3">Up To 50% Off</h3>
                        <a href="Shop.aspx?Save=1" class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->


   <!-- Featured Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->


    <!-- Categories Start -->
    <div class="container-fluid pt-5">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Categories</span></h2>
        <div class="row px-xl-5 pb-3">
           <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=1">
        <div class="cat-item d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Brakes.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Braking System</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=2">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Suspension_Steering.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Suspension and Steering</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=3">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Interior.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Interior</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=4">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Exterior.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Exterior</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=7">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Wheel_Tire.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Wheel/Rim</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=5">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Engine.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Engine Components</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=6">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Oil_Filter.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Filters</h6>
            </div>
        </div>
    </a>
</div>
<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="Shop.aspx?Category=8">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="img/Tyre.png" alt="">
            </div>
            <div class="flex-fill pl-3">
                <h6>Tires</h6>
            </div>
        </div>
    </a>
</div>

    <!-- Categories End -->


    <!-- Products Start -->
    <div class="container-fluid pt-5 pb-3" >
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Featured Products</span></h2>
        <div class="row px-xl-5" id="DisProd3" runat="server">
            <%--Dynamically populate featured products--%>
        </div>

       <%-- Go to the shop page--%>
       <a href="Shop.aspx?Save=2"
           style="display: inline-block; padding: 12px 30px; background-color: #f1c40f; color: black; text-align: center; text-decoration: none; border-radius: 25px; border: 2px solid #e1b307; font-size: 18px; font-weight: bold; cursor: pointer; box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); transition: all 0.3s ease; margin: 20px auto; display: block; width: fit-content;"
           onmouseover="this.style.backgroundColor='#e1b307'; this.style.boxShadow='0px 6px 12px rgba(0, 0, 0, 0.3)';"
           onmouseout="this.style.backgroundColor='#f1c40f'; this.style.boxShadow='0px 4px 8px rgba(0, 0, 0, 0.2)';">
           View More
        </a>
    </div>
    <!-- Products End -->


    <!-- Products Start -->
    <div class="container-fluid pt-5 pb-3">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Discounted Products</span></h2>
        <div class="row px-xl-5" id="DiscountProd3" runat="server">
            <%--<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://www.autocapeacc.co.za/wp-content/uploads/2021/07/NP2.png" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">License plate holder</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R100.00</h5><h6 class="text-muted ml-2"><del>R100.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://media-www.canadiantire.ca/product/automotive/tires/wheels-and-accessories/2410928/drivestyle-nero-silver-black-17-wheel-cover-a56d6f16-c14a-4ade-a4c4-d143618328c5-jpgrendition.jpg?im=whresize&wid=142&hei=142" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">13" Wheelcover Set</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R410.00</h5><h6 class="text-muted ml-2"><del>R410.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star-half-alt text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://automarket.blob.core.windows.net/articleimagesplus-prod/83a5568f-3027-4d8f-be24-9456491eaab1" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Seat Covers</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R515.00</h5><h6 class="text-muted ml-2"><del>R515.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star-half-alt text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://5.imimg.com/data5/SELLER/Default/2021/11/JU/EZ/PD/108640138/car-wiper-blade-500x500.png" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Windshield Wiper Blades </a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R180.00</h5><h6 class="text-muted ml-2"><del>R180.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://modernautoparts.co.za/cdn/shop/collections/80e2d9bc77a488a027b5357641f764d1_600x600_crop_center.png?v=1636537219" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Rectangle Air filter</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R200.00</h5><h6 class="text-muted ml-2"><del>R200.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://www.autosiliconehoses.com/media/catalog/product/cache/4fa4194b4ab295b8ede1b9d0780f6e28/a/f/aft_s.0004.png" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Cone Air Filter</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R575.00</h5><h6 class="text-muted ml-2"><del>R575.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star-half-alt text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://midas.co.za/media/catalog/product/cache/1c03c6f0ac742252c16095fcf64862c0/t/p/tpru01.png" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Exhaust tip</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R330.00</h5><h6 class="text-muted ml-2"><del>R330.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star-half-alt text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="https://www.blendswap.com/blend_previews/25494/0/0" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Fan belt</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>R90.00</h5><h6 class="text-muted ml-2"><del>R90.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small class="far fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>--%>
        </div>
        <%-- Go to the shop page (Discounted)--%>
       <a href="Shop.aspx?Save=1"
           style="display: inline-block; padding: 12px 30px; background-color: #f1c40f; color: black; text-align: center; text-decoration: none; border-radius: 25px; border: 2px solid #e1b307; font-size: 18px; font-weight: bold; cursor: pointer; box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); transition: all 0.3s ease; margin: 20px auto; display: block; width: fit-content;"
           onmouseover="this.style.backgroundColor='#e1b307'; this.style.boxShadow='0px 6px 12px rgba(0, 0, 0, 0.3)';"
           onmouseout="this.style.backgroundColor='#f1c40f'; this.style.boxShadow='0px 4px 8px rgba(0, 0, 0, 0.2)';">
           View More
        </a>
    </div>
    <!-- Products End -->


    <%--<!-- Vendor Start -->
    <div class="container-fluid py-5">
        <div class="row px-xl-5">
            <div class="col">
                <div class="owl-carousel vendor-carousel">
                    <div class="bg-light p-4">
                        <img src="img/vendor-1.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-2.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-3.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-4.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-5.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-6.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-7.jpg" alt="">
                    </div>
                    <div class="bg-light p-4">
                        <img src="img/vendor-8.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Vendor End -->--%>
</asp:Content>
