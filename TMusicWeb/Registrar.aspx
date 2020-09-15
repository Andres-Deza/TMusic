<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="TMusicWeb.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>Bienvenido</p>
            <h2>Registrese</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Register Area Start ##### -->
    <section class="login-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="login-content">
                        <!-- Login Form -->
                        <div class="login-form">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                            <div class="form-group">
                                <label for="exampleInputDropdownlist">Tipo de cuenta</label>
                                <asp:DropDownList ID="ddltipocuenta" CssClass="form-control" runat="server" Required="true">
                                    <asp:ListItem Value="banda">Cuenta banda</asp:ListItem>
                                    <asp:ListItem Value="solista">Cuenta Solista</asp:ListItem>
                                </asp:DropDownList>

                            </div>

                            <div class="form-group">
                                <label>Nombre</label>
                                <asp:TextBox ID="txtnombre" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Nombre"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="txtnombre" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtnombre" ErrorMessage="Ingrese sólo letras" ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>

                            <div class="form-group">
                                <label >Apellido</label>
                                <asp:TextBox ID="txtapellido" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Apellido"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo Requerido" 
                                    ControlToValidate="txtapellido" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                    ControlToValidate="txtapellido" 
                                    ErrorMessage="Ingrese sólo letras" 
                                    ValidationExpression="^[a-zA-Z ]*$" 
                                    Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Correo Electrónico</label>
                                    <asp:TextBox ID="txtcorreo" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Correo Electrónico"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campo Requerido" 
                                        ControlToValidate="txtcorreo" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                        ErrorMessage="Error en formato de correo" 
                                        ControlToValidate="txtcorreo" Display="Dynamic" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                        ForeColor="Red"></asp:RegularExpressionValidator>
                                    <asp:Label ID="lblCorreoUsado" ForeColor="Red"   runat="server" Text=""></asp:Label>
                                </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Contraseña</label>
                                <asp:TextBox ID="txtcontrasenia" runat="server" class="form-control" TextMode="Password" placeholder="Contraseña" OnTextChanged="contrasenia_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="txtcontrasenia" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                             <div class="form-group">
                                <label for="exampleInputPassword1">Confirme contraseña</label>
                                <asp:TextBox ID="txtconfirmcontrasenia" runat="server" class="form-control" TextMode="Password" placeholder="Confirmar Contraseña" OnTextChanged="txtconfirmcontrasenia_TextChanged"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="txtconfirmcontrasenia" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                 <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                     ErrorMessage="Contraseñas no coinciden" 
                                     ControlToValidate="txtconfirmcontrasenia" 
                                     ControlToCompare="txtcontrasenia" 
                                     ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                            </div>
                            
                            
                                        <div class="form-group">
                                            <asp:Label ID="lbMensaje" runat="server" Text=""></asp:Label>
                                        </div>
                                        <div class="cubo">
                                            <asp:Button ID="btnRegistrar" CausesValidation="true"  CssClass="btn oneMusic-btn mt-30" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
                                        </div>
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


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Register Area End ##### -->


</asp:Content>
