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
    public partial class BuscarServicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var resultado = ServicioControlador.BuscarServicioCriterios(string.Empty);

            gvBuscarServicios.DataSource = resultado;
            gvBuscarServicios.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            var resultado = ServicioControlador.BuscarServicioCriterios(string.Empty);

            gvBuscarServicios.DataSource = resultado;
            gvBuscarServicios.DataBind();
        }

        protected void imgModificar_Command(object sender, CommandEventArgs e)
        {
            var idServicio = Convert.ToInt32(e.CommandArgument);

            Response.Redirect("ModificarServicio.aspx?ID=" + idServicio);
        }
    }
}