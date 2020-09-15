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
    public partial class AdminSolistas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            grdSolistas.DataSource = from c in SolistaController.lista()
                                     from r in RegionController.listaRegiones()
                                     from s in EstiloController.listaEstilos()
                                     where 
                                     c.ID_CIUDAD.Equals(r.ID_CIUDAD)
                                     && s.ID_ESTILO.Equals(c.ID_ESTILO)
                                   select new
                                   {
                                       ID = c.ID_SOLISTA,
                                       Apodo = c.APODO,
                                       Estilo = s.NOM_ESTILO,
                                       Ubicacion = r.NOM_CIUDAD,
                                       Correo = c.CORREO,
                                       Descripcion = c.DESCRIPCION,


                                   };
            grdSolistas.DataBind();
        }

        public  void Actualizar()
        {

            grdSolistas.DataSource = from c in SolistaController.lista()
                                     from r in RegionController.listaRegiones()
                                     from s in EstiloController.listaEstilos()
                                     where
                                     c.ID_CIUDAD.Equals(r.ID_CIUDAD)
                                     && s.ID_ESTILO.Equals(c.ID_ESTILO)
                                     select new
                                     {
                                         ID = c.ID_SOLISTA,
                                         Apodo = c.APODO,
                                         Estilo = s.NOM_ESTILO,
                                         Ubicacion = r.NOM_CIUDAD,
                                         Correo = c.CORREO,
                                         Descripcion = c.DESCRIPCION,


                                     };
            grdSolistas.DataBind();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            USUARIO_SOLISTA b = SolistaController.buscarSOLISTAId(int.Parse(txtBuscar.Text));
            if (b != null)
            {
                SolistaController.eliminarSolista(b);
                lblNoEncontrado.ForeColor = Color.Blue;
                lblNoEncontrado.Text = "Solista con ID: " + txtBuscar.Text + " eliminado exitosamente.";
            }
            else
            {
                lblNoEncontrado.ForeColor = Color.Red;
                lblNoEncontrado.Text = "Solista no Encontrado.";
            }
            Actualizar();

        }



    }
}