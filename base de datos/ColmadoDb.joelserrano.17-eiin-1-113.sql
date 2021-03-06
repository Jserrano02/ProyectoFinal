USE [master]
GO
/****** Object:  Database [ColmadoDb]    Script Date: 5/8/2018 3:38:26 p. m. ******/
CREATE DATABASE [ColmadoDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ColmadoDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\ColmadoDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ColmadoDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\ColmadoDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ColmadoDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ColmadoDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ColmadoDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ColmadoDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ColmadoDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ColmadoDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ColmadoDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [ColmadoDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ColmadoDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ColmadoDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ColmadoDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ColmadoDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ColmadoDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ColmadoDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ColmadoDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ColmadoDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ColmadoDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ColmadoDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ColmadoDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ColmadoDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ColmadoDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ColmadoDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ColmadoDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ColmadoDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ColmadoDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ColmadoDb] SET  MULTI_USER 
GO
ALTER DATABASE [ColmadoDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ColmadoDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ColmadoDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ColmadoDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ColmadoDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ColmadoDb] SET QUERY_STORE = OFF
GO
USE [ColmadoDb]
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
USE [ColmadoDb]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 5/8/2018 3:38:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClientesId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Sexo] [nchar](1) NULL,
	[Telefono] [varchar](10) NULL,
	[Direccion] [varchar](50) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeudasClientes]    Script Date: 5/8/2018 3:38:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeudasClientes](
	[DeudasClientesId] [int] NOT NULL,
	[ClientesId] [int] NULL,
	[Cantidad] [float] NULL,
 CONSTRAINT [PK_DeudasClientes] PRIMARY KEY CLUSTERED 
(
	[DeudasClientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 5/8/2018 3:38:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadosId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Sexo] [nchar](1) NULL,
	[Telefono] [varchar](10) NULL,
	[Direccion] [varchar](50) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 5/8/2018 3:38:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductosId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[TiposId] [int] NULL,
	[SuplidoresId] [int] NULL,
	[Preciosuplidor] [float] NULL,
	[Precioventa] [float] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ProductosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suplidores]    Script Date: 5/8/2018 3:38:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suplidores](
	[SuplidoresId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
 CONSTRAINT [PK_Suplidores] PRIMARY KEY CLUSTERED 
(
	[SuplidoresId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos]    Script Date: 5/8/2018 3:38:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos](
	[TiposId] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Tipos] PRIMARY KEY CLUSTERED 
(
	[TiposId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (1, N'juana juanita', N'f', N'1234567890', N'porahi')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (2, N'pedro felipe', N'm', N'1234567890', N'jurumucu')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (3, N'jose peralta', N'm', N'1234567890', N'lachancleta')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (4, N'manuela perla', N'f', N'1234567890', N'lejos')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (5, N'francia jimenez', N'f', N'1234567890', N'cerca')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (6, N'jose de los palotes', N'm', N'1234567890', N'vecino')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (7, N'julia montes', N'f', N'1234567890', N'ahi')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (8, N'crystal alvarez', N'f', N'1234567890', N'lejos')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (9, N'paulina rubio', N'f', N'1234567890', N'lejos')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (10, NULL, NULL, NULL, NULL)
INSERT [dbo].[DeudasClientes] ([DeudasClientesId], [ClientesId], [Cantidad]) VALUES (1, 1, 450)
INSERT [dbo].[DeudasClientes] ([DeudasClientesId], [ClientesId], [Cantidad]) VALUES (2, 2, 150)
INSERT [dbo].[DeudasClientes] ([DeudasClientesId], [ClientesId], [Cantidad]) VALUES (3, 3, 280)
INSERT [dbo].[DeudasClientes] ([DeudasClientesId], [ClientesId], [Cantidad]) VALUES (4, 4, 148)
INSERT [dbo].[DeudasClientes] ([DeudasClientesId], [ClientesId], [Cantidad]) VALUES (5, 5, 33)
INSERT [dbo].[DeudasClientes] ([DeudasClientesId], [ClientesId], [Cantidad]) VALUES (6, 6, 1655)
INSERT [dbo].[DeudasClientes] ([DeudasClientesId], [ClientesId], [Cantidad]) VALUES (7, 7, 200)
INSERT [dbo].[DeudasClientes] ([DeudasClientesId], [ClientesId], [Cantidad]) VALUES (8, 8, 148)
INSERT [dbo].[DeudasClientes] ([DeudasClientesId], [ClientesId], [Cantidad]) VALUES (9, 9, 102)
INSERT [dbo].[DeudasClientes] ([DeudasClientesId], [ClientesId], [Cantidad]) VALUES (10, 10, NULL)
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (1, N'Jose Manuel', N'm', N'1234567890', N'Cerca')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (2, N'Paulina Jimenez', N'f', N'1234567890', N'lejos')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (3, N'Mark Antony', N'm', N'1234567890', N'lejos')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (4, N'empleado sin nombre1', N'm', N'1234567890', N'cerca')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (5, N'empleado sin nombre2', N'm', N'1234567890', N'cerca')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (6, N'empleado sin nombre3', N'f', N'1234567890', N'cerca')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (7, N'empleado sin nombre4', N'm', N'1234567890', N'lejos')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (8, N'empleado sin nombre5', N'm', N'1234567890', N'cerca')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (9, N'empleado sin nombre6', N'f', N'1234567890', N'cerca')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Sexo], [Telefono], [Direccion]) VALUES (10, N'empleado sin nombre6', N'f', N'1234567890', NULL)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TiposId], [SuplidoresId], [Preciosuplidor], [Precioventa]) VALUES (1, N'cerveza presidente', 3, 5, 85, 100)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TiposId], [SuplidoresId], [Preciosuplidor], [Precioventa]) VALUES (2, N'yuca', 5, 7, 13, 15)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TiposId], [SuplidoresId], [Preciosuplidor], [Precioventa]) VALUES (3, N'maiz', 1, 2, 22, 30)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TiposId], [SuplidoresId], [Preciosuplidor], [Precioventa]) VALUES (4, N'doritos', 2, 10, 20, 25)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TiposId], [SuplidoresId], [Preciosuplidor], [Precioventa]) VALUES (5, N'mabi', 3, 5, 7, 15)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TiposId], [SuplidoresId], [Preciosuplidor], [Precioventa]) VALUES (6, N'pan', 5, 9, 3, 5)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TiposId], [SuplidoresId], [Preciosuplidor], [Precioventa]) VALUES (7, N'arenque', 5, 8, 18, 25)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TiposId], [SuplidoresId], [Preciosuplidor], [Precioventa]) VALUES (8, N'refrezco1', 4, 4, 10, 15)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TiposId], [SuplidoresId], [Preciosuplidor], [Precioventa]) VALUES (9, N'arroz', 5, 7, 12, 16)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [TiposId], [SuplidoresId], [Preciosuplidor], [Precioventa]) VALUES (10, N'refrezco2', 4, 6, NULL, NULL)
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (1, N'Ganesa', N'1234567890', N'abc@hotmail.com', N'SantoDomingo')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (2, N'Goya', N'1234567890', N'abc@hotmail.com', N'SanCristobal')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (3, N'Rica', N'1234567890', N'abc@hotmail.com', N'SantoDomingo')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (4, N'ColaReal', N'1234567890', N'abc@hotmail.com', N'EliasPiña')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (5, N'CerveceriaN', N'1234567890', N'abc@hotmail.com', N'SantoDomingo')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (6, N'Bepensa', N'1234567890', N'abc@hotmail.com', N'SantoDomingo')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (7, N'ArrozP', N'1234567890', N'abc@hotmailc.com', N'SanFrancisco')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (8, N'PescaderiaJ', N'1234567890', N'abc@hotmail.com', N'Barahona')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (9, N'PanaderiaF', N'1234567890', N'abc@hotmail.com', N'SanCristobal')
INSERT [dbo].[Suplidores] ([SuplidoresId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (10, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tipos] ([TiposId], [Descripcion]) VALUES (1, N'Enlatado')
INSERT [dbo].[Tipos] ([TiposId], [Descripcion]) VALUES (2, N'Paquete')
INSERT [dbo].[Tipos] ([TiposId], [Descripcion]) VALUES (3, N'BotellaCristal')
INSERT [dbo].[Tipos] ([TiposId], [Descripcion]) VALUES (4, N'BotellaPlastica')
INSERT [dbo].[Tipos] ([TiposId], [Descripcion]) VALUES (5, N'Detallado')
INSERT [dbo].[Tipos] ([TiposId], [Descripcion]) VALUES (6, N'embasado')
INSERT [dbo].[Tipos] ([TiposId], [Descripcion]) VALUES (7, N'bolsas')
INSERT [dbo].[Tipos] ([TiposId], [Descripcion]) VALUES (8, N'pastillas')
INSERT [dbo].[Tipos] ([TiposId], [Descripcion]) VALUES (9, N'cajas')
INSERT [dbo].[Tipos] ([TiposId], [Descripcion]) VALUES (10, NULL)
ALTER TABLE [dbo].[DeudasClientes]  WITH CHECK ADD  CONSTRAINT [FK_DeudasClientes_Clientes] FOREIGN KEY([ClientesId])
REFERENCES [dbo].[Clientes] ([ClientesId])
GO
ALTER TABLE [dbo].[DeudasClientes] CHECK CONSTRAINT [FK_DeudasClientes_Clientes]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Suplidores] FOREIGN KEY([SuplidoresId])
REFERENCES [dbo].[Suplidores] ([SuplidoresId])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Suplidores]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Tipos] FOREIGN KEY([TiposId])
REFERENCES [dbo].[Tipos] ([TiposId])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Tipos]
GO
USE [master]
GO
ALTER DATABASE [ColmadoDb] SET  READ_WRITE 
GO
/* nombre: Joel Serrano Guerrero matricula: 17-eiin-1-113 Seccion: 0541 */
