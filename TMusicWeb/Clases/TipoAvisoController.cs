using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TMusicWeb.Clases
{
    public class TipoAvisoController
    {
        private static tmEntities context = new tmEntities();

        public static List<string> getTiposAvisos()
        {
            var x = from TIPO_AVISO in context.TIPO_AVISO
                    select TIPO_AVISO.NOM_TIP_AVISO;
            return x.ToList();

        }
        public static List<TIPO_AVISO> listaTipoAvisos()
        {
            var p = from TIPO_AVISO in context.TIPO_AVISO
                    select TIPO_AVISO;
            return p.ToList();
        }
    }
}