<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="ModificarUsuario.aspx.cs" Inherits="proyectoWeb.BackOffice.ModificarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div  class="container mp-5 " >
               
            <div id="modificarFormulario" class="modificarFormulario text-justify p-4 m-4 border-top-0"">
                <h1 class="display-4 mb-2 mx-auto text-center">Modificar Usuario</h1>

                <asp:Label ID="Label1" runat="server" Text="ID Usuario: "></asp:Label>
                <asp:Label ID="lblID" runat="server" Text=""></asp:Label>
                

                

                <br />
                

                

                <div class="form-row" >
                    <div class="form-group col-md-8 align-content-center">
                        <label>Nombre</label>
                        <asp:TextBox ID="txtNombre" CssClass="form-control"  runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-row" >
                    <div class="form-group col-md-8">
                        <label>Primer Apellido</label>
                        <asp:TextBox ID="txtPrimerApellido" CssClass="form-control"  runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-row" >
                    <div class="form-group col-md-8">
                        <label>Segundo Apellido</label>
                        <asp:TextBox ID="txtSegundoApellido" CssClass="form-control"  runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Correo Electronico</label>
                        <asp:TextBox ID="txtCorreoElectronico" CssClass="form-control"  runat="server"></asp:TextBox>
                    </div>               
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Telefono</label>
                        <asp:TextBox ID="txtTelefono" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>                 
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblContrasena" runat="server" Text="Contraseña" Visible="false"></asp:Label>
                       
                        <asp:TextBox ID="txtContrasena" CssClass="form-control" runat="server" Visible="false"></asp:TextBox>
                    </div>
                </div> 
                 <asp:Button ID="btnGuardar" class="btn btn-primary align-content-center" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />

            </div>
        </div>
</asp:Content>
