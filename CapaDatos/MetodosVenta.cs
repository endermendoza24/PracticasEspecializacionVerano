using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class MetodosVenta
    {
        VentaComputadorasEntities tablaVenta = new VentaComputadorasEntities();
        EntidadesVentas entidadVenta = new EntidadesVentas(); // posuble error

        public bool insertarVenta(tblVentasDetalle entidadVenta)
        {
            tablaVenta.spInsertar(entidadVenta.idVenta, entidadVenta.idArticulo, entidadVenta.nombreProducto,
                entidadVenta.Cantidad, entidadVenta.PrecioUnitario, entidadVenta.Descuento, entidadVenta.Subtotal,
                entidadVenta.Total, entidadVenta.codigoVentaDetalles);
            tablaVenta.SaveChanges();
            return true;
        }

        public bool modificarVenta(tblVentasDetalle entidadVenta)
        {
            tablaVenta.spModificar(entidadVenta.idVenta, entidadVenta.idArticulo, entidadVenta.nombreProducto,
                entidadVenta.Cantidad, entidadVenta.PrecioUnitario, entidadVenta.Descuento, entidadVenta.Subtotal,
                entidadVenta.Total, entidadVenta.codigoVentaDetalles);
            tablaVenta.SaveChanges();
            return true;
        }

        public void eliminarVenta()
        {
            tablaVenta.spEliminar(entidadVenta.codigoVentaDetalles);
            tablaVenta.SaveChanges();
        }
    }
}
