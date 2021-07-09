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
    public partial class BuscarContacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var resultado = ContactoControlador.BuscarContactoCriterios(string.Empty);

            gvBuscarContactos.DataSource = resultado;
            gvBuscarContactos.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            var resultado = ContactoControlador.BuscarContactoCriterios(txtCriterios.Text);

            gvBuscarContactos.DataSource = resultado;
            gvBuscarContactos.DataBind();
        }

        protected void txtCriterios_TextChanged(object sender, EventArgs e)
        {

        }
    }
}