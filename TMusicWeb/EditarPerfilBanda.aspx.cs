using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TMusicWeb.Clases;

namespace TMusicWeb
{
    public partial class EditarPerfil : System.Web.UI.Page
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

                USUARIO_BANDA b = (USUARIO_BANDA)Session["login"];
                    txtnombre.Text = b.NOM_BANDA;
                    ddlEstilo.SelectedIndex = (int)b.ID_ESTILO -1;
                    ddlRegion.SelectedIndex = (int)b.ID_CIUDAD -1; 
                    txtinfluencia.Text = b.INFLUENCIAS;
                    txtDescripcion.Text = b.DESCRIPCION;
                
                
               
            }
        }



        protected void btnEditarPerfil_Click(object sender, EventArgs e)
        {
            lblNombreUsado.Text = "";
            lblPerfilCreado.Text="";
            USUARIO_BANDA b = (USUARIO_BANDA)Session["login"];
            System.Threading.Thread.Sleep(3000);
            if (b.NOM_BANDA==txtnombre.Text)
            {
                BandaController.crearPerfilBanda(b, txtnombre.Text,ddlRegion.SelectedIndex+1, ddlEstilo.SelectedIndex + 1, txtinfluencia.Text, txtDescripcion.Text);
                lblPerfilCreado.Text = "Perfil modificado exitosamente" ;

            }
            else
            {
                if (BandaController.buscarBandaNombre(txtnombre.Text) == "valido")
                {
                    
                    BandaController.crearPerfilBanda(b, txtnombre.Text,ddlRegion.SelectedIndex+1, ddlEstilo.SelectedIndex + 1, txtinfluencia.Text, txtDescripcion.Text);
                    
                    lblPerfilCreado.Text = "Perfil modificado exitosamente ";
                    
                }
                else
                {
                    BandaController.crearPerfilBanda(b,b.NOM_BANDA,ddlRegion.SelectedIndex+1, ddlEstilo.SelectedIndex + 1, txtinfluencia.Text, txtDescripcion.Text);
                    lblNombreUsado.Text = "El nombre de banda ya esta usado. Cambie el nombre.";
                    lblNombreUsado.ForeColor = Color.Red;
                }
            }
            

        }
    }
}