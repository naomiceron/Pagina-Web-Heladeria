using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MODELO;

namespace proyectoWeb.BackOffice
{
    public partial class ModificarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var idUsuario = Convert.ToInt32(Request.QueryString["ID"]);
                Usuarios user = UsuarioModelo.BuscarUsuarioPorID(idUsuario);
                lblID.Text = user.idUsuario.ToString();
                txtNombre.Text = user.nombre;
                txtPrimerApellido.Text = user.primerApellido;
                txtSegundoApellido.Text = user.segundoApellido;
                txtCorreoElectronico.Text = user.correoElectronico;
                txtContrasena.Text = user.contrasena;


                if (user.telefono == "")
                {
                    txtTelefono.Text = "Sin telefono celular";
                }
                else
                {
                    txtTelefono.Text = user.telefono;
                }

                var sesion = Convert.ToInt32(Session["idUsuario"]);
                if (sesion == idUsuario)
                {
                    lblContrasena.Visible = true;
                    txtContrasena.Visible = true;
                }

            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                var idUsuario = Convert.ToInt32(Request.QueryString["ID"]);
                Usuarios usuarioModificado = UsuarioModelo.BuscarUsuarioPorID(idUsuario);

                usuarioModificado.nombre = txtNombre.Text;
                usuarioModificado.primerApellido = txtPrimerApellido.Text;
                usuarioModificado.segundoApellido = txtSegundoApellido.Text;
                usuarioModificado.telefono = txtTelefono.Text;
                usuarioModificado.correoElectronico = txtCorreoElectronico.Text;
                usuarioModificado.contrasena = txtContrasena.Text;



                UsuarioModelo.ModificarUsuario(usuarioModificado);

                Response.Redirect("BuscarUsuario.aspx");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}