using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class MetodosAlmacen
    {
      
        VentaComputadorasEntities bd = new VentaComputadorasEntities();

        public bool insertarAlmacen(tblProductosAlmacen tabla)
        {
            bd.spInsertarProducto(tabla.codigoArticuloBodega, tabla.Costo, tabla.precioVenta,
                tabla.Existencia, tabla.Lote, tabla.idMarca, tabla.idArticulo,
                tabla.idBodega, tabla.idCompra, tabla.Descripcion);
            bd.SaveChanges();
            return true;
        }
    }
}
