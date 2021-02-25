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
    public partial class catArticulo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Initial Catalog=VentaComputadoras;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            dtgCatEMpleados.DataBind();
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

        protected void btnGuardarEmpleado_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open(); //  se abre la conexion con la bd
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into [catEmpleados] values('" + txtCodEmpleado.Text + "' ,'" + txtNombreEmpleado.Text + "' ,'" + txtPrimerApellido.Text + "','" + txtSegundoApellido.Text + "')"; //  Aqui se inserta de manera directa los valores de los textbox  a la bd
                cmd.ExecuteNonQuery();
                con.Close(); //  se cierra la bd
                dtgCatEMpleados.DataBind();
                limpiarControles();
            }
            catch (Exception)
            {
                limpiarControles();
                Response.Write("<script> alert('Ocurrió un error fatal'); </script>");
            }

        }

        protected void dtgMarcas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnGuardarCatMarca_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open(); //  se abre la conexion con la bd
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into [catMarcas] values('" + txtCodMarca.Value + "' ,'" + txtMarca.Value + "' ,'" + txtDescripcion.Value + "')"; //  Aqui se inserta de manera directa los valores de los textbox  a la bd
                cmd.ExecuteNonQuery();
                con.Close(); //  se cierra la bd
                limpiarControles();
                dtgMarcas.DataBind();
            }
            catch (Exception)
            {
                limpiarControles();
                Response.Write("<script> alert('Ocurrió un error fatal'); </script>");
            }

        }

        protected void btnGuardarCatCat_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open(); //  se abre la conexion con la bd
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into [catCategorias] values('" + txtCodCategoria.Value + "' ,'" + txtCategoria.Value + "' ,'" + txtDescripcionCat.Value + "')"; //  Aqui se inserta de manera directa los valores de los textbox  a la bd
                cmd.ExecuteNonQuery();
                con.Close(); //  se cierra la bd
                dtgMostrarCate.DataBind();
                limpiarControles();
            }
            catch (Exception)
            {
                limpiarControles();
                Response.Write("<script> alert('Ocurrió un error fatal'); </script>");
            }
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


        protected void btnGuardarBodega_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open(); //  se abre la conexion con la bd
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into [catBodega] values('" + txtBodegaCodigo.Value + "' ,'" + txtBodega.Value + "')"; //  Aqui se inserta de manera directa los valores de los textbox  a la bd
                cmd.ExecuteNonQuery();
                con.Close(); //  se cierra la bd
                dtgBodega.DataBind();
                limpiarControles();
            }
            catch (Exception)
            {
                limpiarControles();
                Response.Write("<script> alert('Ocurrión un gravísimo error'); </script>");
            }
        }

              public void limpiarControles()
        {
            //  cat proveedores
            txtCodProveedor.Value = "";
            txtNombreEmpresa.Value = "";
            txtTelefono.Value = "";
            txtCiudad.Value = "";
            txtDepartamento.Value = "";
            //  Cat Marca
            txtCodMarca.Value = "";
            txtMarca.Value = "";
            txtDescripcion.Value = "";
            //  cat cat
            txtCodCategoria.Value = "";
            txtCategoria.Value = "";
            txtDescripcionCat.Value = "";
            //  Cat articulos
            txtCodigoArticulo.Value = "";
            txtNombreArticulo.Text = "";
            txtIdCategoria.Text = "";
            //  cat empleados
            txtCodEmpleado.Text = "";
            txtNombreEmpleado.Text = "";
            txtPrimerApellido.Text = "";
            txtSegundoApellido.Text = "";
            //  cat bodegas
            txtBodegaCodigo.Value = "";
            txtBodega.Value = "";

        }
    }
    }
