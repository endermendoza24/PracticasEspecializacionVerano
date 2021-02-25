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
            gvMostrarCompras.DataBind();
        }

        protected void btnInsertarCompra_Click(object sender, EventArgs e)
        {
            try
            {
                entidadCompra.idCompra = Convert.ToInt32(txtIdCompra.Text);
                entidadCompra.idArticulo = Convert.ToInt32(txtIdArticulo.Text);
                entidadCompra.nombreArticulo = Convert.ToString(txtNombreArticulo.Value);
                entidadCompra.Cantidad = Convert.ToInt32(txtCantidad.Value);
                entidadCompra.precioUnitario = Convert.ToDecimal(txtPrecioUnitario.Value);
                //entidadCompra.Descuento = Convert.ToDecimal(txtDescuento.Value);
                //entidadCompra.Total = Convert.ToDecimal(txtTotal.Value);
                entidadCompra.Descuento = (10 * (entidadCompra.Cantidad * entidadCompra.precioUnitario) / 100);
                entidadCompra.Total = (Convert.ToDecimal(txtCantidad.Value) * Convert.ToDecimal(txtPrecioUnitario.Value) -
                    Convert.ToDecimal(txtDescuento.Value));
                txtTotal.Value = Convert.ToString(entidadCompra.Total);
                entidadCompra.idMarca = Convert.ToInt32(drpMarca.Text);
                metodo.insertarCompra(entidadCompra);
                gvMostrarCompras.DataBind();
                limpiar();
            }
            catch (Exception)
            {
                gvMostrarCompras.DataBind();
                limpiar();
                Response.Redirect("<script> alert('Ha ocurrido un error inesperado'); </script>");
            }
        }

        public void limpiar()
        {
            txtIdCompra.SelectedValue = "";
            txtIdArticulo.Text = "";
            txtNombreArticulo.Value = "";
            txtCantidad.Value = "";
            txtDescuento.Value = "";
            txtPrecioUnitario.Value = "";
            txtTotal.Value = "";
            //drpMarca.Text = "";
        }
    }
}