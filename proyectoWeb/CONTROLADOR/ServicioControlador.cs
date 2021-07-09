using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODELO;

namespace CONTROLADOR
{
    public static class ServicioControlador
    {
        public static void InsertarServicio(Servicio newServicio)
        {
            try
            {
                if (newServicio.nombre != string.Empty && newServicio.descripcion != string.Empty)
                {
                    ServicioModelo.InsertarServicio(newServicio);
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

        public static List<Servicio> BuscarServicioCriterios(string criterios)
        {
            try
            {
                return ServicioModelo.BuscarServicioCriterios(criterios);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }

        public static Servicio BuscarServicioPorID(int idServicio)
        {
            try
            {
                return ServicioModelo.BuscarServicioPorID(idServicio);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }

        public static void ModificarServicio(Servicio servicioModificado)
        {
            try
            {
                if (servicioModificado.idServicio > 0 && servicioModificado.nombre != string.Empty && servicioModificado.descripcion != string.Empty )
                {
                    ServicioModelo.ModificarServicio(servicioModificado);
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
