using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class MetodosAlmacen
    {
        EntidadesAlmacen entidades = new EntidadesAlmacen();
        VentaComputadorasEntities bd = new VentaComputadorasEntities();

        public bool insertarAlmacen(tblProductosAlmacen tabla)
        {
            bd.spInsertarProducto(entidades.codigoArticuloBodega, entidades.Costo, entidades.precioVenta,
                entidades.Existencia, entidades.Lote, entidades.idMarca, entidades.idArticulo, entidades.idBodega,
                entidades.idCompra, entidades.Descripcion);
            bd.SaveChanges();
            return true;
        }
    }
}
