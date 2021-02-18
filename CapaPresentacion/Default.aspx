<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CapaPresentacion.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset class="card-body">
            <legend>
                Enviar datos
            </legend>
            <label>Id venta</label>
            <asp:TextBox ID="txtIdventa" runat="server"></asp:TextBox>
            <br />
            <label>Id Articulo</label>
            <asp:TextBox ID="txtIdArticulo" runat="server"></asp:TextBox>
            <br />
            <label>Nombre producto</label>
            <asp:TextBox ID="txtNombreProducto" runat="server"></asp:TextBox>
            <br />
            <label>Cantidad</label>
            <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
            <br />
            <label>Precio unitario</label>
            <asp:TextBox ID="txtPrecioUnitario" runat="server"></asp:TextBox>
            <br />
            <label>Descuento</label>
            <asp:TextBox ID="txtDescuento" runat="server"></asp:TextBox>
            <br />
            <label>Subtotal</label>
            <asp:TextBox ID="txtSubtotal" runat="server"></asp:TextBox>
            <br />
            <label>Total</label>
            <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
            <br />
            <label>Codigo venta detalles</label>
            <asp:TextBox ID="txtCodVenta" runat="server"></asp:TextBox>
            <br />

            <asp:Button ID="btnGuardar" runat="server" Text="Guardar1" OnClick="btnGuardar_Click" />
            
        </fieldset>

    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VentaComputadorasConnectionString %>" SelectCommand="SELECT * FROM [tblVentasDetalle]"></asp:SqlDataSource>
        <asp:GridView ID="dtgMostrarDatos" runat="server" DataSourceID="SqlDataSource1" CssClass="table table-bordered"> </asp:GridView>
    </div>
</asp:Content>
