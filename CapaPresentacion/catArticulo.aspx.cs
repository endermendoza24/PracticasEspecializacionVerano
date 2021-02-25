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
    public partial class catArticulo1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Initial Catalog=VentaComputadoras;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into [catArticulos] values('" + txtCodigoArticulo.Value + "','" + txtNombreArticulo.Text + "','" + txtIdCategoria.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                dtgCatArt.DataBind();
                limpiarControles();
            }
            catch (Exception)
            {
                limpiarControles();
                Response.Write("<script> alert('ocurrio un error'); </script>");
            }
        }
        public void limpiarControles()
        {
            //  Cat articulos
            txtCodigoArticulo.Value = "";
            txtNombreArticulo.Text = "";
            txtIdCategoria.Text = "";
        }
    }
}