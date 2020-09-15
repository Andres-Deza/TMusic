using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TMusicWeb.Clases
{
    public class RegionController
    {
        private static tmEntities context = new tmEntities();

        public static List<string> getRegiones()
        {
            var x = from REGION in context.REGION
                    select REGION.NOM_CIUDAD;
            return x.ToList();

        }
        public static List<REGION> listaRegiones()
        {
            var x = from REGION in context.REGION
                    select REGION;
            return x.ToList();
        }

    }
}