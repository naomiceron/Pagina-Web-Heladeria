using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELO
{
    public static class EstadoModel
    {
        public static void InsertarEstado(Estado newEstado)
        {
            using (var modelo = new GOGOEntities1())
            {
                modelo.Estado.Add(newEstado);
                modelo.SaveChanges();
            }

        }

        public static List<Estado> BuscarEstadoCriterios(string criterios, bool estado)
        {
            using (var modelo = new GOGOEntities1())
            {
                List<Estado> resultado =
                    (from es in modelo.Estado
                     where (es.nombre.Contains(criterios) || es.abrev.Contains(criterios) || es.clave.Value == Int32.Parse(criterios))
                     && es.activo == estado
                     select es).ToList();
                return resultado;
            }
        }

        public static Estado BuscarEstadoPorID(int idEstado)
        {
            using (var modelo = new GOGOEntities1())
            {
                var resultado = (from es in modelo.Estado
                                 where es.id == idEstado
                                 select es).FirstOrDefault();
                return resultado;
            }
        }

        public static void ModificarEstado(Estado EstadoModificada)
        {
            var state = new Estado() { id = EstadoModificada.id };

            using (var modelo = new GOGOEntities1())
            {
                modelo.Estado.Attach(state);
                state = EstadoModificada;
                modelo.SaveChanges();
            }
        }

        public static void CambiarEstadoEstado(int idEstado)
        {
            using (var modelo = new GOGOEntities1())
            {
                var Estado = modelo.Estado.Find(idEstado);
                Estado.activo = Estado.activo == true ? false : true;
                modelo.SaveChanges();
            }
        }
    }
}
