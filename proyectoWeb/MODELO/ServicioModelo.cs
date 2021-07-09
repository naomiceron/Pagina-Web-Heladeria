using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELO
{
    public static class ServicioModelo
    {
        public static void InsertarServicio(Servicio newServicio)
        {
            try
            {
                using (var modelo = new GOGOEntities1())
                {
                    modelo.Servicios.Add(newServicio);
                    modelo.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }


        }

        public static List<Servicio> BuscarServicioCriterios(string criterios)
        {
            using (var modelo = new GOGOEntities1())
            {
                List<Servicio> resultado =
                    (from sv in modelo.Servicios
                     where ((sv.nombre.Contains(criterios) || sv.nombre.Contains(criterios)))
                     select sv).ToList();
                return resultado;
            }
        }

        public static Servicio BuscarServicioPorID(int idServicio)
        {
            using (var modelo = new GOGOEntities1())
            {
                var resultado = (from sv in modelo.Servicios
                                 where sv.idServicio == idServicio
                                 select sv).FirstOrDefault();
                return resultado;
            }
        }

        public static void ModificarServicio(Servicio servicioModificado)
        {
            try
            {
                using (var modelo = new GOGOEntities1())
                {
                    Servicio servicio = modelo.Servicios.Find(servicioModificado.idServicio);
                    servicio.nombre = servicioModificado.nombre;
                    servicio.descripcion = servicioModificado.descripcion;
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
