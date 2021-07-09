using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODELO;

namespace CONTROLADOR
{
    public static class ContactoControlador
    {
        public static void InsertarContacto(Contacto newContacto)
        {
            try
            {
                if (newContacto.email != string.Empty && newContacto.primerApellido != string.Empty
                    && newContacto.nombre != string.Empty && newContacto.telefono != string.Empty && newContacto.mensaje != string.Empty)
                {
                    ContactoModelo.InsertarContacto(newContacto);
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

        public static List<Contacto> BuscarContactoCriterios(string criterios)
        {
            try
            {
                return ContactoModelo.BuscarContactoCriterios(criterios);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }

        public static Contacto BuscarContactoPorID(int idContacto)
        {
            try
            {
                return ContactoModelo.BuscarContactoPorID(idContacto);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }

        public static void ModificarContacto(Contacto contactoModificado)
        {
            try
            {
                if (contactoModificado.contacto_id > 0 && contactoModificado.nombre != string.Empty && contactoModificado.email != string.Empty && contactoModificado.telefono != string.Empty)
                {
                    ContactoModelo.ModificarContacto(contactoModificado);
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
