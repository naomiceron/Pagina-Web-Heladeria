<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="proyectoWeb.BackOffice.AgregarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div  class="container mp-5 " >
               
                <div id="contactanosFormulario" class="contactanosFormulario">
                    <h1 class="display-4 mb-2 mx-auto text-center">Agregar Usuario</h1>
                  <div class="form-row" >
                    <div class="form-group col-md-4">
                      <label>Nombre</label>
                      <asp:TextBox ID="txtNombre" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                      <label >Primer Apellido</label>
                        <asp:TextBox ID="txtPrimerApellido" class="form-control"  runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                      <label >Segundo Apellido</label>
                        <asp:TextBox ID="txtSegundoApellido" class="form-control"  runat="server"></asp:TextBox>
                    </div>
                  </div>
                  <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Correo Electronico</label>
                        <asp:TextBox ID="txtCorreoElectronico" CssClass="form-control" placeholder="ejemplo@dominio.com" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Contraseña</label>
                        <asp:TextBox ID="txtContrasena" CssClass="form-control" TextMode="Password"  runat="server" ></asp:TextBox>
                    </div>                 
                    
                </div>
                  <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Telefono</label>
                        <asp:TextBox ID="txtTelefono" CssClass="form-control"  runat="server"></asp:TextBox>
                   </div>
                      <div class="form-group col-md-2">
                          <label for="inputZip">Estado del Usuario</label>
                          <asp:RadioButton ID="rbtnActivo" runat="server" CssClass="form-control" Text="Activo" TextAlign="Right"/>
                          </div>
                  </div>

                    <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />

                    <div id="mensaje" visible="false" runat="server" class="alert alert-success mt-1" role="alert">
                          Guardado
                    </div>
               </div>
            </div>     
    </asp:Content>