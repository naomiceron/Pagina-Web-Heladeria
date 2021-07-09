<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactanos.aspx.cs" Inherits="proyectoWeb.Contactanos" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>GoGo Co. - Heladerías</title>

        <link rel="icon" type="image/x-icon" href="Include/images/nieveiconoarriba.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" ></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="Include/css/styles.css" rel="stylesheet" />
        <!-- Bootstrap core JS-->
        <script src="Include/js/jquery-3.4.1.min.js"></script>
        <script src="Include/bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>
        <script src="Include/bootstrap-4.4.1-dist/js/bootstrap.bundle.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
       <!-- <script src="assets/mail/contact_me.js"></script>-->
        <!-- Core theme JS-->
        <script src="Include/js/scripts.js"></script>
        <script src="Include/js/Ciudad.js"></script>
        
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top"><img src="Include/images/logo.png" alt="" />GoGo Co.</a><button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu<i class="fas fa-bars ml-1"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="index.aspx#services">Servicios</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="index.aspx#portfolio">Menu</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="index.aspx#about">Nosotros</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="index.aspx#team">Equipo</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="index.aspx#encuentra">Encuentranos</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Contactanos.aspx">Contactanos</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Login.aspx">Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <header class="masthead" id="contactanos">
            <div class="container">
                <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Contáctanos</h2>
                </div>
                <form id="contactForm" name="sentMessage" novalidate="novalidate" runat="server" method="post">
                    <div class="row align-items-stretch mb-3 mt-5">
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Nombre *" data-validation-required-message="Por favor introduzca su nombre."></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtPrimerApellido" runat="server" class="form-control" placeholder="Primer Apellido *" required="required" data-validation-required-message="Por favor introduzca su primer apellido."></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtSegundoApellido" runat="server" class="form-control" placeholder="Segundo Apellido *" required="required" data-validation-required-message="Por favor introduzca su segundo apellido."></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>

                            <div class="form-group mb-md-0">
                                <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Correo Electronico *" data-validation-required-message="Por favor introduzca su correo elecronico." ></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                            
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:TextBox ID="txtTelefono" runat="server" class="form-control" placeholder="Telefono *" data-validation-required-message="Por favor introduzca su telefono." ></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                          

                            <div class="form-group ">     
                        
                                <asp:DropDownList cssClass="custom-select" runat="server" ID="estadoSeleccionado" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id"  >
                                <asp:ListItem Value="1" Selected="True">Selecciona</asp:ListItem>
                          
                                </asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GOGOConnectionString %>" SelectCommand="SELECT * FROM [Estado]"></asp:SqlDataSource>
                            </div>

                            <div class="form-group mb-md-0">
                               

                      <asp:DropDownList cssClass="custom-select" runat="server" ID="ciduadSeleccionada" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="id" >
                            <asp:ListItem Value="1" Selected="True">Selecciona</asp:ListItem>
                         
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GOGOConnectionString %>" SelectCommand="SELECT  Ciudad.[id], Ciudad.[nombre] FROM [Ciudad] INNER JOIN [Estado] ON Estado.id = Ciudad.estado_id WHERE ([estado_id] = @estado_id)">
                            <SelectParameters>
                            <asp:ControlParameter ControlID="estadoSeleccionado" Name="estado_id" ConvertEmptyStringToNull="true" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                            </div>
                            
                        </div>
                        <div class="col-md-4">
                            <div class="form-group form-group-textarea mb-md-0">
                                <asp:TextBox ID="txtMensaje" CssClass="form-control" placeholder="Mensaje *" data-validation-required-message="Por favor introduzca su mensaje." runat="server" TextMode="MultiLine" Height="280px" Width="90%" onkeypress="return this.value.length<=500"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <div id="success">
                          <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />


                            <div id="mensajefinal" visible="false" runat="server" class="alert alert-success mt-1" role="alert">
                                Enviado!
                            </div>

                        </div>
                        
                    </div>
                </form>
            </div>
                
            </div>
        </header>
        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-left">Copyright © GOGO CO. 2020</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a><a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a><a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-instagram"></i></a>
                    </div>
                    <div class="col-lg-4 text-lg-right"><a class="mr-3" href="#!">Privacy Policy</a><a href="#!">Terms of Use</a></div>
                </div>
            </div>
        </footer>
 

    </body>
</html>
