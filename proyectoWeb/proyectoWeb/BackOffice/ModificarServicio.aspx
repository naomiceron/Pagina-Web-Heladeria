<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="ModificarServicio.aspx.cs" Inherits="proyectoWeb.BackOffice.ModificarServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  class="container mp-5 " >
               
            <div id="modificarFormulario" class="modificarFormulario text-justify p-4 m-4 border-top-0"">
                <h1 class="display-4 mb-2 mx-auto text-center">Modificar Servicio</h1>

                <asp:Label ID="Label1" runat="server" Text="ID Servicio: "></asp:Label>
                <asp:Label ID="lblID" runat="server" Text=""></asp:Label>

                <br />

                <div class="form-row" >
                    <div class="form-group col-md-8 align-content-center">
                        <label>Nombre Servicio</label>
                        <asp:TextBox ID="txtNombre" CssClass="form-control"  runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-row" >
                    <div class="form-group col-md-8">
                        <label>Descripción</label>
                        <asp:TextBox ID="txtDescripcion" CssClass="form-control"  runat="server" TextMode="MultiLine" Height="280px"></asp:TextBox>
                    </div>
                </div>

               
                 <asp:Button ID="btnGuardar" class="btn btn-primary align-content-center" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />

            </div>
        </div>
</asp:Content>
