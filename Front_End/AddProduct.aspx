<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Front_End.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

       <style>
        #content-area {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        #content-area h2 {
            text-align: center;
        }
        #content-area .form-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        #content-area .form-container label {
            display: block;
            margin: 10px 0 5px;
        }
        #content-area .form-container input[type="text"],
        #content-area .form-container input[type="number"],
        #content-area .form-container input[type="url"],
        #content-area .form-container textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        #content-area .form-container textarea {
            resize: vertical;
        }
        #content-area .form-container input[type="submit"] {
            border-style: none;
               border-color: inherit;
               border-width: medium;
               background-color: #4CAF50;
               color: white;
               padding: 10px 15px;
               text-align: center;
               text-decoration: none;
               display: inline-block;
               font-size: 16px;
               cursor: pointer;
               border-radius: 4px;
               margin-left: 2px;
               margin-right: 2px;
               margin-bottom: 4px;
           }
        #content-area .form-container input[type="submit"]:hover {
            background-color: #45a049;
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
                        <h4>Add Product</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <div id="content-area">
        <div class="form-container">
            <asp:Panel ID="ProductAddContainer" runat="server">
                <h2>Add New Product</h2>

                <asp:Label ID="lblProductName" runat="server" Text="Product Name:" AssociatedControlID="txtProductName"></asp:Label>
                <asp:TextBox ID="txtProductName" runat="server" Required="true"></asp:TextBox>

                <asp:Label ID="LCategory" runat="server" Text="CategoryID:" AssociatedControlID="txtCategoryID"></asp:Label>
                <asp:TextBox ID="txtCategoryID" runat="server" text="[1-8]" Type="number" Required="true"></asp:TextBox>
                
                <asp:Label ID="lblPrice" runat="server" Text="Price:" AssociatedControlID="txtPrice"></asp:Label>
                <asp:TextBox ID="txtPrice" runat="server" Type="decimal" Required="true"></asp:TextBox>
                
                <asp:Label ID="lblImageUrl" runat="server" Text="Image URL:" AssociatedControlID="txtImageUrl"></asp:Label>
                <asp:TextBox ID="txtImageUrl" runat="server" TextMode="Url" Required="true"></asp:TextBox>

                <asp:Label ID="lblDescription" runat="server" Text="Description:" AssociatedControlID="txtDescription"></asp:Label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" Required="true"></asp:TextBox>

                <asp:Label ID="lblStockQuantity" runat="server" Text="Stock Quantity:" AssociatedControlID="txtStockQuantity"></asp:Label>
                <asp:TextBox ID="txtStockQuantity" runat="server" Type="number" Required="true"></asp:TextBox>

                <asp:Button ID="btnAddProduct" runat="server" Text="Add Product" OnClick="btnAddProduct_Click" />
            </asp:Panel>
        </div>
    </div>
</asp:Content>
