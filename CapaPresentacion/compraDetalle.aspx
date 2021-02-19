<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="compraDetalle.aspx.cs" Inherits="CapaPresentacion.compraDetalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <fieldset>
        <legend>Compra detalle</legend>

        <asp:TextBox ID="txtIdCompra" runat="server" placeholder="Id compra"></asp:TextBox>
        <asp:TextBox ID="txtIdArticulo" runat="server" placeholder="Id articulo"></asp:TextBox>
        <asp:TextBox ID="txtNombreArticulo" runat="server" placeholder="Nombre"></asp:TextBox>
        <asp:TextBox ID="txtCantidad" runat="server" placeholder="Descuento"></asp:TextBox>
        <asp:TextBox ID="txtPrecioUnitario" runat="server" placeholder="Precio unitario"></asp:TextBox>
        <asp:TextBox ID="txtDescuento" runat="server" placeholder="Descuento"></asp:TextBox>
        <asp:TextBox ID="txtTotal" runat="server" placeholder="total"></asp:TextBox>
        <asp:TextBox ID="txtIdMarca" runat="server" placeholder="Marca"></asp:TextBox>
        <asp:Button ID="btnInsertarCompra" runat="server" Text="Insertar" OnClick="btnInsertarCompra_Click" />

    </fieldset>
    <asp:GridView ID="gvMostrarCompras" runat="server" AutoGenerateColumns="False" DataKeyNames="idCompra,idArticulo" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="idCompra" HeaderText="idCompra" ReadOnly="True" SortExpression="idCompra" />
            <asp:BoundField DataField="idArticulo" HeaderText="idArticulo" ReadOnly="True" SortExpression="idArticulo" />
            <asp:BoundField DataField="nombreArticulo" HeaderText="nombreArticulo" SortExpression="nombreArticulo" />
            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
            <asp:BoundField DataField="precioUnitario" HeaderText="precioUnitario" SortExpression="precioUnitario" />
            <asp:BoundField DataField="Descuento" HeaderText="Descuento" SortExpression="Descuento" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
            <asp:BoundField DataField="idMarca" HeaderText="idMarca" SortExpression="idMarca" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VentaComputadorasConnectionString7 %>" SelectCommand="SELECT * FROM [tblComprasDetalle]"></asp:SqlDataSource>
</asp:Content>
