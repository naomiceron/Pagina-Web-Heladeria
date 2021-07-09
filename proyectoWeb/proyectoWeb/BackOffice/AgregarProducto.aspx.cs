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
    public partial class AgregarProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                var newproducto = new Producto()
                {
                    nombreProducto = txtNombre.Text,
                    tipo = txtTipo.Text,
                    descripcion = txtDescripcion.Text,
                    precio = txtPrecio.Text
                };
                ProductoModelo.InsertarProducto(newproducto);
                mensaje.Visible = true;

                string javaScript = "OcultarMensaje();";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", javaScript, true);

            }

            catch (Exception ex)
            {
                var datos = "<script> alert('" + ex.Message + "') </script>";
                Response.Write(datos);
            }
        }
    }
}