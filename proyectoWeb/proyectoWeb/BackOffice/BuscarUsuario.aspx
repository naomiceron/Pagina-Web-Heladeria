<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="BuscarUsuario.aspx.cs" Inherits="proyectoWeb.BackOffice.BuscarUsuario" %>
<%@ import Namespace="MODELO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h1 class="display-4 mb-2 mx-auto text-center">Buscar Usuario</h1>


    <div class="p-4 m-4 border-top-0">
        <div class="input-group input-group-lg mb-3">
          <div class="input-group-prepend">
            <span class="input-group-text" id="inputGroup-sizing-sm">Buscar</span>
          </div>
            <asp:TextBox runat="server" ID="txtCriterios" CssClass="form-control" aria-label="Medium" aria-describedby="inputGroup-sizing-sm" OnTextChanged="txtCriterios_TextChanged"/>
           
        </div>
         <asp:CheckBoxList ID="chbxEstado" runat="server">
                <asp:ListItem Selected="True" Value="1">Activos</asp:ListItem>
                <asp:ListItem Value="0">Inactivos</asp:ListItem>
            </asp:CheckBoxList>
            
            <asp:Button ID="btnBuscar" Text="Buscar" CssClass="btn btn-primary mt-1" runat="server" OnClick="btnBuscar_Click" />

        <div class="mt-3">
            <asp:GridView ID="gvBuscarUsuarios" CssClass="table table-bordered dataTable" AutoGenerateColumns="False" runat="server">
                <Columns>
                    <asp:TemplateField HeaderText="Nombre Completo">
                        <ItemTemplate>
                            <asp:Label ID="lblNombre" runat="server" Text='<%# string.Format("{0} {1} {2}", Eval("nombre"), Eval("primerApellido"), Eval("segundoApellido"))%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="correoElectronico" HeaderText="Correo Electronico" />
                    <asp:TemplateField HeaderText="Telefono">          
                        <ItemTemplate>
                            <asp:Label ID="lblTelefono" runat="server"  Text='<%# string.Format("{0}", Eval("telefono"))%>'></asp:Label>
                        
                        </ItemTemplate>
                    </asp:TemplateField>
                 
                    <asp:TemplateField HeaderText="Acciones">
                        <ItemTemplate>
                            <asp:LinkButton ID="imgEliminar" runat="server" CommandArgument="<%#((Usuarios)(Container.DataItem)).idUsuario %>" OnCommand="imgEliminar_Command"><i class="fas fa-eraser"></i></asp:LinkButton>
                            <asp:LinkButton ID="imgModificar" runat="server" CommandArgument="<%#((Usuarios)(Container.DataItem)).idUsuario %>" OnCommand="imgModificar_Command"><i class="fas fa-edit"></i></asp:LinkButton>
                            
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
