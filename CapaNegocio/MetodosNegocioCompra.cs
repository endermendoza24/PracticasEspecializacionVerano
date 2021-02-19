using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class MetodosNegocioCompra
    {
        MetodosCompras metodo = new MetodosCompras();

        public bool insertarCompra(EntidadesCompras entidad)
        {
            tblComprasDetalle tabla = new tblComprasDetalle();
            tabla.idCompra = entidad.idCompra;
            tabla.idArticulo = entidad.idArticulo;
            tabla.nombreArticulo = entidad.nombreArticulo;
            tabla.Cantidad = entidad.Cantidad;
            tabla.precioUnitario = entidad.precioUnitario;
            tabla.Descuento = entidad.Descuento;            
            tabla.Total = entidad.Total;
            tabla.idMarca = entidad.idMarca;
            
            return metodo.insertarCompra(tabla);
        }
    }
}
