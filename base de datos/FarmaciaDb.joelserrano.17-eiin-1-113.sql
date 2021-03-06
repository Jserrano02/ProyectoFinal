USE [master]
GO
/****** Object:  Database [FarmaciaDb]    Script Date: 5/8/2018 4:31:05 p. m. ******/
CREATE DATABASE [FarmaciaDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FarmaciaDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\FarmaciaDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FarmaciaDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\FarmaciaDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FarmaciaDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FarmaciaDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FarmaciaDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FarmaciaDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FarmaciaDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FarmaciaDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FarmaciaDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [FarmaciaDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FarmaciaDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FarmaciaDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FarmaciaDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FarmaciaDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FarmaciaDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FarmaciaDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FarmaciaDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FarmaciaDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FarmaciaDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FarmaciaDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FarmaciaDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FarmaciaDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FarmaciaDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FarmaciaDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FarmaciaDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FarmaciaDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FarmaciaDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FarmaciaDb] SET  MULTI_USER 
GO
ALTER DATABASE [FarmaciaDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FarmaciaDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FarmaciaDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FarmaciaDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FarmaciaDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FarmaciaDb] SET QUERY_STORE = OFF
GO
USE [FarmaciaDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [FarmaciaDb]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 5/8/2018 4:31:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClientesId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[sexo] [nchar](1) NULL,
	[telefono] [nchar](10) NULL,
	[direccion] [varchar](50) NULL,
	[asegurado] [nchar](2) NULL,
	[SeguroId] [int] NULL,
	[SeguroNo] [nchar](10) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 5/8/2018 4:31:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadosId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[sexo] [nchar](1) NULL,
	[telefono] [nchar](10) NULL,
	[direccion] [varchar](50) NULL,
	[SeguroId] [int] NULL,
	[SeguroNo] [nchar](10) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 5/8/2018 4:31:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductosId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[TipoId] [int] NULL,
	[PrecioSuplidor] [nchar](10) NULL,
	[PrecioVenta] [nchar](10) NULL,
	[UbicacionId] [int] NULL,
	[SuplidorId] [int] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ProductosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seguros]    Script Date: 5/8/2018 4:31:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seguros](
	[SeguroId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[telefono] [nchar](10) NULL,
	[direccion] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_Seguros] PRIMARY KEY CLUSTERED 
(
	[SeguroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suplidores]    Script Date: 5/8/2018 4:31:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suplidores](
	[SuplidoresId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[telefono] [nchar](10) NULL,
	[direccion] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Suplidores] PRIMARY KEY CLUSTERED 
(
	[SuplidoresId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 5/8/2018 4:31:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo](
	[TipoId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[UbicacionId] [int] NULL,
 CONSTRAINT [PK_Tipo] PRIMARY KEY CLUSTERED 
(
	[TipoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 5/8/2018 4:31:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubicacion](
	[UbicacionId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Ubicacion] PRIMARY KEY CLUSTERED 
(
	[UbicacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([ClientesId], [nombre], [sexo], [telefono], [direccion], [asegurado], [SeguroId], [SeguroNo]) VALUES (1, N'cliente1', N'm', N'1234567890', N'cerca', N'si', 1, N'123456    ')
INSERT [dbo].[Clientes] ([ClientesId], [nombre], [sexo], [telefono], [direccion], [asegurado], [SeguroId], [SeguroNo]) VALUES (2, N'cliente2', N'f', N'1234567890', N'cerca', N'no', NULL, NULL)
INSERT [dbo].[Clientes] ([ClientesId], [nombre], [sexo], [telefono], [direccion], [asegurado], [SeguroId], [SeguroNo]) VALUES (3, N'cliente3', N'f', N'1234567890', N'cerca', N'no', NULL, NULL)
INSERT [dbo].[Clientes] ([ClientesId], [nombre], [sexo], [telefono], [direccion], [asegurado], [SeguroId], [SeguroNo]) VALUES (4, N'cliente4', N'f', N'1234567890', N'lejos', N'si', 4, N'123456    ')
INSERT [dbo].[Clientes] ([ClientesId], [nombre], [sexo], [telefono], [direccion], [asegurado], [SeguroId], [SeguroNo]) VALUES (5, N'cliente5', N'm', N'1234567890', N'cerca', N'si', 5, N'123456    ')
INSERT [dbo].[Clientes] ([ClientesId], [nombre], [sexo], [telefono], [direccion], [asegurado], [SeguroId], [SeguroNo]) VALUES (6, N'cliente6', N'f', N'1234567890', N'lejos', N'si', 2, N'123456    ')
INSERT [dbo].[Clientes] ([ClientesId], [nombre], [sexo], [telefono], [direccion], [asegurado], [SeguroId], [SeguroNo]) VALUES (7, N'cliente7', N'm', N'1234567890', N'lejos', N'si', 8, N'123456    ')
INSERT [dbo].[Clientes] ([ClientesId], [nombre], [sexo], [telefono], [direccion], [asegurado], [SeguroId], [SeguroNo]) VALUES (8, N'cliente8', N'm', N'1234567890', N'cerca', N'no', NULL, NULL)
INSERT [dbo].[Clientes] ([ClientesId], [nombre], [sexo], [telefono], [direccion], [asegurado], [SeguroId], [SeguroNo]) VALUES (9, N'cliente9', N'm', N'1234567890', N'cerca', N'no', NULL, NULL)
INSERT [dbo].[Clientes] ([ClientesId], [nombre], [sexo], [telefono], [direccion], [asegurado], [SeguroId], [SeguroNo]) VALUES (10, N'cliente10', N'm', N'1234567890', N'cerca', N'si', 9, NULL)
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [telefono], [direccion], [SeguroId], [SeguroNo]) VALUES (1, N'empleado1', N'm', N'1234567890', N'lejos', 6, N'123456    ')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [telefono], [direccion], [SeguroId], [SeguroNo]) VALUES (2, N'empleado2', N'm', N'1234567890', N'lejos', 3, N'123456    ')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [telefono], [direccion], [SeguroId], [SeguroNo]) VALUES (3, N'empleado3', N'm', N'1234567890', N'cerca', 7, N'123456    ')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [telefono], [direccion], [SeguroId], [SeguroNo]) VALUES (4, N'empleado4', N'f', N'1234567890', N'lejos', 2, N'123456    ')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [telefono], [direccion], [SeguroId], [SeguroNo]) VALUES (5, N'empleado5', N'f', N'1234567890', N'cerca', 2, N'123456    ')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [telefono], [direccion], [SeguroId], [SeguroNo]) VALUES (6, N'empleado6', N'f', N'1234567890', N'cerca', 5, N'123456    ')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [telefono], [direccion], [SeguroId], [SeguroNo]) VALUES (7, N'empleado7', N'f', N'1234567890', N'cerca', 1, N'123456    ')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [telefono], [direccion], [SeguroId], [SeguroNo]) VALUES (8, N'empleado8', N'f', N'1234567890', N'cerca', 1, N'123456    ')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [telefono], [direccion], [SeguroId], [SeguroNo]) VALUES (9, N'empleado9', N'f', N'1234567890', N'lejos', 1, N'123456    ')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [telefono], [direccion], [SeguroId], [SeguroNo]) VALUES (10, N'empleado10', N'm', N'1234567890', N'cerca', 9, NULL)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TipoId], [PrecioSuplidor], [PrecioVenta], [UbicacionId], [SuplidorId]) VALUES (1, N'medicamento1', 1, N'122       ', N'150       ', 1, 1)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TipoId], [PrecioSuplidor], [PrecioVenta], [UbicacionId], [SuplidorId]) VALUES (2, N'medicamento2', 3, N'45        ', N'60        ', 3, 4)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TipoId], [PrecioSuplidor], [PrecioVenta], [UbicacionId], [SuplidorId]) VALUES (3, N'medicamento3', 2, N'500       ', N'550       ', 2, 7)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TipoId], [PrecioSuplidor], [PrecioVenta], [UbicacionId], [SuplidorId]) VALUES (4, N'medicamento4', 1, N'628       ', N'720       ', 1, 1)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TipoId], [PrecioSuplidor], [PrecioVenta], [UbicacionId], [SuplidorId]) VALUES (5, N'medicamento5', 5, N'1100      ', N'1300      ', 5, 7)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TipoId], [PrecioSuplidor], [PrecioVenta], [UbicacionId], [SuplidorId]) VALUES (6, N'medicamento6', 6, N'35        ', N'55        ', 6, 3)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TipoId], [PrecioSuplidor], [PrecioVenta], [UbicacionId], [SuplidorId]) VALUES (7, N'medicamento7', 9, N'84        ', N'100       ', 9, 9)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TipoId], [PrecioSuplidor], [PrecioVenta], [UbicacionId], [SuplidorId]) VALUES (8, N'medicamento8', 2, N'5         ', N'7         ', 2, 2)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TipoId], [PrecioSuplidor], [PrecioVenta], [UbicacionId], [SuplidorId]) VALUES (9, N'medicamento9', 8, N'872       ', N'950       ', 8, 2)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TipoId], [PrecioSuplidor], [PrecioVenta], [UbicacionId], [SuplidorId]) VALUES (10, N'medicamento10', 7, N'4700      ', N'5500      ', 7, NULL)
INSERT [dbo].[Seguros] ([SeguroId], [nombre], [telefono], [direccion], [email]) VALUES (1, N'Aseguradora1', N'1234567890', N'cerca', N'abc@hotmail.com')
INSERT [dbo].[Seguros] ([SeguroId], [nombre], [telefono], [direccion], [email]) VALUES (2, N'Aseguradora2', N'1234567890', N'cerca', N'abc@hotmail.com')
INSERT [dbo].[Seguros] ([SeguroId], [nombre], [telefono], [direccion], [email]) VALUES (3, N'Aseguradora3', N'1234567890', N'cerca', N'abc@hotmail.com')
INSERT [dbo].[Seguros] ([SeguroId], [nombre], [telefono], [direccion], [email]) VALUES (4, N'Aseguradora4', N'1234567890', N'cerca', N'abc@hotmail.com')
INSERT [dbo].[Seguros] ([SeguroId], [nombre], [telefono], [direccion], [email]) VALUES (5, N'Aseguradora5', N'1234567890', N'lejos', N'abc@hotmail.com')
INSERT [dbo].[Seguros] ([SeguroId], [nombre], [telefono], [direccion], [email]) VALUES (6, N'Aseguradora6', N'1234567890', N'lejos', N'abc@hotmail.com')
INSERT [dbo].[Seguros] ([SeguroId], [nombre], [telefono], [direccion], [email]) VALUES (7, N'Aseguradora7', N'1234567890', N'cerca', N'abc@hotmail.com')
INSERT [dbo].[Seguros] ([SeguroId], [nombre], [telefono], [direccion], [email]) VALUES (8, N'Aseguradora8', N'1234567890', N'lejos', N'abc@hotmail.com')
INSERT [dbo].[Seguros] ([SeguroId], [nombre], [telefono], [direccion], [email]) VALUES (9, N'Aseguradora9', N'1234567890', N'cerca', N'abc@hotmail.com')
INSERT [dbo].[Seguros] ([SeguroId], [nombre], [telefono], [direccion], [email]) VALUES (10, N'Aseguradora10', N'1234567890', N'cerca', NULL)
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [telefono], [direccion], [Email]) VALUES (1, N'Laboratorio1', N'1234567890', N'cerca', N'abc@hotmail.com')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [telefono], [direccion], [Email]) VALUES (2, N'Laboratorio2', N'1234567890', N'cerca', N'abc@hotmail.com')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [telefono], [direccion], [Email]) VALUES (3, N'Laboratorio3', N'1234567890', N'lejos', N'abc@hotmail.com')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [telefono], [direccion], [Email]) VALUES (4, N'Laboratorio4', N'1234567890', N'cerca', N'abc@hotmail.com')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [telefono], [direccion], [Email]) VALUES (5, N'Laboratorio5', N'1234567890', N'lejos', N'abc@hotmail.com')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [telefono], [direccion], [Email]) VALUES (6, N'Laboratorio6', N'1234567890', N'lejos', N'abc@hotmail.com')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [telefono], [direccion], [Email]) VALUES (7, N'Laboratorio7', N'1234567890', N'cerca', N'abc@hotmail.com')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [telefono], [direccion], [Email]) VALUES (8, N'Laboratorio8', N'1234567890', N'cerca', N'abc@hotmail.com')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [telefono], [direccion], [Email]) VALUES (9, N'Laboratorio9', N'1234567890', N'cerca', N'abc@hotmail.com')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [telefono], [direccion], [Email]) VALUES (10, N'Laboratorio10', N'1234567890', N'cerca', NULL)
INSERT [dbo].[Tipo] ([TipoId], [nombre], [UbicacionId]) VALUES (1, N'intramuscular', 1)
INSERT [dbo].[Tipo] ([TipoId], [nombre], [UbicacionId]) VALUES (2, N'jarabe', 2)
INSERT [dbo].[Tipo] ([TipoId], [nombre], [UbicacionId]) VALUES (3, N'oral', 3)
INSERT [dbo].[Tipo] ([TipoId], [nombre], [UbicacionId]) VALUES (4, N'gotas', 4)
INSERT [dbo].[Tipo] ([TipoId], [nombre], [UbicacionId]) VALUES (5, N'crema', 5)
INSERT [dbo].[Tipo] ([TipoId], [nombre], [UbicacionId]) VALUES (6, N'suero', 6)
INSERT [dbo].[Tipo] ([TipoId], [nombre], [UbicacionId]) VALUES (7, N'ovulo', 7)
INSERT [dbo].[Tipo] ([TipoId], [nombre], [UbicacionId]) VALUES (8, N'supositorio', 8)
INSERT [dbo].[Tipo] ([TipoId], [nombre], [UbicacionId]) VALUES (9, N'masticable', 9)
INSERT [dbo].[Tipo] ([TipoId], [nombre], [UbicacionId]) VALUES (10, N'otros', NULL)
INSERT [dbo].[Ubicacion] ([UbicacionId], [nombre]) VALUES (1, N'Freezer')
INSERT [dbo].[Ubicacion] ([UbicacionId], [nombre]) VALUES (2, N'Estante1')
INSERT [dbo].[Ubicacion] ([UbicacionId], [nombre]) VALUES (3, N'Estante2')
INSERT [dbo].[Ubicacion] ([UbicacionId], [nombre]) VALUES (4, N'Estante3')
INSERT [dbo].[Ubicacion] ([UbicacionId], [nombre]) VALUES (5, N'Estante4')
INSERT [dbo].[Ubicacion] ([UbicacionId], [nombre]) VALUES (6, N'Estante5')
INSERT [dbo].[Ubicacion] ([UbicacionId], [nombre]) VALUES (7, N'Estante6')
INSERT [dbo].[Ubicacion] ([UbicacionId], [nombre]) VALUES (8, N'Estante7')
INSERT [dbo].[Ubicacion] ([UbicacionId], [nombre]) VALUES (9, N'Estante8')
INSERT [dbo].[Ubicacion] ([UbicacionId], [nombre]) VALUES (10, N'Estante')
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Seguros] FOREIGN KEY([SeguroId])
REFERENCES [dbo].[Seguros] ([SeguroId])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Seguros]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Seguros] FOREIGN KEY([SeguroId])
REFERENCES [dbo].[Seguros] ([SeguroId])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Seguros]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Suplidores] FOREIGN KEY([SuplidorId])
REFERENCES [dbo].[Suplidores] ([SuplidoresId])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Suplidores]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Tipo] FOREIGN KEY([TipoId])
REFERENCES [dbo].[Tipo] ([TipoId])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Tipo]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Ubicacion] FOREIGN KEY([UbicacionId])
REFERENCES [dbo].[Ubicacion] ([UbicacionId])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Ubicacion]
GO
ALTER TABLE [dbo].[Tipo]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_Ubicacion] FOREIGN KEY([UbicacionId])
REFERENCES [dbo].[Ubicacion] ([UbicacionId])
GO
ALTER TABLE [dbo].[Tipo] CHECK CONSTRAINT [FK_Tipo_Ubicacion]
GO
USE [master]
GO
ALTER DATABASE [FarmaciaDb] SET  READ_WRITE 
GO
/* nombre: Joel Serrano Guerrero matricula: 17-eiin-1-113 Seccion: 0541 */
