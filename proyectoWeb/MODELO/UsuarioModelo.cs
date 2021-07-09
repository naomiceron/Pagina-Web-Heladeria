using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELO
{
    public static class UsuarioModelo
    {
        public static void InsertarUsuario(Usuarios newusuario)
        {
            try
            {
                using (var modelo = new GOGOEntities1())
                {
                    modelo.Usuarios.Add(newusuario);
                    modelo.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }

        }
        public static List <Usuarios> BuscarUsuarioCriterios(string criterios, bool estado)
        {
            using(var modelo=new GOGOEntities1())
            {
                List<Usuarios> resultado =
                    (from us in modelo.Usuarios
                     where (us.nombre.Contains(criterios)
                     || us.correoElectronico.Contains(criterios))
                     && us.activo == estado
                     select us).ToList();
                return resultado;
            };
        }
        public static Usuarios BuscarUsuarioPorID(int idUsuario)
        {
            using (var modelo=new GOGOEntities1())
            {

                var resultado = (from us in modelo.Usuarios
                                 where us.idUsuario == idUsuario
                                 select us).Single();
                return resultado;
            }
        }
        public static void ModificarUsuario(Usuarios usuarioModificado)
        {
            try
            {
                using (var modelo = new GOGOEntities1())
                {
                    Usuarios usuario = modelo.Usuarios.Find(usuarioModificado.idUsuario);
                    usuario.activo = usuarioModificado.activo;
                    usuario.contrasena = usuarioModificado.contrasena;
                    usuario.correoElectronico = usuarioModificado.correoElectronico;
                    usuario.nombre = usuarioModificado.nombre;
                    usuario.primerApellido = usuarioModificado.primerApellido;
                    usuario.segundoApellido = usuarioModificado.segundoApellido;
                    usuario.telefono = usuarioModificado.telefono;
                    modelo.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void CambiarEstadoUsuario(int idUsuario)
        {
            using(var modelo=new GOGOEntities1())
            {
                var usuario = modelo.Usuarios.Find(idUsuario);
                usuario.activo = usuario.activo == true ? false : true;
                modelo.SaveChanges();
            }
        }
        public static Usuarios IngresarSistema(Usuarios usuario)
        {
         
            try
            {
                using (var modelo = new GOGOEntities1())
                {
                    var resultado = (from us in modelo.Usuarios
                                     where (us.contrasena == usuario.contrasena
                                     && us.correoElectronico == usuario.correoElectronico)
                                     && us.activo == true
                                     select us).FirstOrDefault();
                    return resultado;
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }
        public static bool ExisteUsuario(string correo)
        {
            using (var modelo = new GOGOEntities1())
            {
                var resultado = (from us in modelo.Usuarios
                                 where us.correoElectronico == correo
                                 select us);
                return resultado.Count() > 0 ? true : false;
            }
        }
    }
}
