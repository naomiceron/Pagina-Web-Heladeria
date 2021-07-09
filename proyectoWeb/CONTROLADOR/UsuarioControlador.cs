using MODELO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CONTROLADOR
{
    public static class UsuarioControlador
    {
        public static void InsertarUsuario(Usuarios newUsuario)
        {
            try
            {
                if (newUsuario.correoElectronico != string.Empty && newUsuario.contrasena != string.Empty
                    && newUsuario.nombre != string.Empty && UsuarioModelo.ExisteUsuario(newUsuario.correoElectronico) != true)
                {
                    UsuarioModelo.InsertarUsuario(newUsuario);
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

        public static List<Usuarios> BuscarUsuarioCriterios(string criterios, bool estado)
        {
            try
            {
                return UsuarioModelo.BuscarUsuarioCriterios(criterios, estado);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }

        public static Usuarios BuscarUsuarioPorID(int idUsuario)
        {
            try
            {
                return UsuarioModelo.BuscarUsuarioPorID(idUsuario);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }

        public static void ModificarUsuario(Usuarios usuarioModificado)
        {
            try
            {
                if (usuarioModificado.idUsuario > 0 && usuarioModificado.nombre != string.Empty && usuarioModificado.correoElectronico != string.Empty && usuarioModificado.contrasena != string.Empty)
                {
                    UsuarioModelo.ModificarUsuario(usuarioModificado);
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

        public static void CambiarEstadoUsuario(int idUsuario)
        {
            try
            {
                if (idUsuario > 0)
                {
                    UsuarioModelo.CambiarEstadoUsuario(idUsuario);
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }

        public static Usuarios IngresarSistema(Usuarios usuario)
        {
            try
            {
                if (usuario.correoElectronico != string.Empty && usuario.contrasena != string.Empty)
                {
                    var resultado = UsuarioModelo.IngresarSistema(usuario);
                    if (resultado != null)
                    {
                        return resultado;
                    }
                    else
                    {
                        throw new Errores("Usuario y/o contraseña incorrectos");
                    }
                }
                else
                {
                    throw new Errores("Hubo un error");
                }
            }
            catch (Errores ex)
            {
                throw new Errores(ex.MensajeError);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }
    }
}
