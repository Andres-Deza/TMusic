<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="TMusicWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>Bienvenido</p>
            <h2>Inicie Sesión</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Login Area Start ##### -->
    <section class="login-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="login-content">
                        <!-- Login Form -->
                        <div class="login-form">

                            <div class="form-group">
                                <label for="exampleInputEmail1">Correo Electrónico</label>
                                <asp:TextBox ID="txtcorreo" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Correo Electrónico"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcorreo" ErrorMessage="Ingrese correo" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Error en formato de correo" ControlToValidate="txtcorreo" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                <small id="emailHelp" class="form-text text-muted"><i class="fa fa-lock mr-2"></i>Nunca compartiremos su correo electrónico con nadie.</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Contraseña</label>
                                <asp:TextBox ID="txtcontrasenia" runat="server" class="form-control" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcontrasenia" ErrorMessage="Ingrese contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>



                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <div class="form-group">
                                        <asp:Label ID="lbMensaje" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div>
                                        <asp:Label ID="lblRespuesta" runat="server" Text=""></asp:Label>
                                    </div>
                                    <asp:Button ID="btnIniciarSesion" class="btn oneMusic-btn mt-30" runat="server" 
                                        Text="Iniciar Sesion" OnClick="btnIniciarSesion_Click" />

                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                <ProgressTemplate>
                                    <div class=" container">
                                        <h4 class=" jumbotron-fluid text-center">Cargando...</h4>
                                        <p class=" text-center">
                                            <img class="rounded mx-auto d-block" src="https://66.media.tumblr.com/14cd5763575675969c0ed595f8801cba/tumblr_nle4djzliN1swjgcuo1_540.gif" />
                                        </p>
                                    </div>
                                </ProgressTemplate>
                            </asp:UpdateProgress>


                            <div class="container">
                                <asp:HyperLink ID="linkReg" runat="server" NavigateUrl="~/Registrar.aspx" CssClass="btn-link">Si no tienes cuenta registrate aqui!</asp:HyperLink>
                            </div>
                            
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Login Area End ##### -->
</asp:Content>
