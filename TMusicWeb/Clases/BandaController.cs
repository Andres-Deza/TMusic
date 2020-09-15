using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TMusicWeb.Clases;

namespace TMusicWeb
{
    public class BandaController
    {
        
        private static tmEntities context = new tmEntities();


        public static string crearBanda(string nombre, string apellido, string mail, string pass)
        {

            try
            {

                context.USUARIO_BANDA.Add(new USUARIO_BANDA()
                {
                    ID_BANDA=context.USUARIO_BANDA.Last().ID_BANDA+1,
                    NOMBRE = nombre,
                    APELLIDO = apellido,
                    CORREO = mail,
                    CONTRASENA = pass,
                    NOM_BANDA="",
                    ID_ESTILO=1,
                    ID_CIUDAD=1,
                    INFLUENCIAS="",
                    DESCRIPCION="",
                    DISPONIBILIDAD=true,
                    ESTADO_CUENTA="1",


                });
                context.SaveChanges();
                return "Registro exitoso";

            }
            catch (Exception e)
            {

                return e.ToString();
            }


        }



        public static string crearPerfilBanda(USUARIO_BANDA c,string nombreBanda,int region, int estilo, string influencia, string descripcion)
        {
            try
            {
                USUARIO_BANDA b= BandaController.buscarBandaId(c.ID_BANDA);


                b.NOM_BANDA = nombreBanda;
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

        //public static string crearPerfilBanda(string nombreBanda, string ubicacion, string estilo, string influencia, string descripcion)
        //{
        //    listaBanda.Add(new Banda()
        //    {
        //        _nombreBanda = nombreBanda,
        //        _ubicacion = ubicacion,
        //        _estilo = estilo,
        //        _influencia = influencia,
        //        _descripcion = descripcion
        //    });
        //    return null;
        //}

        public static USUARIO_BANDA buscarBandaId(int id)
        {
            foreach (USUARIO_BANDA c in context.USUARIO_BANDA)
            {
                if (c.ID_BANDA.Equals(id))
                {
                    return c;
                }
            }
            return null;
        }


        public static USUARIO_BANDA buscarBandaCorreo(string correo)
        {
            foreach (USUARIO_BANDA c in context.USUARIO_BANDA)
            {
                if (c.CORREO.Equals(correo))
                {
                    return c;
                }
            }
            return null;
        }

        public static string buscarBandaNombre(string nombanda)
        {
            foreach (USUARIO_BANDA c in context.USUARIO_BANDA)
            {
                if (c.NOM_BANDA==nombanda)
                {
                    return "invalido";
                }

            }
            return "valido";
        }

        public static USUARIO_BANDA eliminarBanda(USUARIO_BANDA banda)
        {
            foreach (AVISO c in context.AVISO)
            {
                if (c.VENDEDOR == banda.NOM_BANDA)
                {
                    context.AVISO.Remove(c);

                }

            }
            BandaController.context.USUARIO_BANDA.Remove(banda);
            context.SaveChanges();
            return null;
        }



        public static USUARIO_BANDA buscarEditarPerfil(string correo)
        {
            foreach (USUARIO_BANDA c in context.USUARIO_BANDA)
            {
                if (c.CORREO.Equals(correo))
                {
                    return c;
                }
            }
            return null;
        }

        public static List<USUARIO_BANDA> lista()
        {
            var x = from USUARIO_BANDA in context.USUARIO_BANDA
                    select USUARIO_BANDA;
            return x.ToList();
        }




        //método temporal
        //public static void multibandas()
        //{
        //    crearBanda("mamba", "wena", "m@gmail.com", "123456", "banda", "mamba wena", "valpo", "jazz", "chic corea", "profesional");
        //    crearBanda("Junito", "T", "t@gmail.com", "123456", "banda", "TrompetaTraviesa", "valpo", "jazz", "chic corea", "profesional");

        //}
    }
}