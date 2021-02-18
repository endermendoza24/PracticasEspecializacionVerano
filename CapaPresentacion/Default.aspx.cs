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
    public partial class Default : System.Web.UI.Page
    {
        MetodosVenta metodo = new MetodosVenta();
        EntidadesVentas entidades = new EntidadesVentas();
        MetodosNegocio metodoNegocio = new MetodosNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            entidades.idVenta = Convert.ToInt32(txtIdventa.Text);
            entidades.idArticulo = Convert.ToInt32(txtIdArticulo.Text);
            entidades.nombreProducto = Convert.ToString(txtNombreProducto.Text);
            entidades.Cantidad = Convert.ToInt32(txtCantidad.Text);
            entidades.PrecioUnitario = Convert.ToDecimal(txtPrecioUnitario.Text);
            entidades.Descuento = Convert.ToDecimal(txtDescuento.Text);
            entidades.Subtotal = Convert.ToDecimal(txtSubtotal.Text);
            entidades.Total = Convert.ToDecimal(txtTotal.Text);
            entidades.codigoVentaDetalles = Convert.ToInt32(txtCodVenta.Text);
            metodoNegocio.insertarVenta(entidades);

        }
    }
}