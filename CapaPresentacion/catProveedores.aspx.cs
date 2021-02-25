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
    public partial class catProveedores : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Initial Catalog=VentaComputadoras;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardarProveedor_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open(); //  se abre la conexion con la bd
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into [catProveedores] values('" + txtCodProveedor.Value + "' ,'" + txtNombreEmpresa.Value + "' ,'" + txtTelefono.Value + "','" + txtCiudad.Value + "','" + txtDepartamento.Value + "')"; //  Aqui se inserta de manera directa los valores de los textbox  a la bd
                cmd.ExecuteNonQuery();
                con.Close(); //  se cierra la bd
                dtgProveedore.DataBind();
                limpiarControles();
            }
            catch (Exception)
            {
                limpiarControles();
                Response.Write("<script> alert('Ocurrió un error fatal'); </script>");
            }
        }

        public void limpiarControles()
        {
            txtCodProveedor.Value = "";
            txtNombreEmpresa.Value = "";
            txtTelefono.Value = "";
            txtCiudad.Value = "";
            txtDepartamento.Value = "";
        }
    }
}