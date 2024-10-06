<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AboutProduct.aspx.cs" Inherits="Front_End.AboutProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Product Details</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid py-5">
        <div class="row px-xl-5">
            <div class="col-lg-5 pb-5">
                <img class="img-fluid w-100" id="ProductImage" runat="server" alt="Product Image"/>
            </div>
            <div class="row px-xl-5" id="DisProd" runat="server">
                <%--Dynamically populate featured products--%>
            </div>
            <div class="col-lg-7 pb-5">
                <h3 id="ProductName" runat="server"></h3>
                <h4 class="font-weight-semi-bold mb-4" id="ProductPrice" runat="server"></h4>
                <h5 class="font-weight-semi-bold mb-4" id="DiscountedPrice" runat="server"></h5>
                <p id="ProductDescription" runat="server"></p>
                <div class="d-flex align-items-center mb-4 pt-2">
                    <h5>Stock Quantity: <span id="StockQuantity" runat="server"></span></h5>
                </div>
                <div class="d-flex align-items-center mb-4 pt-2">
                    <div class="input-group quantity mr-3" style="width: 130px;">
                        <div class="input-group-btn">
                            <button class="btn btn-primary btn-minus">
                                <i class="fa fa-minus"></i>
                            </button>
                        </div>
                        <input type="text" class="form-control bg-secondary border-0 text-center" value="1" id="QuantityInput" runat="server">
                        <div class="input-group-btn">
                            <button class="btn btn-primary btn-plus">
                                <i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>
                    <button class="btn btn-primary px-3" id="AddToCartButton" runat="server">
                        <i class="fa fa-shopping-cart mr-1"></i> Add To Cart
                    </button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
