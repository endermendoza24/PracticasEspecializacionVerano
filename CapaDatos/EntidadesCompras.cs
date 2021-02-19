using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class EntidadesCompras
    {
        public int idCompra { get; set; }
        public int idArticulo { get; set; }
        public string nombreArticulo { get; set; }
        public int Cantidad { get; set; }
        public decimal precioUnitario { get; set; }
        public decimal Descuento { get; set; }
        public decimal Total { get; set; }
        public int idMarca { get; set; }

        public virtual catArticulos catArticulos { get; set; }
        public virtual catMarcas catMarcas { get; set; }
        public virtual tblCompras tblCompras { get; set; }


    }
}
