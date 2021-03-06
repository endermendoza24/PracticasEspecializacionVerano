﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
CodeBehind="ventasDetalles.aspx.cs" Inherits="CapaPresentacion.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  

  <div class="container" id="ventasDetalles">
    <h2>Ventas detalles</h2>

    <div class="form-group">
      <label for="first-name">Id ventas</label>      
      <asp:DropDownList
        ID="txtIdVenta"
        CssClass="form-control"
        runat="server"
        DataSourceID="tablaVentas"
        DataTextField="codigoVentas"
        DataValueField="codigoVentas"
      ></asp:DropDownList>
      <asp:SqlDataSource
        ID="tablaVentas"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:VentaComputadorasConnectionString2 %>"
        SelectCommand="SELECT * FROM [tblVentas]"
      ></asp:SqlDataSource>
    </div>
    <div class="form-group">
      <label for="last-name">Id artículo</label>      
      <asp:DropDownList
        ID="txtIdArticulo"
        CssClass="form-control"
        runat="server"
        DataSourceID="tablaArt"
        DataTextField="codigoArticulo"
        DataValueField="codigoArticulo"
      ></asp:DropDownList>
      <asp:SqlDataSource
        ID="tablaArt"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:VentaComputadorasConnectionString3 %>"
        SelectCommand="SELECT * FROM [catArticulos]"
      ></asp:SqlDataSource>
    </div>
    <div class="form-group">
      <label for="country">Nombre producto</label>
      <input type="text" class="form-control" placeholder="Nombre producto" id="txtNombreProducto" runat="server" />
    </div>
    <div class="form-group">
      <label for="number">Cantidad</label>
      <input type="number" class="form-control" placeholder="Cantidad" id="txtCantidad" runat="server" />
    </div>
    <div class="form-group">
      <label for="age">Precio unitario</label>
      <input type="number" class="form-control" placeholder="Precio unitario" id="txtPrecioUnitario" runat="server" />
    </div>
    <div class="form-group">
      <label for="email">Descuento</label>
      <input type="number" class="form-control" placeholder="Descuento" id="txtDescuento" runat="server" />
    </div>
    <div class="form-group">
      <label for="category">Subtotal</label>
      <input type="number" class="form-control" placeholder="Subtotal" id="txtSubtotal" runat="server" />
    </div>
    <div class="form-group">
      <label for="education">Total</label>
      <input type="number" class="form-control" placeholder="Total" id="txtTotal" runat="server" />
    </div>
    <div class="form-group">
      <label for="education">Código venta detalles</label>
      <input type="number" class="form-control" placeholder="Código venta detalles" id="txtCodVenta" runat="server" />
    </div>

    <div class="clearfix">
      <button
        type="submit"
        class="btn btn-info btn-lg btn-responsive"
        id="btnGuardar"
        runat="server"
        onserverclick="btnGuardar_Click"
      >
        Guardar
      </button>
      <div></div>
    </div>

    <asp:SqlDataSource
      ID="SqlDataSource1"
      runat="server"
      ConnectionString="<%$ ConnectionStrings:VentaComputadorasConnectionString %>"
      SelectCommand="SELECT * FROM [tblVentasDetalle]"
      UpdateCommand="UPDATE [tblVentasDetalle] SET [idVenta] = @idVenta, [idArticulo] = @idArticulo, [nombreProducto] = @nombreProducto, [Cantidad] = @Cantidad, [PrecioUnitario] = @PrecioUnitario, [Descuento] = @Descuento, [Subtotal] = @Subtotal, [Total] = @Total, [codigoVentaDetalles] = @codigoVentaDetalles WHERE [codigoVentaDetalles] = @codigoVentaDetalles"
      DeleteCommand="DELETE FROM [tblVentasDetalle] WHERE [codigoVentaDetalles] = @codigoVentaDetalles"
    ></asp:SqlDataSource>
    <asp:GridView
      ID="dtgMostrarDatos"
      runat="server"
      DataSourceID="SqlDataSource1"
      CssClass="table table-bordered"
      DataKeyNames="codigoVentaDetalles"
      AutoGenerateDeleteButton="True"
      AutoGenerateEditButton="True"
      AutoGenerateColumns="False"
      BackColor="White"
      BorderColor="#999999"
      BorderStyle="Solid"
      BorderWidth="1px"
      CellPadding="3"
      ForeColor="Black"
      GridLines="Vertical"
    >
      <AlternatingRowStyle BackColor="#CCCCCC" />
      <Columns>
        <asp:BoundField DataField="idVenta" HeaderText="Id Venta" SortExpression="idVenta" />
        <asp:BoundField DataField="idArticulo" HeaderText="Id Articulo" SortExpression="idArticulo" />
        <asp:BoundField DataField="nombreProducto" HeaderText="Nombre Producto" SortExpression="nombreProducto" />
        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
        <asp:BoundField DataField="PrecioUnitario" HeaderText="Precio Unitario" SortExpression="PrecioUnitario" />
        <asp:BoundField DataField="Descuento" HeaderText="Descuento" SortExpression="Descuento" />
        <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" SortExpression="Subtotal" />
        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
        <asp:BoundField
          DataField="codigoVentaDetalles"
          HeaderText="codigoVentaDetalles"
          ReadOnly="True"
          SortExpression="codigoVentaDetalles"
        />
      </Columns>
      <FooterStyle BackColor="#CCCCCC" />
      <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
      <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
      <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
      <SortedAscendingCellStyle BackColor="#F1F1F1" />
      <SortedAscendingHeaderStyle BackColor="#808080" />
      <SortedDescendingCellStyle BackColor="#CAC9C9" />
      <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
  </div>
</asp:Content>
