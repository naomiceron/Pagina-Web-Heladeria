using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODELO;

namespace CONTROLADOR
{
    public static class SucursalControlador
    {
        public static void InsertarSucursal(Sucursal newSucursal)
        {
            try
            {
                if (newSucursal.nombre != string.Empty && newSucursal.direccion != string.Empty)
                {
                    SucursalModelo.InsertarSucursal(newSucursal);
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

        public static List<Sucursal> BuscarSucursalCriterios(string criterios)
        {
            try
            {
                return SucursalModelo.BuscarSucursalCriterios(criterios);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }

        public static Sucursal BuscarSucursalPorID(int idSucursal)
        {
            try
            {
                return SucursalModelo.BuscarSucursalPorID(idSucursal);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }

        public static void ModificarSucursal(Sucursal sucursalModificada)
        {
            try
            {
                if (sucursalModificada.idSucursal > 0 && sucursalModificada.nombre != string.Empty && sucursalModificada.direccion != string.Empty)
                {
                    SucursalModelo.ModificarSucursal(sucursalModificada);
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
