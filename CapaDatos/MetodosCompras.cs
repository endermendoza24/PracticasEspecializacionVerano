using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class MetodosCompras
    {
        VentaComputadorasEntities tablaCompras = new VentaComputadorasEntities();
        EntidadesCompras entidadCompra = new EntidadesCompras();

        public bool insertarCompra(tblComprasDetalle entidadCompra)
        {
            tablaCompras.spInsertarCompra(entidadCompra.idCompra, entidadCompra.idArticulo, entidadCompra.nombreArticulo, 
                entidadCompra.Cantidad, entidadCompra.precioUnitario, entidadCompra.Descuento, entidadCompra.Total,
                entidadCompra.idMarca);
            tablaCompras.SaveChanges();
            return true;
        }

        //public void modificarCompras()
        //{
        //    tablaCompras.spModificarCompra(entidadCompra.idCompra, entidadCompra.idArticulo, entidadCompra.nombreArticulo,
        //        entidadCompra.Cantidad, entidadCompra.precioUnitario, entidadCompra.Descuento, entidadCompra.Total,
        //        entidadCompra.idMarca);
        //    tablaCompras.SaveChanges();
        //}

        //public void eliminarCompras()
        //{
        //    tablaCompras.spEliminarCompra(entidadCompra.idCompra);
        //    tablaCompras.SaveChanges();
        //}
    }

}
