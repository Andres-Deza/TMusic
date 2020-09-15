using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TMusicWeb.Clases;


namespace TMusicWeb
{
    public partial class CrearAvisoSolista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            if (Session["idaviso"] != null)
            {
                if (!Page.IsPostBack)
                {
                    ddlRegion.DataSource = RegionController.getRegiones();
                    ddlRegion.DataBind();

                    ddltipoad.DataSource = TipoAvisoController.getTiposAvisos();
                    ddltipoad.DataBind();

                    ddltipoprod.DataSource = TipoProductoController.getTiposProducto();
                    ddltipoprod.DataBind();

                    string id = (string)Session["idaviso"];
                    AVISO a = AvisoController.buscarAvisoId(int.Parse(id));


                    txtDescripcion.Text = a.DESCRIPCION;
                    txtmarca.Text = a.MARCA;
                    txtnombre.Text = a.PRODUCTO;
                    txtprecio.Text = a.PRECIO.ToString();
                    ddlRegion.SelectedIndex = a.ID_CIUDAD - 1;
                    ddltipoad.SelectedIndex = a.ID_TIP_AVISO - 1;
                    ddltipoprod.SelectedIndex = a.ID_TIPO_PRODUCTO - 1;
                }

            }
            else
            {
                if (!Page.IsPostBack)
                {
                    ddlRegion.DataSource = RegionController.getRegiones();
                    ddlRegion.DataBind();

                    ddltipoad.DataSource = TipoAvisoController.getTiposAvisos();
                    ddltipoad.DataBind();

                    ddltipoprod.DataSource = TipoProductoController.getTiposProducto();
                    ddltipoprod.DataBind();


                }
            }
        }

        protected void btnCrearAviso_Click(object sender, EventArgs e)
        {
            lblAvisoAgregado.Text = "";
            lblNombreUsado.Text = "";
            USUARIO_SOLISTA s = (USUARIO_SOLISTA)Session["login"];
            if (Session["idaviso"] != null)
            {
                string id = (string)Session["idaviso"];
                AVISO a = AvisoController.buscarAvisoId(int.Parse(id));


                AvisoController.modificarAviso(a,txtnombre.Text, txtmarca.Text, DateTime.Now,
                    ddltipoad.SelectedIndex + 1, int.Parse(txtprecio.Text), ddltipoprod.SelectedIndex + 1,
                    ddlRegion.SelectedIndex + 1, s.APODO, txtDescripcion.Text);
                Session["idaviso"] = null;
                Response.Redirect("MisAvisosSolista.aspx");

            }
            else
            {
                AvisoController.crearAviso(txtnombre.Text, txtmarca.Text, DateTime.Now,
                   ddltipoad.SelectedIndex + 1, int.Parse(txtprecio.Text), ddltipoprod.SelectedIndex + 1,
                   ddlRegion.SelectedIndex + 1, s.APODO, txtDescripcion.Text);

                Response.Redirect("MisAvisosSolista.aspx");
            }
        }
    }
}