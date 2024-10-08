<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Invoices.aspx.cs" Inherits="Front_End.Invoices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #invoiceContainer {
            margin-top: 20px;
        }

        .invoice-item {
            border: 1px solid #ddd;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
        }

        .invoice-item h3 {
            margin: 0;
            font-size: 1.2em;
        }

        .invoice-item p {
            margin: 5px 0;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Invoices</h4>
                        </div>
                    </div>
                </div>
            </div>
    </section>
    <%--<!-- Breadcrumb Section End -->--%>

        <div class="container">
        <div id="invoiceContainer" runat="server">
            <!-- Invoice items will be dynamically inserted here -->
        </div>
        </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
