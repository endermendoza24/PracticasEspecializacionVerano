using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;

namespace CapaPresentacion
{
    public partial class almacenProductos : System.Web.UI.Page
    {
        MetodosAlmacen metodoAlmacen = new MetodosAlmacen();
        EntidadesAlmacen entidadAlmacen = new EntidadesAlmacen();
        MetodosNegocio metodoNegocio = new MetodosNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            dtgBodega.DataBind();
        }

        protected void btnGuardarProducto_Click(object sender, EventArgs e)
        {

            guardarBodega();
        }

        public void guardarBodega()
        {
            try
            {
                entidadAlmacen.codigoArticuloBodega = Convert.ToInt32(txtCodigoArtBodega.Value);
                entidadAlmacen.Costo = Convert.ToDecimal(txtCosto.Value);
                entidadAlmacen.precioVenta = Convert.ToDecimal(txtPrecioVenta.Value);
                entidadAlmacen.Existencia = Convert.ToInt32(txtExistencia.Value);
                entidadAlmacen.Lote = Convert.ToString(txtLote.Value);
                entidadAlmacen.idMarca = Convert.ToInt32(txtIdMarca.Text);
                entidadAlmacen.idArticulo = Convert.ToInt32(txtIdArticulo.Text);
                entidadAlmacen.idBodega = Convert.ToInt32(txtIdBodega.Text);
                entidadAlmacen.idCompra = Convert.ToInt32(txtIdCompra.Text);
                entidadAlmacen.Descripcion = Convert.ToString(txtDescripcion.Value);
                metodoNegocio.insertarProducto(entidadAlmacen);
                dtgBodega.DataBind();
            }
            catch (Exception)
            {

                Response.Write("<script> alert('Ha ocurrido un error'); </script>");
            }
        }
    }
}