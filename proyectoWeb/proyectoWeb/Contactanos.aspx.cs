using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MODELO;

namespace proyectoWeb
{
    public partial class Contactanos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                var newContacto = new Contacto()
                {
                    nombre = txtNombre.Text,
                    primerApellido = txtPrimerApellido.Text,
                    segundoApellido = txtSegundoApellido.Text,
                    email = txtEmail.Text,
                    mensaje = txtMensaje.Text,
                    ciudad_id = Convert.ToInt32(ciduadSeleccionada.SelectedValue),
                    telefono = txtTelefono.Text,
                };

                ContactoModelo.InsertarContacto(newContacto);
                mensajefinal.Visible = true;

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