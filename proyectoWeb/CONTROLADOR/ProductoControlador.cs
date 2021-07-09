using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODELO;

namespace CONTROLADOR
{
    public static class ProductoControlador
    {
        public static void InsertarProducto(Producto newProducto)
        {
            try
            {
                if (newProducto.nombreProducto != string.Empty && newProducto.tipo != string.Empty
                    && newProducto.descripcion != string.Empty && newProducto.precio != string.Empty)
                {
                    ProductoModelo.InsertarProducto(newProducto);
                }
                else
                {
                    throw new Exception("Hubo un error");
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }

        public static List<Producto> BuscarProductoCriterios(string criterios)
        {
            try
            {
                return ProductoModelo.BuscarProductoCriterios(criterios);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }

        public static Producto BuscarProductoPorID(int idProducto)
        {
            try
            {
                return ProductoModelo.BuscarProductoPorID(idProducto);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }

        public static void ModificarProducto(Producto productoModificado)
        {
            try
            {
                if (productoModificado.id_Producto > 0 && productoModificado.nombreProducto != string.Empty && productoModificado.tipo != string.Empty && productoModificado.precio != string.Empty)
                {
                    ProductoModelo.ModificarProducto(productoModificado);
                }
                else
                {
                    throw new Exception("Hubo un error");
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }
    }
}
