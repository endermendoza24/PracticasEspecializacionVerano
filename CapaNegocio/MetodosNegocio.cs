using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
   public class MetodosNegocio
    {
        MetodosVenta metodoVenta = new MetodosVenta();
        MetodosCompras metodoCompra = new MetodosCompras();

        public bool insertarVenta(EntidadesVentas entidad)
        {
            tblVentasDetalle tabla = new tblVentasDetalle();
            tabla.idVenta = entidad.idVenta;
            tabla.idArticulo = entidad.idArticulo;
            tabla.nombreProducto = entidad.nombreProducto;
            tabla.Cantidad = entidad.Cantidad;
            tabla.PrecioUnitario = entidad.PrecioUnitario;
            tabla.Descuento = entidad.Descuento;
            tabla.Subtotal = entidad.Subtotal;
            tabla.Total = entidad.Total;
            tabla.codigoVentaDetalles = entidad.codigoVentaDetalles;
            return metodoVenta.insertarVenta(tabla);
        }

        public bool insertarCompra(EntidadesCompras entidad)
        {
            tblComprasDetalle tabla = new tblComprasDetalle();
            tabla.idCompra = entidad.idCompra;
            tabla.idArticulo = entidad.idArticulo;
            tabla.nombreArticulo = entidad.nombreArticulo;
            tabla.Cantidad = entidad.Cantidad;
            tabla.precioUnitario = entidad.precioUnitario;
            tabla.Descuento = entidad.Descuento;
            tabla.Total = entidad.Total;
            tabla.idMarca = entidad.idMarca;

            return metodoCompra.insertarCompra(tabla);
        }
        public bool modificarVenta(EntidadesVentas entidad)
        {
            tblVentasDetalle tabla = new tblVentasDetalle();
            tabla.idVenta = entidad.idVenta;
            tabla.idArticulo = entidad.idArticulo;
            tabla.nombreProducto = entidad.nombreProducto;
            tabla.Cantidad = entidad.Cantidad;
            tabla.PrecioUnitario = entidad.PrecioUnitario;
            tabla.Descuento = entidad.Descuento;
            tabla.Subtotal = entidad.Subtotal;
            tabla.Total = entidad.Total;
            tabla.codigoVentaDetalles = tabla.codigoVentaDetalles;
            return metodoVenta.modificarVenta(tabla);
        }

        public void borrarVenta()
        {
            metodoVenta.eliminarVenta();

        }

    }
}
