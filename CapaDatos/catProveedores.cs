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
    
    public partial class catProveedores
    {
        public catProveedores()
        {
            this.tblCompras = new HashSet<tblCompras>();
        }
    
        public int codigoProveedor { get; set; }
        public string nombreEmpresa { get; set; }
        public string Telefono { get; set; }
        public string Ciudad { get; set; }
        public string Departamento { get; set; }
    
        public virtual ICollection<tblCompras> tblCompras { get; set; }
    }
}
