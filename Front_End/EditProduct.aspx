<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="Front_End.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Edit Product</title>
    <style>
        #edit-product-area {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        #edit-product-area .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        #edit-product-area .header {
            background: #333;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }
        #edit-product-area .header h1 {
            margin: 0;
        }
        #edit-product-area .form-container {
            background: #fff;
            padding: 20px;
            margin-top: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        #edit-product-area .form-container h2 {
            margin-top: 0;
        }
        #edit-product-area .form-container input[type="text"],
        #edit-product-area .form-container input[type="number"],
        #edit-product-area .form-container input[type="url"],
        #edit-product-area .form-container textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        #edit-product-area .form-container input[type="submit"] {
            background: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }
        #edit-product-area .form-container input[type="submit"]:hover {
            background: #555;
        }
        #edit-product-area .back-link {
            margin-top: 20px;
            display: inline-block;
            text-decoration: none;
            color: #333;
            border: 1px solid #333;
            padding: 10px 20px;
            border-radius: 4px;
            background: #f4f4f4;
        }
        #edit-product-area .back-link:hover {
            background: #ddd;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
  <!-- Breadcrumb Section Begin -->
    <%--<section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Edit Product</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>
    <!-- Breadcrumb Section End -->

    <div id="edit-product-area">
        <div class="container">
            <div class="form-container">
                <h2>Edit Product</h2>

                    <label for="txtProductName">Product Name:</label>
                    <asp:TextBox ID="txtProductName" runat="server" required ="required"></asp:TextBox>

                    <label for="txtCategory">Description:</label>
                    <asp:TextBox ID="txtCategory" runat="server" TextMode="MultiLine" required ="required"></asp:TextBox>

                    <label for="txtDescription">Description:</label>
                    <asp:TextBox ID="txtDescription" runat="server" required ="required"></asp:TextBox>

                    <label for="txtPrice">Price:</label>
                    <asp:TextBox ID="txtPrice" runat="server" required ="required"></asp:TextBox>

                    <label for="txtImageUrl">Image URL:</label>
                    <asp:TextBox ID="txtImageUrl" runat="server" required ="required"></asp:TextBox>

                    <label for="txtStockQuantity">Stock Quantity:</label>
                    <asp:TextBox ID="txtStockQuantity" runat="server" required ="required"></asp:TextBox>

                    <asp:Button ID="btnUpdateProduct" runat="server" Text="Update Product" OnClick="btnUpdateProduct_Click" />
               
            </div>
            <a href="ManageProducts.aspx" class="back-link">Back to Products</a>
        </div>
    </div>
</asp:Content>
