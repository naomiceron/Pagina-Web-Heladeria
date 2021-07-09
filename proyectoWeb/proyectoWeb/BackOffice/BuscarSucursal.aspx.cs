using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CONTROLADOR;
using MODELO;

namespace proyectoWeb.BackOffice
{
    public partial class BuscarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var resultado = SucursalControlador.BuscarSucursalCriterios(string.Empty);

            gvBuscarSucursales.DataSource = resultado;
            gvBuscarSucursales.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            var resultado = SucursalControlador.BuscarSucursalCriterios(string.Empty);

            gvBuscarSucursales.DataSource = resultado;
            gvBuscarSucursales.DataBind();
        }
        protected void imgModificar_Command(object sender, CommandEventArgs e)
        {
            var idSucursal = Convert.ToInt32(e.CommandArgument);

            Response.Redirect("ModificarSucursal.aspx?ID=" + idSucursal);
        }
    }
}