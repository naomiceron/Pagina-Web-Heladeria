using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MODELO;

namespace proyectoWeb.BackOffice
{
    public partial class ModificarServicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var idServicio = Convert.ToInt32(Request.QueryString["ID"]);
                Servicio service = ServicioModelo.BuscarServicioPorID(idServicio);
                lblID.Text = service.idServicio.ToString();
                txtNombre.Text = service.nombre;
                txtDescripcion.Text = service.descripcion;

            }
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                var idServicio = Convert.ToInt32(Request.QueryString["ID"]);
                Servicio servicioModificado = ServicioModelo.BuscarServicioPorID(idServicio);

                servicioModificado.nombre = txtNombre.Text;
                servicioModificado.descripcion = txtDescripcion.Text;


                ServicioModelo.ModificarServicio(servicioModificado);

                Response.Redirect("BuscarServicio.aspx");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}