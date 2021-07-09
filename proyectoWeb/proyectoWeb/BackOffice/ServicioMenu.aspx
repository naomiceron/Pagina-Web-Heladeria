<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="ServicioMenu.aspx.cs" Inherits="proyectoWeb.BackOffice.ServicioMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-8 ml-auto mr-auto"> 
            <div class="row">
                <div class="col-lg-6">
                    <p>
                    <a href="AgregarServicio.aspx" class="btn btn-sq-lg btn-primary btn-block">
                    <i class="tim-icons icon-simple-add tim-icons-32"></i><br/><br/>
                    <label style="font-size:x-large">Agregar Servicio</label>
                    </a>
                    </p>
                </div>
                <div class="col-lg-6">
                    <p>
                    <a href="BuscarServicio.aspx" class="btn btn-sq-lg btn-primary btn-block">
                    <i class="tim-icons icon-zoom-split tim-icons-32"></i><br/><br/>
                    <label style="font-size:x-large">Buscar Servicio</label>
                    </a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
