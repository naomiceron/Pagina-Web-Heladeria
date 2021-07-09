using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELO
{
    public static class SucursalModelo
    {
        public static void InsertarSucursal(Sucursal newSucursal)
        {
            try
            {
                using (var modelo = new GOGOEntities1())
                {
                    modelo.Sucursals.Add(newSucursal);
                    modelo.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }


        }

        public static List<Sucursal> BuscarSucursalCriterios(string criterios)
        {
            using (var modelo = new GOGOEntities1())
            {
                List<Sucursal> resultado =
                    (from sc in modelo.Sucursals
                     where ((sc.nombre.Contains(criterios) || sc.direccion.Contains(criterios)))
                     select sc).ToList();
                return resultado;
            }
        }

        public static Sucursal BuscarSucursalPorID(int idSucursal)
        {
            using (var modelo = new GOGOEntities1())
            {
                var resultado = (from sc in modelo.Sucursals
                                 where sc.idSucursal == idSucursal
                                 select sc).FirstOrDefault();
                return resultado;
            }
        }

        public static void ModificarSucursal(Sucursal sucursalModificada)
        {
            try
            {
                using (var modelo = new GOGOEntities1())
                {
                    Sucursal sucursal = modelo.Sucursals.Find(sucursalModificada.idSucursal);
                    sucursal.nombre = sucursalModificada.nombre;
                    sucursal.direccion = sucursalModificada.direccion;
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
