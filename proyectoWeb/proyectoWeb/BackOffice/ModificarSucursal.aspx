<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="ModificarSucursal.aspx.cs" Inherits="proyectoWeb.BackOffice.ModificarSucursal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  class="container mp-5 " >
               
            <div id="modificarFormulario" class="modificarFormulario text-justify p-4 m-4 border-top-0"">
                <h1 class="display-4 mb-2 mx-auto text-center">Modificar Sucursal</h1>

                <asp:Label ID="Label1" runat="server" Text="ID Sucursal: "></asp:Label>
                <asp:Label ID="lblID" runat="server" Text=""></asp:Label>

                <br />

                <div class="form-row" >
                    <div class="form-group col-md-8 align-content-center">
                        <label>Nombre Sucursal</label>
                        <asp:TextBox ID="txtNombre" CssClass="form-control"  runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-row" >
                    <div class="form-group col-md-8">
                        <label>Direccion</label>
                        <asp:TextBox ID="txtDireccion" CssClass="form-control"  runat="server"></asp:TextBox>
                    </div>
                </div>
                

                <div class="form-group ">     
                        <label>Estado</label>
                        <asp:DropDownList cssClass="custom-select" runat="server" ID="estadoSeleccionado" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id"  >
                        <asp:ListItem Value="1" Selected="True">Selecciona</asp:ListItem>
                          
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GOGOConnectionString %>" SelectCommand="SELECT * FROM [Estado]"></asp:SqlDataSource>
                    </div>

                    <div class="form-group mb-md-0">
                               
                      <label>Ciudad</label>
                      <asp:DropDownList cssClass="custom-select" runat="server" ID="ciudadSeleccionada" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="id" >
                      <asp:ListItem Value="1" Selected="True">Selecciona</asp:ListItem>
                         
                    </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GOGOConnectionString %>" SelectCommand="SELECT  Ciudad.[id], Ciudad.[nombre] FROM [Ciudad] INNER JOIN [Estado] ON Estado.id = Ciudad.estado_id WHERE ([estado_id] = @estado_id)">
                            <SelectParameters>
                            <asp:ControlParameter ControlID="estadoSeleccionado" Name="estado_id" ConvertEmptyStringToNull="true" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>


               
                 <asp:Button ID="btnGuardar" class="btn btn-primary align-content-center" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />

            </div>
        </div>
</asp:Content>
