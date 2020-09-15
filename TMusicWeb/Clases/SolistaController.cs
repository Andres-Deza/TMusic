using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Runtime.CompilerServices;
using System.Web;
using TMusicWeb.Clases;

namespace TMusicWeb
{
    public class SolistaController
    {
        private static tmEntities context = new tmEntities();


        public static string crearsolista(string nombre, string apellido, string mail, string pass)
        {

            try
            {

                context.USUARIO_SOLISTA.Add(new USUARIO_SOLISTA()
                {
                    NOMBRE = nombre,
                    APELLIDO = apellido,
                    CORREO = mail,
                    CONTRASENA = pass,
                    APODO = "",
                    ID_ESTILO = 1,
                    ID_CIUDAD = 1,
                    INFLUENCIAS = "",
                    DESCRIPCION = "",
                    ESTADO_CUENTA = "1",


                });
                context.SaveChanges();
                return "Registro exitoso";

            }
            catch (Exception e)
            {

                return e.ToString();
            }


        }



        public static string crearPerfilSolista(USUARIO_SOLISTA c, string nombreSOLISTA, int region, int estilo, string influencia, string descripcion)
        {
            try
            {
                USUARIO_SOLISTA b = SolistaController.buscarSOLISTAId(c.ID_SOLISTA);


                b.APODO = nombreSOLISTA;
                b.ID_ESTILO = estilo;
                b.INFLUENCIAS = influencia;
                b.DESCRIPCION = descripcion;
                b.ID_CIUDAD = region;
                context.SaveChanges();
                return "Registro exitoso";

            }
            catch (Exception e)
            {

                return e.ToString();
            }
        }

        //public static string crearPerfilSOLISTA(string nombreSOLISTA, string ubicacion, string estilo, string influencia, string descripcion)
        //{
        //    listaSOLISTA.Add(new SOLISTA()
        //    {
        //        _nombreSOLISTA = nombreSOLISTA,
        //        _ubicacion = ubicacion,
        //        _estilo = estilo,
        //        _influencia = influencia,
        //        _descripcion = descripcion
        //    });
        //    return null;
        //}

        public static USUARIO_SOLISTA buscarSOLISTAId(int id)
        {
            foreach (USUARIO_SOLISTA c in context.USUARIO_SOLISTA)
            {
                if (c.ID_SOLISTA.Equals(id))
                {
                    return c;
                }
            }
            return null;
        }


        public static USUARIO_SOLISTA buscarSolistaCorreo(string correo)
        {
            foreach (USUARIO_SOLISTA c in context.USUARIO_SOLISTA)
            {
                if (c.CORREO.Equals(correo))
                {
                    return c;
                }
            }
            return null;
        }

        public static string buscarSolistaNombre(string nomSOLISTA)
        {
            foreach (USUARIO_SOLISTA c in context.USUARIO_SOLISTA)
            {
                if (c.APODO == nomSOLISTA)
                {
                    return "invalido";
                }

            }
            return "valido";
        }

        public static USUARIO_SOLISTA eliminarSolista(USUARIO_SOLISTA SOLISTA)
        {
            foreach (AVISO c in context.AVISO)
            {
                if (c.VENDEDOR == SOLISTA.APODO)
                {
                    context.AVISO.Remove(c);

                }

            }
            SolistaController.context.USUARIO_SOLISTA.Remove(SOLISTA);
            context.SaveChanges();
            return null;
        }



        public static USUARIO_SOLISTA buscarEditarPerfil(string correo)
        {
            foreach (USUARIO_SOLISTA c in context.USUARIO_SOLISTA)
            {
                if (c.CORREO.Equals(correo))
                {
                    return c;
                }
            }
            return null;
        }

        public static List<USUARIO_SOLISTA> lista()
        {
            var x = from USUARIO_SOLISTA in context.USUARIO_SOLISTA
                    select USUARIO_SOLISTA;
            return x.ToList();
        }


    }
}