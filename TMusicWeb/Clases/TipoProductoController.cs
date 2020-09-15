using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TMusicWeb.Clases
{
    public class TipoProductoController
    {
        private static tmEntities context = new tmEntities();

        public static List<string> getTiposProducto()
        {
            var x = from TIPO_PRODUCTO in context.TIPO_PRODUCTO
                    select TIPO_PRODUCTO.NOM_TIPO_PROD;
            return x.ToList();

        }
        public static List<TIPO_PRODUCTO> listaProducto()
        {
            var x = from TIPO_PRODUCTO in context.TIPO_PRODUCTO
                    select TIPO_PRODUCTO;
            return x.ToList();
        }



    }
}