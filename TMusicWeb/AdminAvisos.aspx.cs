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
    public partial class AdminAvisos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            grdProductos.DataSource = from c in AvisoController.lista()
                                      from t in TipoAvisoController.listaTipoAvisos()
                                      from o in TipoProductoController.listaProducto()
                                      from r in RegionController.listaRegiones()
                                      where
                                      c.ID_TIP_AVISO.Equals(t.ID_TIP_AVISO)
                                      && o.ID_TIPO_PRODUCTO.Equals(c.ID_TIPO_PRODUCTO)
                                      && c.ID_CIUDAD.Equals(r.ID_CIUDAD)

                                      select new
                                      {
                                          ID = c.ID_AVISO,
                                          Producto = c.PRODUCTO,
                                          Marca = c.MARCA,
                                          Tipo_Aviso = t.NOM_TIP_AVISO,
                                          Tipo_Producto = o.NOM_TIPO_PROD,
                                          Precio = c.PRECIO,
                                          Descripcion = c.DESCRIPCION,
                                          Vendedor = c.VENDEDOR,
                                          Fecha = c.FECHA

                                      };
            grdProductos.DataBind();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

            AVISO b = AvisoController.buscarAvisoId(int.Parse(txtBuscar.Text));
            System.Threading.Thread.Sleep(3000);
            if (b != null)
            {
                AvisoController.eliminarAvisos(b);
                lblNoEncontrado.ForeColor = Color.Blue;
                lblNoEncontrado.Text = "Avisos con ID: " + txtBuscar.Text + " eliminado exitosamente.";
            }
            else
            {
                lblNoEncontrado.ForeColor = Color.Red;
                lblNoEncontrado.Text = "Aviso no Encontrado.";
            }
            Actualizar();

        }

        public void Actualizar()
        {
            grdProductos.DataSource = from c in AvisoController.lista()
                                      from t in TipoAvisoController.listaTipoAvisos()
                                      from o in TipoProductoController.listaProducto()
                                      from r in RegionController.listaRegiones()
                                      where 
                                      c.ID_TIP_AVISO.Equals(t.ID_TIP_AVISO)
                                      && o.ID_TIPO_PRODUCTO.Equals(c.ID_TIPO_PRODUCTO)
                                      && c.ID_CIUDAD.Equals(r.ID_CIUDAD)
                                      select new
                                      {
                                          ID = c.ID_AVISO,
                                          Producto = c.PRODUCTO,
                                          Marca = c.MARCA,
                                          Tipo_Aviso = t.NOM_TIP_AVISO,
                                          Tipo_Producto = o.NOM_TIPO_PROD,
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