using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMusicWeb
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            lblCorreoUsado.Text = "";
            USUARIO_BANDA b = BandaController.buscarBandaCorreo(txtcorreo.Text);
            USUARIO_SOLISTA s = SolistaController.buscarSolistaCorreo(txtcorreo.Text);
            if (b == null && s == null)
            {
                if (txtcontrasenia.Text == txtconfirmcontrasenia.Text)
                {
                    if (ddltipocuenta.SelectedValue.Equals("banda"))
                    {
                        BandaController.crearBanda(txtnombre.Text, txtapellido.Text, txtcorreo.Text, txtcontrasenia.Text);
                        USUARIO_BANDA t = BandaController.lista().Last();
                        Session["login"] = t;
                        Response.Redirect("EditarPerfilBanda.aspx");

                        lblCorreoUsado.Text = "Se CREO CUENTA BANDA";
                    }
                    else
                    {
                        SolistaController.crearsolista(txtnombre.Text, txtapellido.Text, txtcorreo.Text, txtcontrasenia.Text);
                        USUARIO_SOLISTA t = SolistaController.lista().Last();
                        Session["login"] = t;
                        Response.Redirect("EditarPerfilSolista.aspx");
                        lblCorreoUsado.Text = "Se CREO CUENTA SOLISTA";
                    }
                    
                }

            }
            else
            {
                lblCorreoUsado.Text = "Correo usado. Use otro.";
                lblCorreoUsado.ForeColor = Color.Red;
            }
            

        }

        protected void contrasenia_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtconfirmcontrasenia_TextChanged(object sender, EventArgs e)
        {

        }
    }
}