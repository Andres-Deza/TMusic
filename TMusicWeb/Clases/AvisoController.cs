using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Security.Cryptography;
using System.Web;

namespace TMusicWeb.Clases
{
    public class AvisoController
    {
        
		private static tmEntities context = new tmEntities();

		public static void crearAviso(string nombre, string marca, DateTime fecha, int tipad, int precio, int tipprod, int ubicacion, string vendedor, string descripcion)
		{
			context.AVISO.Add(new AVISO()
			{
                
            PRODUCTO = nombre,
				MARCA = marca,
				FECHA = fecha.ToString(),
				ID_TIP_AVISO = tipad,
				PRECIO = precio,
				ID_TIPO_PRODUCTO = tipprod,
				ID_CIUDAD = ubicacion,
				VENDEDOR=vendedor,
				DESCRIPCION = descripcion

			});

            context.SaveChanges();
        }



        public static void modificarAviso(AVISO a,string nombre, string marca, DateTime fecha, int tipad, int precio, int tipprod, int ubicacion, string vendedor, string descripcion)
        {

                AVISO b = AvisoController.buscarAvisoId(a.ID_AVISO);
                a.PRODUCTO = nombre;
                a.MARCA = marca;
                a.FECHA = fecha.ToString();
                a.ID_TIP_AVISO = tipad;
                a.PRECIO = precio;
                a.ID_TIPO_PRODUCTO = tipprod;
                a.ID_CIUDAD = ubicacion;
                a.VENDEDOR = vendedor;
                a.DESCRIPCION = descripcion;

                context.SaveChanges();
        }

        public static AVISO buscarAvisoId(int id)
        {
            foreach (AVISO c in context.AVISO)
            {
                if (c.ID_AVISO.Equals(id))
                {
                    return c;
                }
            }
            return null;
        }


        public static string buscarAvisoNombre(string nomAviso)
        {
            foreach (AVISO c in context.AVISO)
            {
                if (c.PRODUCTO == nomAviso)
                {
                    return "invalido";
                }

            }
            return "valido";
        }

        

        public static List<AVISO> lista()
        {
            var x = from AVISO in context.AVISO
                    select AVISO;

            return x.ToList();
        }


  //      public static AVISO eliminarAvisov2(int id)
		//{
		//	AvisoController.lista().RemoveAll((x) => x.ID_AVISO == id);
  //          context.SaveChanges();
  //          return null;
		//}

        public static AVISO eliminarAvisos(AVISO aviso)
        {
            AvisoController.context.AVISO.Remove(aviso);
            context.SaveChanges();
            return null;
        }

        public static AVISO eliminarAvisoPorNombre(string nom)
        {
            foreach (AVISO c in context.AVISO)
            {
                if (c.VENDEDOR == nom)
                {
                    eliminarAvisos(c);
                }

            }
            return null;
        }




    }
}