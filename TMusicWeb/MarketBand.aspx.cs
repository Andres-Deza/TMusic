using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TMusicWeb.Clases;

namespace TMusicWeb
{
    public partial class MarketBand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            grdProductos.DataSource = from c in AvisoController.lista() 
                                      from t in TipoProductoController.listaProducto()
                                      from o in TipoAvisoController.listaTipoAvisos()
                                      from r in RegionController.listaRegiones()
                                      where t.ID_TIPO_PRODUCTO.Equals(c.ID_TIPO_PRODUCTO)
                                      && c.ID_TIP_AVISO.Equals(o.ID_TIP_AVISO)
                                      && c.ID_CIUDAD.Equals(r.ID_CIUDAD)
                                      select new
                                      {
                                          Producto = c.PRODUCTO,
                                          Marca= c.MARCA,
                                          Tipo_Aviso = o.NOM_TIP_AVISO,
                                          Tipo_Producto = t.NOM_TIPO_PROD,
                                          Precio = c.PRECIO,
                                          Region= r.NOM_CIUDAD,
                                          Descripcion = c.DESCRIPCION,
                                          Vendedor = c.VENDEDOR,
                                          Fecha = c.FECHA
                                      };
            grdProductos.DataBind();
        }
        

    }
}