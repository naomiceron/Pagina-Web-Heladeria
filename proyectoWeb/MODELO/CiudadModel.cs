using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELO
{
    public static class CiudadModel
    {
        public static void InsertarCiudad(Ciudad newCiudad)
        {
            using (var modelo = new GOGOEntities1())
            {
                modelo.Ciudad.Add(newCiudad);
                modelo.SaveChanges();
            }

        }

        public static List<Ciudad> BuscarCiudadCriterios(string criterios, bool estado)
        {
            using (var modelo = new GOGOEntities1())
            {
                List<Ciudad> resultado =
                    (from cd in modelo.Ciudad
                     where (cd.nombre.Contains(criterios) || cd.abrev.Contains(criterios) || cd.clave.Value == Int32.Parse(criterios))
                     && cd.activo == estado
                     select cd).ToList();
                return resultado;
            }
        }

        public static Ciudad BuscarCiudadPorID(int idCiudad)
        {
            using (var modelo = new GOGOEntities1())
            {
                var resultado = (from cd in modelo.Ciudad
                                 where cd.id == idCiudad
                                 select cd).FirstOrDefault();
                return resultado;
            }
        }

        public static void ModificarCiudad(Ciudad ciudadModificada)
        {
            var city = new Ciudad() { id = ciudadModificada.id };

            using (var modelo = new GOGOEntities1())
            {
                modelo.Ciudad.Attach(city);
                city = ciudadModificada;
                modelo.SaveChanges();
            }
        }

        public static void CambiarEstadoCiudad(int idCiudad)
        {
            using (var modelo = new GOGOEntities1())
            {
                var Ciudad = modelo.Ciudad.Find(idCiudad);
                Ciudad.activo = Ciudad.activo == true ? false : true;
                modelo.SaveChanges();
            }
        }
    }
}
