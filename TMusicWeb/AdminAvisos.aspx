<%@ Page Title="" Language="C#" MasterPageFile="~/MaestraAdmin.Master" AutoEventWireup="true" CodeBehind="AdminAvisos.aspx.cs" Inherits="TMusicWeb.AdminAvisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>Bienvenido</p>
            <h2>Administrar Avisos</h2>
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
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtBuscar" 
                        ValidationExpression="^\d+$"
                        ErrorMessage="Formato de ID erróneo" 
                        ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />

                    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                        <ProgressTemplate>

                            <img class="rounded mx-auto d-block" src="https://cdn.discordapp.com/attachments/695279191222124565/722280139861393449/ajax-loader_1.gif" />

                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <p>
                        <asp:Label ID="lblNoEncontrado" runat="server" Text=""></asp:Label>
                    </p>


                    <asp:GridView  ID="grdProductos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="42px" Width="694px">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>

    </section>
    <!-- ##### Buy Now Area End ##### -->


</asp:Content>
