﻿using System;
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
            guardarVenta();
        }

        public void guardarVenta()
        {
            try
            {
                entidades.idVenta = Convert.ToInt32(txtIdVenta.Text);
                entidades.idArticulo = Convert.ToInt32(txtIdArticulo.Text);
                entidades.nombreProducto = Convert.ToString(txtNombreProducto.Value);
                entidades.Cantidad = Convert.ToInt32(txtCantidad.Value);
                entidades.PrecioUnitario = Convert.ToDecimal(txtPrecioUnitario.Value);
                //entidades.Descuento = Convert.ToDecimal(txtDescuento.Value);
                //entidades.Subtotal = Convert.ToDecimal(txtSubtotal.Value);
                //entidades.Total = Convert.ToDecimal(txtTotal.Value);
                entidades.Subtotal = entidades.Cantidad * entidades.PrecioUnitario;
                entidades.Descuento = (entidades.Subtotal * 10) / 100;
                entidades.Total = (entidades.Subtotal - entidades.Descuento);
                entidades.codigoVentaDetalles = Convert.ToInt32(txtCodVenta.Value);
                metodoNegocio.insertarVenta(entidades);
                dtgMostrarDatos.DataBind();

            }
            catch (Exception)
            {
                Response.Write("<script> alert('Ha ocurrido un error inesperado'); </script>");
            }
        }
    }
}