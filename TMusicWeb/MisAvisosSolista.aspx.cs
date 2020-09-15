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
    public partial class MisAvisosSolista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            USUARIO_SOLISTA b = (USUARIO_SOLISTA)Session["login"];
            grdMisavisos.DataSource = from c in AvisoController.lista()
                                      from t in TipoAvisoController.listaTipoAvisos()
                                      from o in TipoProductoController.listaProducto()
                                      from r in RegionController.listaRegiones()
                                      where 
                                      c.ID_TIP_AVISO.Equals(t.ID_TIP_AVISO)
                                      && c.ID_TIPO_PRODUCTO.Equals(o.ID_TIPO_PRODUCTO)
                                      && c.VENDEDOR == b.APODO
                                      && c.ID_CIUDAD.Equals(r.ID_CIUDAD)
                                      select new
                                      {
                                          ID = c.ID_AVISO,
                                          Producto = c.PRODUCTO,
                                          Marca = c.MARCA,
                                          Tipo_Aviso = t.NOM_TIP_AVISO,
                                          Tipo_Producto = o.NOM_TIPO_PROD,
                                          Precio = c.PRECIO,
                                          Region = r.NOM_CIUDAD,
                                          Descripcion = c.DESCRIPCION,
                                          Vendedor = c.VENDEDOR,
                                          Fecha = c.FECHA

                                      };
            grdMisavisos.DataBind();
        }

        protected void btneditar_Click(object sender, EventArgs e)
        {
            Session["idaviso"] = txtBuscar.Text;
            string id = (string)Session["idaviso"];
            AVISO a = AvisoController.buscarAvisoId(int.Parse(id));
            if (a == null)
            {
                lblMsj.Text = "Aviso no encontrado";
                lblMsj.ForeColor = Color.Red;
            }
            else
            {
                Response.Redirect("CrearAvisoSolista.aspx");
            }

        }
    }
}