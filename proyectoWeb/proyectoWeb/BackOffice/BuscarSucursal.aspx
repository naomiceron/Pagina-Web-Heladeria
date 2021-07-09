<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="BuscarSucursal.aspx.cs" Inherits="proyectoWeb.BackOffice.BuscarSucursal" %>
<%@ import Namespace="MODELO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="display-4 mb-2 mx-auto text-center">Buscar Sucursal</h1>


    <div class="p-4 m-4 border-top-0">
        <div class="input-group input-group-lg mb-3">
          <div class="input-group-prepend">
            <span class="input-group-text" id="inputGroup-sizing-sm">Buscar</span>
          </div>
            <asp:TextBox runat="server" ID="txtCriterios" CssClass="form-control" aria-label="Medium" aria-describedby="inputGroup-sizing-sm"/>
           
        </div>
            <asp:Button ID="btnBuscar" Text="Buscar" CssClass="btn btn-primary mt-1" runat="server" OnClick="btnBuscar_Click" />

        <div class="mt-3">
            <asp:GridView ID="gvBuscarSucursales" CssClass="table table-bordered dataTable" AutoGenerateColumns="False" runat="server">
                <Columns>
                    <asp:BoundField DataField="nombre" HeaderText="Nombre Sucursal"></asp:BoundField>
                    <asp:BoundField DataField="direccion" HeaderText="Dirección" />
                    
                    <asp:TemplateField HeaderText="Acciones">
                        <ItemTemplate>
                            <asp:LinkButton ID="imgModificar" runat="server" CommandArgument="<%#((Sucursal)(Container.DataItem)).idSucursal %>" OnCommand="imgModificar_Command"><i class="fas fa-edit"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>
            </asp:GridView>
            
        </div>
    </div>
</asp:Content>
