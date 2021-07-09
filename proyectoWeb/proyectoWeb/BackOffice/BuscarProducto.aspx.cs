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
    public partial class BuscarProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var resultado = ProductoControlador.BuscarProductoCriterios(string.Empty);

            gvBuscarProductos.DataSource = resultado;
            gvBuscarProductos.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            var resultado = ProductoControlador.BuscarProductoCriterios(string.Empty);

            gvBuscarProductos.DataSource = resultado;
            gvBuscarProductos.DataBind();
        }
        protected void imgModificar_Command(object sender, CommandEventArgs e)
        {
            var idProducto = Convert.ToInt32(e.CommandArgument);

            Response.Redirect("ModificarProducto.aspx?ID=" + idProducto);
        }
    }
}