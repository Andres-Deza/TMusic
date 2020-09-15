using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TMusicWeb.Clases;

namespace TMusicWeb
{
    public partial class BandasSolistas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            grdBanda.DataSource = from c in BandaController.lista()
                                  from r in RegionController.listaRegiones()
                                  from l in EstiloController.listaEstilos()
                                  where c.ID_ESTILO.Equals(l.ID_ESTILO)
                                  && r.ID_CIUDAD.Equals(c.ID_CIUDAD)
                                  select new
                                  {
                                      NombreBanda = c.NOM_BANDA,
                                      Estilo = l.NOM_ESTILO,
                                      Ubicacion = r.NOM_CIUDAD,
                                      Correo = c.CORREO,
                                      Descripcion = c.DESCRIPCION,


                                  };
            grdBanda.DataBind();
        }
    }
}