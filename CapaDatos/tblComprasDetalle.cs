//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CapaDatos
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblComprasDetalle
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
