using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class EntidadesAlmacen
    {
        public int codigoArticuloBodega { get; set; }
        public decimal Costo { get; set; }
        public decimal precioVenta { get; set; }
        public int Existencia { get; set; }
        public string Lote { get; set; }
        public int idMarca { get; set; }
        public int idArticulo { get; set; }
        public int idBodega { get; set; }
        public int idCompra { get; set; }
        public string Descripcion { get; set; }

        public virtual catArticulos catArticulos { get; set; }
        public virtual catBodega catBodega { get; set; }
        public virtual catMarcas catMarcas { get; set; }
    }
}
