using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELO
{
    public static class ProductoModelo
    {
        public static void InsertarProducto(Producto newproducto)
        {
            try
            {
                using (var modelo = new GOGOEntities1())
                {
                    modelo.Productoes.Add(newproducto);
                    modelo.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }


        }

        public static List<Producto> BuscarProductoCriterios(string criterios)
        {
            using (var modelo = new GOGOEntities1())
            {
                List<Producto> resultado =
                    (from pd in modelo.Productoes
                     where ((pd.nombreProducto.Contains(criterios)||pd.tipo.Contains(criterios)|| 
                     pd.descripcion.Contains(criterios) || 
                     pd.precio.Contains(criterios)))
                     select pd).ToList();
                return resultado;
            }
        }

        public static Producto BuscarProductoPorID(int idProducto)
        {
            using (var modelo = new GOGOEntities1())
            {
                var resultado = (from pd in modelo.Productoes
                                 where pd.id_Producto == idProducto
                                 select pd).FirstOrDefault();
                return resultado;
            }
        }

        public static void ModificarProducto(Producto productoModificado)
        {
            try
            {
                using (var modelo = new GOGOEntities1())
                {
                    Producto producto = modelo.Productoes.Find(productoModificado.id_Producto);
                    producto.nombreProducto = productoModificado.nombreProducto;
                    producto.tipo = productoModificado.tipo;
                    producto.descripcion = productoModificado.descripcion;
                    producto.precio = productoModificado.precio;
                    modelo.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        
    }
}
