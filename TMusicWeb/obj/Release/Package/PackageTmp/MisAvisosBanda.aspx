<%@ Page Title="" Language="C#" MasterPageFile="~/SesionIniciada.Master" AutoEventWireup="true" CodeBehind="MisAvisosBanda.aspx.cs" Inherits="TMusicWeb.MisAvisosBanda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>Bienvenido</p>
            <h2>Mis avisos</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->
    <!-- ##### Buy Now Area Start ##### -->
    <section class="oneMusic-buy-now-area has-fluid bg-gray section-padding-100">
        <div class="container-fluid">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <asp:Label ID="lblBuscar" runat="server" Text="Ingrese id para editar" ></asp:Label>
            <asp:TextBox ID="txtBuscar" runat="server" placeholder="Ingrese ID" MaxLength="6"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBuscar" ForeColor="Red" Display="Dynamic" ErrorMessage="Ingresar ID"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtBuscar" ValidationExpression="^\d+$" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="Ingrese sólo números"></asp:RegularExpressionValidator>
            <asp:Button ID="btneditar" runat="server" Text="Editar" OnClick="btneditar_Click" />
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>

                    <img class="rounded mx-auto d-block" src="https://cdn.discordapp.com/attachments/695279191222124565/722280139861393449/ajax-loader_1.gif" />

                </ProgressTemplate>
            </asp:UpdateProgress>
            <asp:Label ID="lblMsj" runat="server" Text=""></asp:Label>
            <asp:GridView CssClass="table-responsive" ID="grdMisavisos" runat="server"></asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
        </div>
            
    </section>
    <!-- ##### Buy Now Area End ##### -->
</asp:Content>
