<%@ Page Title="" Language="C#" MasterPageFile="~/SesionIniciada.Master" AutoEventWireup="true" CodeBehind="MarketBand.aspx.cs" Inherits="TMusicWeb.MarketBand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>Bienvenido</p>
            <h2>Market Band</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->
    <!-- ##### Buy Now Area Start ##### -->
    <section class="oneMusic-buy-now-area has-fluid bg-gray section-padding-100">
        <div class="container-fluid">
            <asp:GridView CssClass="table-responsive" ID="grdProductos" runat="server"></asp:GridView>
        
        </div>
            
    </section>
    <!-- ##### Buy Now Area End ##### -->

</asp:Content>
