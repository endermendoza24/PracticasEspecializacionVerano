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
    public partial class compraDetalle : System.Web.UI.Page
    {
        MetodosNegocioCompra metodoCompra = new MetodosNegocioCompra();
        EntidadesCompras entidadCompra = new EntidadesCompras();
        MetodosNegocio metodo = new MetodosNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsertarCompra_Click(object sender, EventArgs e)
        {
            try
            {
                entidadCompra.idCompra = Convert.ToInt32(txtIdCompra.Text);
                entidadCompra.idArticulo = Convert.ToInt32(txtIdArticulo.Text);
                entidadCompra.nombreArticulo = Convert.ToString(txtNombreArticulo.Text);
                entidadCompra.Cantidad = Convert.ToInt32(txtCantidad.Text);
                entidadCompra.precioUnitario = Convert.ToDecimal(txtPrecioUnitario.Text);
                entidadCompra.Descuento = Convert.ToDecimal(txtDescuento.Text);
                entidadCompra.Total = Convert.ToDecimal(txtTotal.Text);
                entidadCompra.idMarca = Convert.ToInt32(txtIdMarca.Text);
                metodo.insertarCompra(entidadCompra);
                gvMostrarCompras.DataBind();
            }
            catch (Exception)
            {

                Response.Redirect("ventasDetalles.aspx");
            }
        }
    }
}