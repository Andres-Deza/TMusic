<%@ Page Title="" Language="C#" MasterPageFile="~/SesionIniciada.Master" AutoEventWireup="true" CodeBehind="CrearAviso.aspx.cs" Inherits="TMusicWeb.CrearAviso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <h2>Crear Aviso</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->
     <!-- ##### PerfilBanda Area Start ##### -->
    <section class="login-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="login-content">
                        <!-- Perfil Form -->
                        <div class="login-form">
                            
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                            <div class="form-group">
                                <label>Nombre de Producto</label>
                                <asp:TextBox ID="txtnombre" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Producto"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtnombre" runat="server" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:Label ID="lblNombreUsado" runat="server" Text=""></asp:Label>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputMarca">Marca</label>
                                
                                <asp:TextBox ID="txtmarca" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Marca"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtmarca" runat="server" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputDropdownlist">Tipo de aviso</label>
                                <asp:DropDownList ID="ddltipoad" CssClass="form-control" runat="server" Required >
                                </asp:DropDownList>

                            </div>

                            <div class="form-group">
                                <label for="exampleInputDropdownlist">Tipo de producto</label>
                                <asp:DropDownList ID="ddltipoprod" CssClass="form-control" runat="server" Required>
                                </asp:DropDownList>

                            </div>

                                <div class="form-group">
                                    <label for="exampleInputPrecio">Precio</label>
                                    <asp:TextBox ID="txtprecio" runat="server" class="form-control"  placeholder="Precio"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtprecio" runat="server" ErrorMessage="Campo requerido" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtprecio" ValidationExpression="^\d+$" runat="server" ErrorMessage="Ingrese sólo números" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            <div class="form-group">
                                <label for="exampleInputUbicacion">Ubicación</label>
                                <asp:DropDownList ID="ddlRegion" CssClass="form-control" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="ddlRegion" runat="server" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputDescripcion">Descripción</label>
                                <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" runat="server" class="form-control height-200" placeholder="Descripcion"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtDescripcion" runat="server" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            
                                <asp:Label ID="lblAvisoAgregado" runat="server" Text=""></asp:Label>
                            <div>
                                <asp:Button ID="btnCrearAviso" class="btn oneMusic-btn mt-15" runat="server" Text="Guardar Aviso" OnClick="btnCrearAviso_Click" />
                            </div>

                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                <ProgressTemplate>
                                    <div class=" container">
                                        <h4 class=" jumbotron-fluid text-center">Validando Datos...</h4>
                                        <p class=" text-center">
                                            <img class="rounded mx-auto d-block" src="https://66.media.tumblr.com/14cd5763575675969c0ed595f8801cba/tumblr_nle4djzliN1swjgcuo1_540.gif" />
                                        </p>
                                    </div>
                                </ProgressTemplate>
                            </asp:UpdateProgress>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### PerfilBanda Area End ##### -->
</asp:Content>
