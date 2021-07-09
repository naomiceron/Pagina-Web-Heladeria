using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELO
{
  public  class ContactoModelo
    {
        public static void InsertarContacto(Contacto newContacto)
        {
            try
            {
                using (var modelo = new GOGOEntities1())
                {
                    modelo.Contacto.Add(newContacto);
                    modelo.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }


        }

        public static List<Contacto> BuscarContactoCriterios(string criterios)
        {
            using (var modelo = new GOGOEntities1())
            {
                List<Contacto> resultado =
                    (from cn in modelo.Contacto
                     where ((cn.nombre.Contains(criterios) || cn.primerApellido.Contains(criterios) || cn.segundoApellido.Contains(criterios)
                     || cn.email.Contains(criterios)) || cn.telefono.Contains(criterios) ||  cn.mensaje.Contains(criterios))
                     select cn).ToList();
                return resultado;
            }
        }

        public static Contacto BuscarContactoPorID(int idContacto)
        {
            using (var modelo = new GOGOEntities1())
            {
                var resultado = (from cn in modelo.Contacto
                                 where cn.contacto_id == idContacto
                                 select cn).FirstOrDefault();
                return resultado;
            }
        }

        public static void ModificarContacto(Contacto contactoModificado)
        {
            var contact = new Contacto() { contacto_id = contactoModificado.contacto_id };

            using (var modelo = new GOGOEntities1())
            {
                modelo.Contacto.Attach(contact);
                contact = contactoModificado;
                modelo.SaveChanges();
            }
        }
        

    }
}
