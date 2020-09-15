<%@ Page Title="" Language="C#" MasterPageFile="~/MaestraAdmin.Master" AutoEventWireup="true" CodeBehind="AdminBandas.aspx.cs" Inherits="TMusicWeb.AdminBandas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>Bienvenido</p>
            <h2>Administrar Bandas</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <<!-- ##### Buy Now Area Start ##### -->
    <section class="oneMusic-buy-now-area has-fluid bg-gray section-padding-100">
        <div class="container-fluid">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lblBuscar" runat="server" Text="Ingrese id para eliminar"></asp:Label>
                    <asp:TextBox ID="txtBuscar" runat="server" placeholder="Ingrese ID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBuscar" ErrorMessage="Ingrese ID" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtBuscar" ValidationExpression="^\d+$" runat="server" ErrorMessage="Formato de ID erróneo" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />


                    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                        <ProgressTemplate>

                            <img class="rounded mx-auto d-block" src="https://cdn.discordapp.com/attachments/695279191222124565/722280139861393449/ajax-loader_1.gif" />

                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <p>
                        <asp:Label ID="lblNoEncontrado" runat="server" Text=""></asp:Label>
                    </p>


                    <asp:GridView CssClass="table-responsive" ID="grdBandas" runat="server"></asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>

    </section>
    <!-- ##### Buy Now Area End ##### -->


</asp:Content>
