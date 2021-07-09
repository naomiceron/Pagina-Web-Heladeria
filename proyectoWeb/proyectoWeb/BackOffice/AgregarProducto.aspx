<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="AgregarProducto.aspx.cs" Inherits="proyectoWeb.BackOffice.AgregarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div  class="container mp-5 " >
               
                <div id="contactanosFormulario" class="contactanosFormulario">
                    <h1 class="display-4 mb-2 mx-auto text-center">Agregar Producto</h1>
                  
                    <div class="form-group col-md-12">
                      <label>Nombre Producto</label>
                      <asp:TextBox ID="txtNombre" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-12">
                      <label >Tipo</label>
                        <asp:TextBox ID="txtTipo" class="form-control"  runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-12">
                      <label >Descripción</label>
                        <asp:TextBox ID="txtDescripcion" class="form-control"  runat="server" TextMode="MultiLine" Height="280px"></asp:TextBox>
                    </div>
                  
                  
                    
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Precio</label>
                        <asp:TextBox ID="txtPrecio" CssClass="form-control" runat="server" ></asp:TextBox>
                    </div>                 
                    
                
                  
                    <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />

                    <div id="mensaje" visible="false" runat="server" class="alert alert-success mt-1" role="alert">
                          Guardado
                    </div>
               </div>
            </div>     

</asp:Content>
