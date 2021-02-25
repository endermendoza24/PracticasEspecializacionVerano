using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CapaPresentacion
{
    public partial class facturacion : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Initial Catalog=VentaComputadoras;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregarVenta_Click(object sender, EventArgs e)
        {

            decimal tot, iv, des, subt;
            subt = Convert.ToDecimal(txtSubtotal.Value);
            iv = (subt * 15) / 100;
            des = ((subt * 10) / 100);
            tot = (subt + iv) - des;
            txtIVA.Value = iv.ToString();
            txtDescuento.Value = des.ToString();
            txtTotalVenta.Value = tot.ToString();

            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into [tblVentas] values('" + txtCodVentas.Value + "','" + txtFecha.Value + "','" + txtNombreCliente.Value + "','" + txtSubtotal.Value + "','" + txtIVA.Value + "','" + txtDescuento.Value + "','" + txtTotalVenta.Value + "','" + drIdEmpleado.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                dtgTablaVenta.DataBind();
                limpiar();
            }
            catch (Exception)
            {
                limpiar();
                Response.Write("<script> alert('error'); </script>");
            }

        }

        public void limpiar()
        {
            txtCodVentas.Value = "";
            txtFecha.Value = "";
            txtNombreCliente.Value = "";
            txtSubtotal.Value = "";
            txtIVA.Value = "";
            txtDescuento.Value = "";
            txtTotalVenta.Value = "";
            //drIdEmpleado.Text = "";
            //
            txtCodCompra.Value = "";
            txtFechaCompra.Value = "";
            //txtIdEmpleadoCompra.Text = "";
            txtSubtotalCompra.Value = "";
            txtIvaCompra.Value = "";
            txtDescuentoCompra.Value = "";
            txtTotalCompra.Value = "";
            //txtIdProveedorCompra.Text = "";
        }

        protected void btnGuardarCompra_Click(object sender, EventArgs e)
        {
            decimal tot, sub, iv, desc;
            sub = Convert.ToDecimal(txtSubtotalCompra.Value);
            iv = (sub * 15) / 100;
            desc = ((sub * 10) / 100);
            tot = (sub + iv) - desc;
            txtIvaCompra.Value = Convert.ToString(iv);
            txtDescuentoCompra.Value = Convert.ToString(desc);
            txtTotalCompra.Value = Convert.ToString(tot);



            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into [tblCompras] values('" + txtCodCompra.Value + "','" + txtFechaCompra.Value + "','" + txtIdEmpleadoCompra.Text + "','" + txtSubtotalCompra.Value + "','" + txtIvaCompra.Value + "','" + txtDescuentoCompra.Value + "','" + txtTotalCompra.Value + "','" + txtIdProveedorCompra.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                dtgMostrarCompra.DataBind();
                limpiar();
            }
            catch (Exception)
            {
                limpiar();
                Response.Write("<script> alert('Ocurrión un error'); </script>");
            }
        }
    }
}
