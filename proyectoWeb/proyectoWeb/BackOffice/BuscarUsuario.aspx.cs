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
    public partial class BuscarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var resultado = UsuarioControlador.BuscarUsuarioCriterios(string.Empty, true);

            gvBuscarUsuarios.DataSource = resultado;
            gvBuscarUsuarios.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            bool estado;
            if (chbxEstado.SelectedIndex == 0)
            {
                estado = true;
            }
            else
            {
                estado = false;
            }

            var resultado = UsuarioControlador.BuscarUsuarioCriterios(txtCriterios.Text, estado);

            gvBuscarUsuarios.DataSource = resultado;
            gvBuscarUsuarios.DataBind();
        }

        protected void imgEliminar_Command(object sender, CommandEventArgs e)
        {
            var idUsuario = Convert.ToInt32(e.CommandArgument);
            UsuarioControlador.CambiarEstadoUsuario(idUsuario);
            Page_Load(null, null);
        }

        protected void txtCriterios_TextChanged(object sender, EventArgs e)
        {

        }

        protected void imgModificar_Command(object sender, CommandEventArgs e)
        {
            var idUsuario = Convert.ToInt32(e.CommandArgument);

            Response.Redirect("ModificarUsuario.aspx?ID=" + idUsuario);
        }
    }
}