using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MODELO;

namespace proyectoWeb.BackOffice
{
    public partial class ModificarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var idSucursal = Convert.ToInt32(Request.QueryString["ID"]);
                Sucursal sucursals = SucursalModelo.BuscarSucursalPorID(idSucursal);
                lblID.Text = sucursals.idSucursal.ToString();
                txtNombre.Text = sucursals.nombre;
                txtDireccion.Text = sucursals.direccion;


            }
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                var idSucursal = Convert.ToInt32(Request.QueryString["ID"]);
                Sucursal sucursalModificada = SucursalModelo.BuscarSucursalPorID(idSucursal);

                sucursalModificada.nombre = txtNombre.Text;
                sucursalModificada.direccion = txtDireccion.Text;
                sucursalModificada.idCiudad = Convert.ToInt32(ciudadSeleccionada.SelectedValue);


                SucursalModelo.ModificarSucursal(sucursalModificada);

                Response.Redirect("BuscarSucursal.aspx");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}