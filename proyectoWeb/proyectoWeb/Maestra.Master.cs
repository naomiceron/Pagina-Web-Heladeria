using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoWeb
{
    public partial class Maestra : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var sesion = Convert.ToInt32(Session["idUsuario"]);
            HyperLink1.NavigateUrl = ("/BackOffice/ModificarUsuario.aspx?ID=" + sesion);
        }
    }
}