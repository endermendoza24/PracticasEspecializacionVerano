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
    
    public partial class tblVentas
    {
        public tblVentas()
        {
            this.tblVentasDetalle = new HashSet<tblVentasDetalle>();
        }
    
        public int codigoVentas { get; set; }
        public System.DateTime FechaVenta { get; set; }
        public string Cliente { get; set; }
        public decimal Subtotal { get; set; }
        public decimal IVA { get; set; }
        public decimal Descuento { get; set; }
        public decimal Total { get; set; }
        public int idEmpleado { get; set; }
    
        public virtual catEmpleados catEmpleados { get; set; }
        public virtual ICollection<tblVentasDetalle> tblVentasDetalle { get; set; }
    }
}
