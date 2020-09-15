using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TMusicWeb.Clases;

namespace TMusicWeb
{
    public partial class AdminBandas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            grdBandas.DataSource = from c in BandaController.lista()
                                   from r in RegionController.listaRegiones()
                                   from s in EstiloController.listaEstilos()
                                   where c.ID_CIUDAD.Equals(r.ID_CIUDAD)
                                   && s.ID_ESTILO.Equals(c.ID_ESTILO)
                                  select new
                                  {
                                      ID=c.ID_BANDA,
                                      NombreBanda = c.NOM_BANDA,
                                      Estilo = s.NOM_ESTILO,
                                      Ubicacion = r.NOM_CIUDAD,
                                      Correo = c.CORREO,
                                      Descripcion = c.DESCRIPCION,


                                  };
            grdBandas.DataBind();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            USUARIO_BANDA b = BandaController.buscarBandaId(int.Parse(txtBuscar.Text));
            if (b != null)
            {
                BandaController.eliminarBanda(b);
                lblNoEncontrado.ForeColor = Color.Blue;
                lblNoEncontrado.Text = "Banda con ID: " + txtBuscar.Text + " eliminado exitosamente.";
            }
            else
            {
                lblNoEncontrado.ForeColor = Color.Red;
                lblNoEncontrado.Text = "Banda no Encontrada.";
            }
            Actualizar();

        }

        public void Actualizar()
        {
            
            grdBandas.DataSource = from c in BandaController.lista()
                                   from r in RegionController.listaRegiones()
                                   where c.ID_CIUDAD.Equals(r.ID_CIUDAD)
                                   select new
                                   {
                                       ID = c.ID_BANDA,
                                       NombreBanda = c.NOM_BANDA,
                                       Estilo = c.ID_ESTILO,
                                       Ubicacion = r.NOM_CIUDAD,
                                       Correo = c.CORREO,
                                       Descripcion = c.DESCRIPCION,
                                   };
            grdBandas.DataBind();
        }
    }
}