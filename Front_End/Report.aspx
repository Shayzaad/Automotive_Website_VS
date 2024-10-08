<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Front_End.Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Reports Section Start -->
    <div class="container-fluid pt-5">
        <h5 class="section-title position-relative text-uppercase mb-3">
            <span class="bg-secondary pr-3">Reports</span>
        </h5>
        <iframe title="Reports" width="1140" height="541.25" src="https://app.powerbi.com/reportEmbed?reportId=b9205f0b-863a-4c9f-b096-6bdfe79994c9&autoAuth=true&ctid=d8bf7c18-5725-4b9e-b118-13388f52e44e" frameborder="0" allowFullScreen="true"></iframe>
    </div>
    <!-- Reports Section End -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
    