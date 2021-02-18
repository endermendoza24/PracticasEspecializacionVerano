using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class EntidadesVentas
    {
        public int idVenta { get; set; }
        public int idArticulo { get; set; }
        public string nombreProducto { get; set; }
        public int Cantidad { get; set; }
        public decimal PrecioUnitario { get; set; }
        public decimal Descuento { get; set; }
        public decimal Subtotal { get; set; }
        public decimal Total { get; set; }
        public int codigoVentaDetalles { get; set; }

        public virtual catArticulos catArticulos { get; set; }
        public virtual tblVentas tblVentas { get; set; }
    }
}
