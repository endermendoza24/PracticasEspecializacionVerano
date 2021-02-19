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
        MetodosAlmacen metodoAlmacen = new MetodosAlmacen();

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

        public bool insertarProducto(EntidadesAlmacen entidad)
        {
            tblProductosAlmacen tabla = new tblProductosAlmacen();
            tabla.codigoArticuloBodega = entidad.codigoArticuloBodega;
            tabla.Costo = entidad.Costo;
            tabla.precioVenta = entidad.precioVenta;
            tabla.Existencia = entidad.Existencia;
            tabla.Lote = entidad.Lote;
            tabla.idMarca = entidad.idMarca;
            tabla.idArticulo = entidad.idArticulo;
            tabla.idBodega = entidad.idBodega;
            tabla.idCompra = entidad.idCompra;
            tabla.Descripcion = entidad.Descripcion;

            return metodoAlmacen.insertarAlmacen(tabla);

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
