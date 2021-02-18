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
            tabla.codigoVentaDetalles = tabla.codigoVentaDetalles;
            return metodoVenta.insertarVenta(tabla);
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
