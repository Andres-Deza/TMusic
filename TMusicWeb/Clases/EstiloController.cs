using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TMusicWeb.Clases
{
    public class EstiloController
    {
        private static tmEntities context = new tmEntities();

        public static List<string> getEstilos()
        {
            var x = from ESTILO_MUSICAL in context.ESTILO_MUSICAL
                    select ESTILO_MUSICAL.NOM_ESTILO;
            return x.ToList();

        }

        public static List<ESTILO_MUSICAL> listaEstilos()
        {
            var x = from ESTILO_MUSICAL in context.ESTILO_MUSICAL
                    select ESTILO_MUSICAL;

            return x.ToList();
                    
        }
    }
}