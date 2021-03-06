USE [master]
GO
/****** Object:  Database [VentaComputadoras]    Script Date: 25/2/2021 13:12:48 ******/
CREATE DATABASE [VentaComputadoras] ON  PRIMARY 
( NAME = N'VentaComputadoras', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VentaComputadoras.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VentaComputadoras_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VentaComputadoras_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VentaComputadoras].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VentaComputadoras] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VentaComputadoras] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VentaComputadoras] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VentaComputadoras] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VentaComputadoras] SET ARITHABORT OFF 
GO
ALTER DATABASE [VentaComputadoras] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VentaComputadoras] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VentaComputadoras] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VentaComputadoras] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VentaComputadoras] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VentaComputadoras] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VentaComputadoras] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VentaComputadoras] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VentaComputadoras] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VentaComputadoras] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VentaComputadoras] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VentaComputadoras] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VentaComputadoras] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VentaComputadoras] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VentaComputadoras] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VentaComputadoras] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VentaComputadoras] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VentaComputadoras] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VentaComputadoras] SET  MULTI_USER 
GO
ALTER DATABASE [VentaComputadoras] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VentaComputadoras] SET DB_CHAINING OFF 
GO
USE [VentaComputadoras]
GO
/****** Object:  Table [dbo].[catArticulos]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catArticulos](
	[codigoArticulo] [int] NOT NULL,
	[nombreArticulo] [nvarchar](50) NOT NULL,
	[idCategoria] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigoArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catBodega]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catBodega](
	[idBodega] [int] NOT NULL,
	[nombreBodega] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idBodega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catCategorias]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catCategorias](
	[codigoCategoria] [int] NOT NULL,
	[nombreCategoria] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigoCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catEmpleados]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catEmpleados](
	[codigoEmpleado] [int] NOT NULL,
	[nombreEmpleado] [nvarchar](50) NOT NULL,
	[primerApellido] [nvarchar](50) NULL,
	[segundoApellido] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catMarcas]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catMarcas](
	[codigoMarca] [int] NOT NULL,
	[Marca] [nvarchar](50) NOT NULL,
	[Descripción] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigoMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catProveedores]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catProveedores](
	[codigoProveedor] [int] NOT NULL,
	[nombreEmpresa] [nvarchar](50) NOT NULL,
	[Telefono] [nvarchar](50) NOT NULL,
	[Ciudad] [nvarchar](50) NOT NULL,
	[Departamento] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigoProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCompras]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCompras](
	[codigoCompra] [int] NOT NULL,
	[fechaCompra] [date] NULL,
	[idEmpleado] [int] NOT NULL,
	[Subtotal] [decimal](18, 0) NOT NULL,
	[IVA] [decimal](18, 0) NOT NULL,
	[Descuento] [decimal](18, 0) NOT NULL,
	[Total] [decimal](18, 0) NOT NULL,
	[idProveedor] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigoCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComprasDetalle]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComprasDetalle](
	[idCompra] [int] NOT NULL,
	[idArticulo] [int] NOT NULL,
	[nombreArticulo] [nvarchar](50) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[precioUnitario] [decimal](18, 0) NOT NULL,
	[Descuento] [decimal](18, 0) NOT NULL,
	[Total] [decimal](18, 0) NOT NULL,
	[idMarca] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCompra] ASC,
	[idArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductosAlmacen]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductosAlmacen](
	[codigoArticuloBodega] [int] NOT NULL,
	[Costo] [decimal](18, 0) NOT NULL,
	[precioVenta] [decimal](18, 0) NOT NULL,
	[Existencia] [int] NOT NULL,
	[Lote] [nvarchar](50) NOT NULL,
	[idMarca] [int] NOT NULL,
	[idArticulo] [int] NOT NULL,
	[idBodega] [int] NOT NULL,
	[idCompra] [int] NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigoArticuloBodega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVentas]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVentas](
	[codigoVentas] [int] NOT NULL,
	[FechaVenta] [date] NULL,
	[Cliente] [nvarchar](50) NOT NULL,
	[Subtotal] [decimal](18, 0) NOT NULL,
	[IVA] [decimal](18, 0) NOT NULL,
	[Descuento] [decimal](18, 0) NOT NULL,
	[Total] [decimal](18, 0) NOT NULL,
	[idEmpleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigoVentas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVentasDetalle]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVentasDetalle](
	[idVenta] [int] NOT NULL,
	[idArticulo] [int] NOT NULL,
	[nombreProducto] [nvarchar](50) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [decimal](18, 0) NOT NULL,
	[Descuento] [decimal](18, 0) NOT NULL,
	[Subtotal] [decimal](18, 0) NOT NULL,
	[Total] [decimal](18, 0) NOT NULL,
	[codigoVentaDetalles] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigoVentaDetalles] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[catArticulos] ([codigoArticulo], [nombreArticulo], [idCategoria]) VALUES (104, N'Laptop negra hp', 101)
INSERT [dbo].[catArticulos] ([codigoArticulo], [nombreArticulo], [idCategoria]) VALUES (201, N'Impresora', 101)
INSERT [dbo].[catArticulos] ([codigoArticulo], [nombreArticulo], [idCategoria]) VALUES (1904, N'Computador escritorio hp', 303)
INSERT [dbo].[catArticulos] ([codigoArticulo], [nombreArticulo], [idCategoria]) VALUES (2222, N'LAptop apple', 101)
INSERT [dbo].[catArticulos] ([codigoArticulo], [nombreArticulo], [idCategoria]) VALUES (2405, N'Laptop hp', 202)
INSERT [dbo].[catArticulos] ([codigoArticulo], [nombreArticulo], [idCategoria]) VALUES (2508, N'Impresora canon', 101)
INSERT [dbo].[catBodega] ([idBodega], [nombreBodega]) VALUES (1, N'Bodega primaria')
INSERT [dbo].[catBodega] ([idBodega], [nombreBodega]) VALUES (2, N'Bodega secundaria')
INSERT [dbo].[catCategorias] ([codigoCategoria], [nombreCategoria], [Descripcion]) VALUES (101, N'Impresoras', N'Impresoras de gran calidad')
INSERT [dbo].[catCategorias] ([codigoCategoria], [nombreCategoria], [Descripcion]) VALUES (202, N'Laptops', N'Laptops de buena construccion')
INSERT [dbo].[catCategorias] ([codigoCategoria], [nombreCategoria], [Descripcion]) VALUES (303, N'Desktop', N'Computadores de escritorio')
INSERT [dbo].[catEmpleados] ([codigoEmpleado], [nombreEmpleado], [primerApellido], [segundoApellido]) VALUES (20101, N'Gustavo', N'Guevara ', N'Hernandez')
INSERT [dbo].[catEmpleados] ([codigoEmpleado], [nombreEmpleado], [primerApellido], [segundoApellido]) VALUES (151100, N'Alexa', N'Briceño', N'Muñoz')
INSERT [dbo].[catEmpleados] ([codigoEmpleado], [nombreEmpleado], [primerApellido], [segundoApellido]) VALUES (190401, N'Greyvin', N'Mora', N'Zúniga')
INSERT [dbo].[catEmpleados] ([codigoEmpleado], [nombreEmpleado], [primerApellido], [segundoApellido]) VALUES (250800, N'Oswald', N'Balladares', N'Ruiz')
INSERT [dbo].[catEmpleados] ([codigoEmpleado], [nombreEmpleado], [primerApellido], [segundoApellido]) VALUES (260101, N'Félix', N'Narváez', N'García')
INSERT [dbo].[catMarcas] ([codigoMarca], [Marca], [Descripción]) VALUES (111, N'Apple', N'Marca Apple, con sede en Estados Unidos de America')
INSERT [dbo].[catMarcas] ([codigoMarca], [Marca], [Descripción]) VALUES (112, N'Sony', N'Marca Sony, con sede en Japón')
INSERT [dbo].[catMarcas] ([codigoMarca], [Marca], [Descripción]) VALUES (113, N'Hewlett Packard', N'Marca fabricantes de computadores')
INSERT [dbo].[catMarcas] ([codigoMarca], [Marca], [Descripción]) VALUES (114, N'Canon', N'Marca Estrella enfabricacion de impresoras')
INSERT [dbo].[catMarcas] ([codigoMarca], [Marca], [Descripción]) VALUES (115, N'Acer', N'Marca fabricante de laptops')
INSERT [dbo].[catMarcas] ([codigoMarca], [Marca], [Descripción]) VALUES (116, N'Epson', N'Marca especializada en la fabricacion de impresora')
INSERT [dbo].[catProveedores] ([codigoProveedor], [nombreEmpresa], [Telefono], [Ciudad], [Departamento]) VALUES (10, N'Comtech', N'+505 22567841', N'Managua', N'Managua')
INSERT [dbo].[catProveedores] ([codigoProveedor], [nombreEmpresa], [Telefono], [Ciudad], [Departamento]) VALUES (11, N'TecnoPlus', N'+505 2245841', N'Managua', N'Managua')
INSERT [dbo].[catProveedores] ([codigoProveedor], [nombreEmpresa], [Telefono], [Ciudad], [Departamento]) VALUES (12, N'Bodega tecnologica', N'+505 22567841', N'Managua', N'Managua')
INSERT [dbo].[catProveedores] ([codigoProveedor], [nombreEmpresa], [Telefono], [Ciudad], [Departamento]) VALUES (13, N'Sony', N'+505 25324779', N'Managua', N'Managua')
INSERT [dbo].[catProveedores] ([codigoProveedor], [nombreEmpresa], [Telefono], [Ciudad], [Departamento]) VALUES (14, N'iShop', N'+505 22479351', N'Managua', N'Managua')
INSERT [dbo].[catProveedores] ([codigoProveedor], [nombreEmpresa], [Telefono], [Ciudad], [Departamento]) VALUES (15, N'TecnoWorld', N'+505 22571281', N'Granada', N'Granada')
INSERT [dbo].[catProveedores] ([codigoProveedor], [nombreEmpresa], [Telefono], [Ciudad], [Departamento]) VALUES (16, N'Compustart', N'+505 22302478', N'Jinotepe', N'Carazo')
INSERT [dbo].[tblCompras] ([codigoCompra], [fechaCompra], [idEmpleado], [Subtotal], [IVA], [Descuento], [Total], [idProveedor]) VALUES (333, CAST(N'2021-02-23' AS Date), 260101, CAST(14875 AS Decimal(18, 0)), CAST(2231 AS Decimal(18, 0)), CAST(1488 AS Decimal(18, 0)), CAST(15619 AS Decimal(18, 0)), 16)
INSERT [dbo].[tblCompras] ([codigoCompra], [fechaCompra], [idEmpleado], [Subtotal], [IVA], [Descuento], [Total], [idProveedor]) VALUES (600, CAST(N'2021-02-18' AS Date), 240500, CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 12)
INSERT [dbo].[tblCompras] ([codigoCompra], [fechaCompra], [idEmpleado], [Subtotal], [IVA], [Descuento], [Total], [idProveedor]) VALUES (601, CAST(N'2021-02-25' AS Date), 151100, CAST(200 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), 13)
INSERT [dbo].[tblCompras] ([codigoCompra], [fechaCompra], [idEmpleado], [Subtotal], [IVA], [Descuento], [Total], [idProveedor]) VALUES (6212, CAST(N'2021-02-15' AS Date), 250800, CAST(20000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(20700 AS Decimal(18, 0)), 10)
INSERT [dbo].[tblCompras] ([codigoCompra], [fechaCompra], [idEmpleado], [Subtotal], [IVA], [Descuento], [Total], [idProveedor]) VALUES (6217, CAST(N'2021-01-10' AS Date), 190401, CAST(4747 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(20700 AS Decimal(18, 0)), 11)
INSERT [dbo].[tblComprasDetalle] ([idCompra], [idArticulo], [nombreArticulo], [Cantidad], [precioUnitario], [Descuento], [Total], [idMarca]) VALUES (600, 1904, N'Computadora de escritorio', 5, CAST(100 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)), CAST(490 AS Decimal(18, 0)), 111)
INSERT [dbo].[tblComprasDetalle] ([idCompra], [idArticulo], [nombreArticulo], [Cantidad], [precioUnitario], [Descuento], [Total], [idMarca]) VALUES (601, 201, N'Computadora de escritorio', 100, CAST(100 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)), CAST(9994 AS Decimal(18, 0)), 114)
INSERT [dbo].[tblComprasDetalle] ([idCompra], [idArticulo], [nombreArticulo], [Cantidad], [precioUnitario], [Descuento], [Total], [idMarca]) VALUES (6212, 2222, N'Laptop Apple', 45, CAST(45 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)), CAST(2021 AS Decimal(18, 0)), 116)
INSERT [dbo].[tblComprasDetalle] ([idCompra], [idArticulo], [nombreArticulo], [Cantidad], [precioUnitario], [Descuento], [Total], [idMarca]) VALUES (6217, 2508, N'eee', 55, CAST(555 AS Decimal(18, 0)), CAST(55 AS Decimal(18, 0)), CAST(55 AS Decimal(18, 0)), 112)
INSERT [dbo].[tblProductosAlmacen] ([codigoArticuloBodega], [Costo], [precioVenta], [Existencia], [Lote], [idMarca], [idArticulo], [idBodega], [idCompra], [Descripcion]) VALUES (46200, CAST(766 AS Decimal(18, 0)), CAST(888 AS Decimal(18, 0)), 9, N'pppp', 114, 2405, 2, 6212, N'mmmmmm')
INSERT [dbo].[tblVentas] ([codigoVentas], [FechaVenta], [Cliente], [Subtotal], [IVA], [Descuento], [Total], [idEmpleado]) VALUES (5212, CAST(N'2021-02-16' AS Date), N'Endersson Mendoza', CAST(1200 AS Decimal(18, 0)), CAST(15 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(1197 AS Decimal(18, 0)), 250800)
INSERT [dbo].[tblVentas] ([codigoVentas], [FechaVenta], [Cliente], [Subtotal], [IVA], [Descuento], [Total], [idEmpleado]) VALUES (5213, CAST(N'2021-02-16' AS Date), N'Félix Narváez', CAST(895 AS Decimal(18, 0)), CAST(15 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(547 AS Decimal(18, 0)), 190401)
INSERT [dbo].[tblVentas] ([codigoVentas], [FechaVenta], [Cliente], [Subtotal], [IVA], [Descuento], [Total], [idEmpleado]) VALUES (5214, CAST(N'2021-02-14' AS Date), N'Gustavo Guevara', CAST(89 AS Decimal(18, 0)), CAST(55 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), 20101)
INSERT [dbo].[tblVentas] ([codigoVentas], [FechaVenta], [Cliente], [Subtotal], [IVA], [Descuento], [Total], [idEmpleado]) VALUES (5215, CAST(N'2021-02-24' AS Date), N'Alexa Briceño Muñoz', CAST(5 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), 151100)
INSERT [dbo].[tblVentasDetalle] ([idVenta], [idArticulo], [nombreProducto], [Cantidad], [PrecioUnitario], [Descuento], [Subtotal], [Total], [codigoVentaDetalles]) VALUES (5212, 2405, N'Laptop blanca', 10, CAST(2 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), 1000)
INSERT [dbo].[tblVentasDetalle] ([idVenta], [idArticulo], [nombreProducto], [Cantidad], [PrecioUnitario], [Descuento], [Subtotal], [Total], [codigoVentaDetalles]) VALUES (5214, 1904, N'hhh', 666, CAST(666 AS Decimal(18, 0)), CAST(666 AS Decimal(18, 0)), CAST(666 AS Decimal(18, 0)), CAST(666 AS Decimal(18, 0)), 1003)
INSERT [dbo].[tblVentasDetalle] ([idVenta], [idArticulo], [nombreProducto], [Cantidad], [PrecioUnitario], [Descuento], [Subtotal], [Total], [codigoVentaDetalles]) VALUES (5213, 2222, N'ñññ', 888, CAST(888 AS Decimal(18, 0)), CAST(888 AS Decimal(18, 0)), CAST(888 AS Decimal(18, 0)), CAST(888 AS Decimal(18, 0)), 1004)
INSERT [dbo].[tblVentasDetalle] ([idVenta], [idArticulo], [nombreProducto], [Cantidad], [PrecioUnitario], [Descuento], [Subtotal], [Total], [codigoVentaDetalles]) VALUES (5215, 201, N'Laptop negra hp', 5, CAST(100 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)), CAST(500 AS Decimal(18, 0)), CAST(450 AS Decimal(18, 0)), 1005)
/****** Object:  Index [UQ__tblCompr__5295297D469F157C]    Script Date: 25/2/2021 13:12:49 ******/
ALTER TABLE [dbo].[tblCompras] ADD UNIQUE NONCLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__tblCompr__A3FA8E6A5628A7BE]    Script Date: 25/2/2021 13:12:49 ******/
ALTER TABLE [dbo].[tblCompras] ADD UNIQUE NONCLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tblProdu__4E4659D39986609A]    Script Date: 25/2/2021 13:12:49 ******/
ALTER TABLE [dbo].[tblProductosAlmacen] ADD UNIQUE NONCLUSTERED 
(
	[Lote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__tblVenta__077D56151C75FAA1]    Script Date: 25/2/2021 13:12:49 ******/
ALTER TABLE [dbo].[tblVentasDetalle] ADD UNIQUE NONCLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__tblVenta__AABB74232FD62AE9]    Script Date: 25/2/2021 13:12:49 ******/
ALTER TABLE [dbo].[tblVentasDetalle] ADD UNIQUE NONCLUSTERED 
(
	[idArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[catArticulos]  WITH CHECK ADD  CONSTRAINT [catArticulos_idCategoria_catCategorias_codigoCategoria] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[catCategorias] ([codigoCategoria])
GO
ALTER TABLE [dbo].[catArticulos] CHECK CONSTRAINT [catArticulos_idCategoria_catCategorias_codigoCategoria]
GO
ALTER TABLE [dbo].[tblCompras]  WITH CHECK ADD  CONSTRAINT [tblCompras_idProveedor_catProveedores_codigoProveedor] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[catProveedores] ([codigoProveedor])
GO
ALTER TABLE [dbo].[tblCompras] CHECK CONSTRAINT [tblCompras_idProveedor_catProveedores_codigoProveedor]
GO
ALTER TABLE [dbo].[tblComprasDetalle]  WITH CHECK ADD  CONSTRAINT [tblComprasDetalle_idArticulo_catArticulos_codigoArticulo] FOREIGN KEY([idArticulo])
REFERENCES [dbo].[catArticulos] ([codigoArticulo])
GO
ALTER TABLE [dbo].[tblComprasDetalle] CHECK CONSTRAINT [tblComprasDetalle_idArticulo_catArticulos_codigoArticulo]
GO
ALTER TABLE [dbo].[tblComprasDetalle]  WITH CHECK ADD  CONSTRAINT [tblComprasDetalle_idCompra_tblCompras_codigoCompra] FOREIGN KEY([idCompra])
REFERENCES [dbo].[tblCompras] ([codigoCompra])
GO
ALTER TABLE [dbo].[tblComprasDetalle] CHECK CONSTRAINT [tblComprasDetalle_idCompra_tblCompras_codigoCompra]
GO
ALTER TABLE [dbo].[tblProductosAlmacen]  WITH CHECK ADD  CONSTRAINT [tblProductosAlmacen_idArticulo_catArticulos_codigoArticulo] FOREIGN KEY([idArticulo])
REFERENCES [dbo].[catArticulos] ([codigoArticulo])
GO
ALTER TABLE [dbo].[tblProductosAlmacen] CHECK CONSTRAINT [tblProductosAlmacen_idArticulo_catArticulos_codigoArticulo]
GO
ALTER TABLE [dbo].[tblProductosAlmacen]  WITH CHECK ADD  CONSTRAINT [tblProductosAlmacen_idBodega_catBodega_idBodega] FOREIGN KEY([idBodega])
REFERENCES [dbo].[catBodega] ([idBodega])
GO
ALTER TABLE [dbo].[tblProductosAlmacen] CHECK CONSTRAINT [tblProductosAlmacen_idBodega_catBodega_idBodega]
GO
ALTER TABLE [dbo].[tblProductosAlmacen]  WITH CHECK ADD  CONSTRAINT [tblProductosAlmacen_idMarca_catMarcas_codigoMarca] FOREIGN KEY([idMarca])
REFERENCES [dbo].[catMarcas] ([codigoMarca])
GO
ALTER TABLE [dbo].[tblProductosAlmacen] CHECK CONSTRAINT [tblProductosAlmacen_idMarca_catMarcas_codigoMarca]
GO
ALTER TABLE [dbo].[tblVentas]  WITH CHECK ADD  CONSTRAINT [tblVentas_idEmpleado_catEmpleados_codigoEmpleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[catEmpleados] ([codigoEmpleado])
GO
ALTER TABLE [dbo].[tblVentas] CHECK CONSTRAINT [tblVentas_idEmpleado_catEmpleados_codigoEmpleado]
GO
ALTER TABLE [dbo].[tblVentasDetalle]  WITH CHECK ADD  CONSTRAINT [tblVentasDetalle_idArticulo_catArticulos_codigoArticulo] FOREIGN KEY([idArticulo])
REFERENCES [dbo].[catArticulos] ([codigoArticulo])
GO
ALTER TABLE [dbo].[tblVentasDetalle] CHECK CONSTRAINT [tblVentasDetalle_idArticulo_catArticulos_codigoArticulo]
GO
ALTER TABLE [dbo].[tblVentasDetalle]  WITH CHECK ADD  CONSTRAINT [tblVentasDetalle_idVenta_tblVentas_codigoVentas] FOREIGN KEY([idVenta])
REFERENCES [dbo].[tblVentas] ([codigoVentas])
GO
ALTER TABLE [dbo].[tblVentasDetalle] CHECK CONSTRAINT [tblVentasDetalle_idVenta_tblVentas_codigoVentas]
GO
/****** Object:  StoredProcedure [dbo].[spEliminar]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spEliminar](
@IdVentaDetalles int
)
as
begin

delete  from tblVentasDetalle where @IdVentaDetalles = codigoVentaDetalles
end
GO
/****** Object:  StoredProcedure [dbo].[spEliminarCompra]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[spEliminarCompra](
@idCompra int
)
as
begin
delete from tblComprasDetalle where @idCompra = idCompra
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertar]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[spInsertar](
@idVenta int,
@idArticulo int,
@nombreProducto nvarchar(50),
@Cantidad int,
@PrecioUnitario decimal,
@Descuento decimal,
@Subtotal decimal,
@Total decimal,
@codigoVentaDetalles int
)
as
begin
insert into tblVentasDetalle(idVenta, idArticulo, nombreProducto, Cantidad, PrecioUnitario, Descuento, Subtotal, Total, codigoVentaDetalles)
values(@idVenta, @idArticulo, @nombreProducto, @Cantidad, @PrecioUnitario, @Descuento, @Subtotal, @Total, @codigoVentaDetalles);
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertarCompra]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarCompra](
@idCompra int,
@idArticulo int,
@nombreArticulo nvarchar(50),
@Cantidad int,
@precioUnitario decimal,
@Descuento decimal,
@Total decimal,
@idMarca int
)
as
begin
insert into tblComprasDetalle(idCompra, idArticulo, nombreArticulo, Cantidad, precioUnitario, Descuento, Total, idMarca)
values(@idCompra, @idArticulo, @nombreArticulo, @Cantidad, @precioUnitario, @Descuento, @Total, @idMarca)
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertarProducto]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[spInsertarProducto](
  @codigoArticuloBodega int,
  @Costo decimal,
  @precioVenta decimal,
  @Existencia int,
  @Lote nvarchar(50),
  @idMarca int,
  @idArticulo int,
  @idBodega int,
  @idCompra int,
  @Descripcion nvarchar(50)
  )
  as
  begin
  insert into tblProductosAlmacen(codigoArticuloBodega, Costo, precioVenta, Existencia, Lote, idMarca,
  idArticulo, idBodega, idCompra, Descripcion) values(@codigoArticuloBodega, @Costo, @precioVenta, @Existencia, @Lote, 
  @idMarca, @idArticulo, @idBodega, @idCompra, @Descripcion)
  end
GO
/****** Object:  StoredProcedure [dbo].[spModificar]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spModificar](
@idVenta int,
@idArticulo int,
@nombreProducto nvarchar(50),
@Cantidad int,
@PrecioUnitario decimal,
@Descuento decimal,
@Subtotal decimal,
@Total decimal,
@codigoVentaDetalles int
)
as
begin
update tblVentasDetalle set idVenta = @idVenta, idArticulo = @idArticulo, nombreProducto = @nombreProducto, Cantidad = @Cantidad, 
PrecioUnitario = @PrecioUnitario, Descuento = @Descuento, Subtotal = @Subtotal, Total = @Total, codigoVentaDetalles = @codigoVentaDetalles
where codigoVentaDetalles = @codigoVentaDetalles
end
GO
/****** Object:  StoredProcedure [dbo].[spModificarCompra]    Script Date: 25/2/2021 13:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spModificarCompra](
@idCompra int,
@idArticulo int,
@nombreArticulo nvarchar(50),
@Cantidad int,
@precioUnitario decimal,
@Descuento decimal,
@Total decimal,
@idMarca int
)
as
begin
update tblComprasDetalle set idCompra = @idCompra, idArticulo = @idArticulo, nombreArticulo = @nombreArticulo, Cantidad = @Cantidad, 
precioUnitario = @precioUnitario, Descuento = @Descuento, Total = @Total, idMarca = @idMarca
where idCompra = @idCompra
end
GO
USE [master]
GO
ALTER DATABASE [VentaComputadoras] SET  READ_WRITE 
GO
