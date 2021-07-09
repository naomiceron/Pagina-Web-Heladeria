using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MODELO;

namespace proyectoWeb.BackOffice
{
    public partial class ModificarProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var idProducto = Convert.ToInt32(Request.QueryString["ID"]);
                Producto product = ProductoModelo.BuscarProductoPorID(idProducto);
                lblID.Text = product.id_Producto.ToString();
                txtNombre.Text = product.nombreProducto;
                txtTipo.Text = product.tipo;
                txtDescripcion.Text = product.descripcion;
                txtPrecio.Text = product.precio;

            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                var idProducto = Convert.ToInt32(Request.QueryString["ID"]);
                Producto productoModificado = ProductoModelo.BuscarProductoPorID(idProducto);

                productoModificado.nombreProducto = txtNombre.Text;
                productoModificado.tipo = txtTipo.Text;
                productoModificado.descripcion = txtDescripcion.Text;
                productoModificado.precio = txtPrecio.Text;


                ProductoModelo.ModificarProducto(productoModificado);

                Response.Redirect("BuscarProducto.aspx");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}