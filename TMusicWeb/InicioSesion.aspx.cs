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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            USUARIO_BANDA b = BandaController.buscarBandaCorreo(txtcorreo.Text);
            USUARIO_SOLISTA s = SolistaController.buscarSolistaCorreo(txtcorreo.Text);
            USUARIO u = UsuarioController.buscarUsuarioCorreo(txtcorreo.Text);
            if (b != null || s != null || u!=null)
            {
                if (b != null)
                {
                    if (b.CONTRASENA.Equals(txtcontrasenia.Text))
                    {
                        Session["login"] = b;
                        Response.Redirect("MarketBand.aspx");
                    }
                    else
                    {
                        lblRespuesta.Text = "Correo o contraseña incorrecta";
                        lblRespuesta.ForeColor = Color.Red;
                    }
                }
                if (s!=null)
                {
                    if (s.CONTRASENA.Equals(txtcontrasenia.Text))
                    {
                        Session["login"] = s;
                        Response.Redirect("MarketBandSolista.aspx");
                    }
                    else
                    {
                        lblRespuesta.Text = "Correo o contraseña incorrecta";
                        lblRespuesta.ForeColor = Color.Red;
                    }
                }
                else
                {
                    if (u != null)
                    {
                        if (u.CONTRASENA.Equals(txtcontrasenia.Text))
                        {
                            Session["login"] = u;
                            Response.Redirect("AdminBandas.aspx");
                        }
                        else
                        {
                            lblRespuesta.Text = "Correo o contraseña incorrecta";
                            lblRespuesta.ForeColor = Color.Red;
                        }
                    }
                }
                
            }
            else
            {
                lblRespuesta.Text = "Usuario Inexistente";
                lblRespuesta.ForeColor = Color.Red;
            }

        }

        protected void lnkAgregarBandas_Click(object sender, EventArgs e)
        {
            //BandaController.multibandas();
        }

        protected void lnkAgregarSolista_Click(object sender, EventArgs e)
        {
          
        }

        protected void lnkAgregarAdmin_Click(object sender, EventArgs e)
        {
            UsuarioController.CrearAdmin();
        }

        protected void lnkAgregarAvisos_Click(object sender, EventArgs e)
        {
            
        }
    }
}