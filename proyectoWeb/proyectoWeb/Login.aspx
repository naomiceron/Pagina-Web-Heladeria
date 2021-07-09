<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="proyectoWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="Include/css/styles.css" rel="stylesheet" />
     <link rel="icon" type="image/x-icon" href="Include/images/nieveiconoarriba.png" />
</head>
<body>
  <div class="container-fluid">
  <div class="row no-gutter">
    <div class="d-none d-md-flex col-md-4 col-lg-6 login-bg-image"></div>
    <div class="col-md-8 col-lg-6">
      <div class="login d-flex align-items-center py-5">
        <div class="container">
          <div class="row">
            <div class="col-md-9 col-lg-8 mx-auto">
              <h3 class="login-heading mb-4">Login!</h3>
              <form runat="server">
                <div class="login-form-label-group">
                 
                 <asp:TextBox ID="txtEmail" class="form-control" runat="server"  placeholder="Email" TextMode="Email" required="true"></asp:TextBox>
                
                </div>

                <div class="login-form-label-group">
                    <asp:TextBox ID="txtContrasena" class="form-control" runat="server" TextMode="Password" placeholder="Contrasena"></asp:TextBox>
               
                </div>

                <div class="custom-control custom-checkbox mb-3">
                  <asp:CheckBox ID="chbxRecuerdame" Cssclass="custom-control-input" runat="server" />
                  <label class="custom-control-label" for="customCheck1">Recuerdame</label>
                </div>
                <asp:Button ID="btnIngresar" CssClass ="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" runat="server" Text="Ingresar" OnClick="btnIngresar_Click"/>
                <div id="mensajeError" visible="false" runat="server" class="alert alert-danger mt-1" role="alert">
                                Correo y/o Contrasena Invalida
                </div>
                  <div class="text-center">
                  <a class="small" href="#">Olvidaste Contrasena?</a></div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
