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
    public partial class EditarPerfilSolista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }

            if (!Page.IsPostBack)
            {
                ddlRegion.DataSource = RegionController.getRegiones();
                ddlRegion.DataBind();

                ddlEstilo.DataSource = EstiloController.getEstilos();
                ddlEstilo.DataBind();

                USUARIO_SOLISTA b = (USUARIO_SOLISTA)Session["login"];
                txtnombre.Text = b.APODO;
                ddlEstilo.SelectedIndex = (int)b.ID_ESTILO - 1;
                ddlRegion.SelectedIndex = (int)b.ID_CIUDAD - 1;
                txtinfluencia.Text = b.INFLUENCIAS;
                txtDescripcion.Text = b.DESCRIPCION;



            }
        }

        protected void btnEditarPerfil_Click(object sender, EventArgs e)
        {
            lblNombreUsado.Text = "";
            lblPerfilCreado.Text = "";
            USUARIO_SOLISTA b = (USUARIO_SOLISTA)Session["login"];
            System.Threading.Thread.Sleep(3000);
            if (b.APODO == txtnombre.Text)
            {
                SolistaController.crearPerfilSolista(b, txtnombre.Text, ddlRegion.SelectedIndex + 1, ddlEstilo.SelectedIndex + 1, txtinfluencia.Text, txtDescripcion.Text);
                lblPerfilCreado.Text = "Perfil modificado exitosamente";

            }
            else
            {
                if (SolistaController.buscarSolistaNombre(txtnombre.Text) == "valido")
                {

                    SolistaController.crearPerfilSolista(b, txtnombre.Text, ddlRegion.SelectedIndex + 1, ddlEstilo.SelectedIndex + 1, txtinfluencia.Text, txtDescripcion.Text);

                    lblPerfilCreado.Text = "Perfil modificado exitosamente ";

                }
                else
                {
                    SolistaController.crearPerfilSolista(b, b.APODO, ddlRegion.SelectedIndex + 1, ddlEstilo.SelectedIndex + 1, txtinfluencia.Text, txtDescripcion.Text);
                    lblNombreUsado.Text = "El nombre de Solista ya esta usado. Cambie el nombre.";
                    lblNombreUsado.ForeColor = Color.Red;
                }
            }


        }

        
    }
}