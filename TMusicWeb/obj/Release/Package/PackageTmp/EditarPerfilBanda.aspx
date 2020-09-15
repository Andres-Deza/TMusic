<%@ Page Title="" Language="C#" MasterPageFile="~/SesionIniciada.Master" AutoEventWireup="true" CodeBehind="EditarPerfilBanda.aspx.cs" Inherits="TMusicWeb.EditarPerfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>Bienvenido</p>
            <h2>Perfil Banda</h2>
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
                                <label>Nombre de Banda</label>
                                <asp:TextBox ID="txtnombre" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Nombre"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtnombre" runat="server" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:Label ID="lblNombreUsado" runat="server" Text=""></asp:Label>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputUbicacion">Ubicación</label>
                                <asp:DropDownList ID="ddlRegion" CssClass="form-control" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="ddlRegion" runat="server" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEstilo">Estilo</label>
                                <asp:DropDownList ID="ddlEstilo" runat="server" CssClass="form-control"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="ddlEstilo" runat="server" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputInfluencia">Influencia</label>
                                <asp:TextBox ID="txtinfluencia" runat="server" class="form-control"  placeholder="Influencia"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtinfluencia" runat="server" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputDescripcion">Descripción</label>
                                <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" runat="server" class="form-control height-200" placeholder="Descripcion"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtDescripcion" runat="server" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            
                                <asp:Label ID="lblPerfilCreado" runat="server" Text=""></asp:Label>
                            <div>
                                <asp:Button ID="btnEditarPerfil" class="btn oneMusic-btn mt-15" runat="server" Text="Editar Perfil" OnClick="btnEditarPerfil_Click"  />
                            </div>

                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                <ProgressTemplate>
                                    <div class=" container">
                                        <h1 class=" jumbotron-fluid text-center">Cargando...</h1>
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
