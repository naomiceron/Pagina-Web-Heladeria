using CONTROLADOR;
using MODELO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

      
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            
            try
            {
                var newUsuario = new Usuarios()
                {
                    contrasena = txtContrasena.Text,
                    correoElectronico = txtEmail.Text,
         
                };
                var usuario = UsuarioModelo.IngresarSistema(newUsuario);
                Session.Timeout = 20;
                Session["nombre"] = usuario.nombre + " " + usuario.primerApellido;
                Session["idUsuario"] = usuario.idUsuario;


                Response.Redirect("/BackOffice/Inicio.aspx");
            }
            catch (Errores ex)
            {
                mensajeError.Visible = true;
                mensajeError.InnerText = ex.MensajeError;

                string javaScript = "OcultarMensajeError();";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", javaScript, true);

            }
            catch (Exception ex)
            {
                mensajeError.Visible = true;
                //mensajeError.InnerText = ex.Message;

                string javaScript = "OcultarMensajeError();";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", javaScript, true);
                //var datos = "<script> alert('" + ex.Message + "') </script>";
                //Response.Write(datos);
            }
        }

    }
}