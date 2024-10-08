<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="Front_End.ManageProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Manage Products</title>
    <style>
      #manage-products-area {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        #manage-products-area .header h2 {
            margin: 0;
            color: #333;
        }

        #manage-products-area .product-item {
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            margin-bottom: 20px;
            text-align: center;
            background-color: #fff;
        }

        #manage-products-area .product-item img {
            max-width: 100px;
            height: auto;
            border-radius: 5px;
        }

        #manage-products-area .product-item h6 {
            margin: 10px 0 5px;
            color: #333;
        }

        #manage-products-area .product-item h5 {
            margin: 5px 0;
            color: #007bff;
        }

        #manage-products-area .product-item a {
            display: inline-block;
            margin: 5px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        #manage-products-area .product-item a:hover {
            text-decoration: underline;
        }

        #manage-products-area .btn-add {
            display: block;
            width: 150px;
            margin: 20px auto;
            padding: 10px;
            text-align: center;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            text-decoration: none;
        }

        #manage-products-area .btn-add:hover {
            background-color: #0056b3;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

     <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Manage Products</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%--<!-- Breadcrumb Section End -->--%>

   <div id="manage-products-area">
        <div class="container">
            <div id="productContainer" runat="server"></div>
            <asp:Button ID="btnAddProduct" runat="server" Text="Add New Product" CssClass="btn-add" OnClick="btnAddProduct_Click" />
        </div>
    </div>
</asp:Content>
