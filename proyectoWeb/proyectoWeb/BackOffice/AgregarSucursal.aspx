<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="proyectoWeb.BackOffice.AgregarSucursal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  class="container mp-5 " >
               
                <div id="contactanosFormulario" class="contactanosFormulario">
                    <h1 class="display-4 mb-2 mx-auto text-center">Agregar Sucursal</h1>
                  
                    <div class="form-group col-md-12">
                      <label>Nombre Sucursal</label>
                      <asp:TextBox ID="txtNombre" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-12">
                      <label >Direccion</label>
                        <asp:TextBox ID="txtDireccion" class="form-control"  runat="server"></asp:TextBox>
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
                    
                
                  
                    <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />

                    <div id="mensaje" visible="false" runat="server" class="alert alert-success mt-1" role="alert">
                          Guardado
                    </div>
               </div>
            </div>
</asp:Content>
