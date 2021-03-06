USE [master]
GO
/****** Object:  Database [EmpresaDb]    Script Date: 5/8/2018 5:48:49 p. m. ******/
CREATE DATABASE [EmpresaDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmpresaDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\EmpresaDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EmpresaDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\EmpresaDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EmpresaDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmpresaDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmpresaDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmpresaDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmpresaDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmpresaDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmpresaDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmpresaDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmpresaDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmpresaDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmpresaDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmpresaDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmpresaDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmpresaDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmpresaDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmpresaDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmpresaDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmpresaDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmpresaDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmpresaDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmpresaDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmpresaDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmpresaDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmpresaDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmpresaDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmpresaDb] SET  MULTI_USER 
GO
ALTER DATABASE [EmpresaDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmpresaDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmpresaDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmpresaDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EmpresaDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EmpresaDb] SET QUERY_STORE = OFF
GO
USE [EmpresaDb]
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
USE [EmpresaDb]
GO
/****** Object:  Table [dbo].[Administrativo]    Script Date: 5/8/2018 5:48:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrativo](
	[AdministrativoId] [int] NOT NULL,
	[GerenciaId] [int] NULL,
	[RRHHId] [int] NULL,
	[CreditosyCobrosId] [int] NULL,
	[ContabilidadId] [int] NULL,
	[RelacionesPublicasId] [int] NULL,
 CONSTRAINT [PK_Administrativo] PRIMARY KEY CLUSTERED 
(
	[AdministrativoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 5/8/2018 5:48:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[AlmacenId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[codigo] [varchar](50) NULL,
	[posicion] [varchar](50) NULL,
	[salario] [varchar](50) NULL,
	[sexo] [nchar](1) NULL,
	[telefono] [nchar](10) NULL,
	[direccion] [nchar](10) NULL,
 CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED 
(
	[AlmacenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contabilidad]    Script Date: 5/8/2018 5:48:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contabilidad](
	[ContabilidadId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[codigo] [varchar](50) NULL,
	[posicion] [varchar](50) NULL,
	[salario] [varchar](50) NULL,
	[sexo] [nchar](1) NULL,
	[telefono] [nchar](10) NULL,
	[direccion] [nchar](10) NULL,
 CONSTRAINT [PK_Contabilidad] PRIMARY KEY CLUSTERED 
(
	[ContabilidadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CreditosyCobros]    Script Date: 5/8/2018 5:48:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditosyCobros](
	[CreditosyCobrosId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[codigo] [varchar](50) NULL,
	[posicion] [varchar](50) NULL,
	[salario] [varchar](50) NULL,
	[sexo] [nchar](1) NULL,
	[telefono] [nchar](10) NULL,
	[direccion] [nchar](10) NULL,
 CONSTRAINT [PK_CreditosyCobros] PRIMARY KEY CLUSTERED 
(
	[CreditosyCobrosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CyM]    Script Date: 5/8/2018 5:48:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CyM](
	[CyMId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[codigo] [varchar](50) NULL,
	[posicion] [varchar](50) NULL,
	[salario] [varchar](50) NULL,
	[sexo] [nchar](1) NULL,
	[telefono] [nchar](10) NULL,
	[direccion] [nchar](10) NULL,
 CONSTRAINT [PK_CyM] PRIMARY KEY CLUSTERED 
(
	[CyMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 5/8/2018 5:48:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadosId] [int] NOT NULL,
	[AdministrativoId] [int] NULL,
	[OpertativoId] [int] NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gerencia]    Script Date: 5/8/2018 5:48:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gerencia](
	[GerenciaId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[codigo] [varchar](50) NULL,
	[posicion] [varchar](50) NULL,
	[salario] [varchar](50) NULL,
	[sexo] [nchar](1) NULL,
	[telefono] [nchar](10) NULL,
	[direccion] [nchar](10) NULL,
 CONSTRAINT [PK_Gerencia] PRIMARY KEY CLUSTERED 
(
	[GerenciaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Industrial]    Script Date: 5/8/2018 5:48:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Industrial](
	[IndustrialId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[codigo] [varchar](50) NULL,
	[posicion] [varchar](50) NULL,
	[salario] [varchar](50) NULL,
	[sexo] [nchar](1) NULL,
	[telefono] [nchar](10) NULL,
	[direccion] [nchar](10) NULL,
 CONSTRAINT [PK_Industrial] PRIMARY KEY CLUSTERED 
(
	[IndustrialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mantenimiento]    Script Date: 5/8/2018 5:48:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mantenimiento](
	[MantenimientoId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[codigo] [varchar](50) NULL,
	[posicion] [varchar](50) NULL,
	[salario] [varchar](50) NULL,
	[sexo] [nchar](1) NULL,
	[telefono] [nchar](10) NULL,
	[direccion] [nchar](10) NULL,
 CONSTRAINT [PK_Mantenimiento] PRIMARY KEY CLUSTERED 
(
	[MantenimientoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operativo]    Script Date: 5/8/2018 5:48:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operativo](
	[OperativoId] [int] NOT NULL,
	[CyMId] [int] NULL,
	[IndustrialId] [int] NULL,
	[AlmacenId] [int] NULL,
	[MantenimientoId] [int] NULL,
 CONSTRAINT [PK_Operativo] PRIMARY KEY CLUSTERED 
(
	[OperativoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RelacionesPublicas]    Script Date: 5/8/2018 5:48:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelacionesPublicas](
	[RelacionesPublicasId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[codigo] [varchar](50) NULL,
	[posicion] [varchar](50) NULL,
	[salario] [varchar](50) NULL,
	[sexo] [nchar](1) NULL,
	[telefono] [nchar](10) NULL,
	[direccion] [nchar](10) NULL,
 CONSTRAINT [PK_RelacionesPublicas] PRIMARY KEY CLUSTERED 
(
	[RelacionesPublicasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RRHH]    Script Date: 5/8/2018 5:48:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RRHH](
	[RRHHId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[codigo] [varchar](50) NULL,
	[posicion] [varchar](50) NULL,
	[salario] [varchar](50) NULL,
	[sexo] [nchar](1) NULL,
	[telefono] [nchar](10) NULL,
	[direccion] [nchar](10) NULL,
 CONSTRAINT [PK_RRHH] PRIMARY KEY CLUSTERED 
(
	[RRHHId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Almacen] ([AlmacenId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (1, N'empleado1', N'00081', N'encargado', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[Almacen] ([AlmacenId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (2, N'empleado2', N'00082', N'asistente', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[Almacen] ([AlmacenId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (3, N'empleado3', N'00083', N'asistente', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Almacen] ([AlmacenId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (4, N'empleado4', N'00084', N'cargador', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Almacen] ([AlmacenId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (5, N'empleado5', N'00085', N'cargador', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Almacen] ([AlmacenId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (6, N'empleado6', N'00086', N'cargador', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Almacen] ([AlmacenId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (7, N'empleado7', N'00087', N'cargador', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Almacen] ([AlmacenId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (8, N'empleado8', N'00088', N'cargador', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Almacen] ([AlmacenId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (9, N'empleado9', N'00089', N'cargador', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Almacen] ([AlmacenId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (10, N'empleado10', N'00090', N'cargador', N'9999', N'm', N'1234567890', NULL)
INSERT [dbo].[Contabilidad] ([ContabilidadId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (1, N'empleado1', N'00041', N'encargado', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Contabilidad] ([ContabilidadId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (2, N'empleado2', N'00042', N'asistente1', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Contabilidad] ([ContabilidadId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (3, N'empleado3', N'00043', N'asistente2', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Contabilidad] ([ContabilidadId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (4, N'empleado4', N'00044', N'asistente3', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Contabilidad] ([ContabilidadId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (5, N'empleado5', N'00045', N'asistente4', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[Contabilidad] ([ContabilidadId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (6, N'empleado6', N'00046', N'asistente5', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[Contabilidad] ([ContabilidadId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (7, N'empleado7', N'00047', N'asistente6', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Contabilidad] ([ContabilidadId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (8, N'empleado8', N'00048', N'asistente7', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Contabilidad] ([ContabilidadId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (9, N'empleado9', N'00049', N'asistente8', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Contabilidad] ([ContabilidadId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (10, N'empleado10', N'00050', N'asistente9', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CreditosyCobros] ([CreditosyCobrosId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (1, N'empleado', N'00031', N'encargado', N'9999', N'f', N'1234567890', N'cerca     ')
INSERT [dbo].[CreditosyCobros] ([CreditosyCobrosId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (2, N'empleado', N'00032', N'asistente1', N'9999', N'f', N'1234567890', N'cerca     ')
INSERT [dbo].[CreditosyCobros] ([CreditosyCobrosId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (3, N'empleado', N'00033', N'asistente2', N'9999', N'f', N'1234567890', NULL)
INSERT [dbo].[CreditosyCobros] ([CreditosyCobrosId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (4, N'empleado', N'00034', N'asistente3', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CreditosyCobros] ([CreditosyCobrosId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (5, N'empleado', N'00035', N'asistente4', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CreditosyCobros] ([CreditosyCobrosId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (6, N'empleado', N'00036', N'asistente5', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CreditosyCobros] ([CreditosyCobrosId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (7, N'empleado', N'00037', N'asistente6', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CreditosyCobros] ([CreditosyCobrosId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (8, N'empleado', N'00038', N'asistente7', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CreditosyCobros] ([CreditosyCobrosId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (9, N'empleado', N'00039', N'asistente8', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CreditosyCobros] ([CreditosyCobrosId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (10, N'empleado', N'00040', N'asistente', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CyM] ([CyMId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (1, N'empleado1', N'00071', N'encargado', N'9999', N'm', N'1234567890', N'          ')
INSERT [dbo].[CyM] ([CyMId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (2, N'empleado2', N'00072', N'asistente', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CyM] ([CyMId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (3, N'empleado3', N'00073', N'tecnico', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CyM] ([CyMId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (4, N'empleado4', N'00074', N'tecnico', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CyM] ([CyMId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (5, N'empleado5', N'00075', N'tecnico', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CyM] ([CyMId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (6, N'empleado6', N'00076', N'tecnico', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CyM] ([CyMId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (7, N'empleado7', N'00077', N'tecnico', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CyM] ([CyMId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (8, N'empleado8', N'00078', N'tecnico', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[CyM] ([CyMId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (9, N'empleado9', N'00079', N'pasante', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[CyM] ([CyMId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (10, N'empleado10', N'00080', N'pasante', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Gerencia] ([GerenciaId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (1, N'empleado1', N'00021', N'gerente general', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Gerencia] ([GerenciaId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (2, N'empleado2', N'00022', N'gerente CyM', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Gerencia] ([GerenciaId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (3, N'empleado3', N'00023', N'gerente Industrial', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Gerencia] ([GerenciaId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (4, N'empleado4', N'00024', N'asistente1', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[Gerencia] ([GerenciaId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (5, N'empleado5', N'00025', N'asistente2', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[Gerencia] ([GerenciaId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (6, N'empleado6', N'00026', N'asistente3', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Gerencia] ([GerenciaId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (7, N'empleado7', N'00027', N'asistente4', N'9999', N'f', N'1234567890', N'cerca     ')
INSERT [dbo].[Gerencia] ([GerenciaId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (8, N'empleado8', N'00028', N'asistente5', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[Gerencia] ([GerenciaId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (9, N'empleado9', N'00029', N'asistente6', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[Gerencia] ([GerenciaId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (10, N'empleado10', N'00030', N'asistente7', N'9999', N'm', N'1234567890', NULL)
INSERT [dbo].[Industrial] ([IndustrialId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (1, N'empleado1', N'00061', N'encargado', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Industrial] ([IndustrialId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (2, N'empleado2', N'00062', N'asistente', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Industrial] ([IndustrialId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (3, N'empleado3', N'00063', N'tecnico', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Industrial] ([IndustrialId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (4, N'empleado4', N'00064', N'tecnico', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Industrial] ([IndustrialId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (5, N'empleado5', N'00065', N'tecnico', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Industrial] ([IndustrialId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (6, N'empleado6', N'00066', N'tecnico', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Industrial] ([IndustrialId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (7, N'empleado7', N'00067', N'tecnico', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Industrial] ([IndustrialId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (8, N'empleado8', N'00068', N'tecnico', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Industrial] ([IndustrialId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (9, N'empleado9', N'00069', N'pasante', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[Industrial] ([IndustrialId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (10, N'empleado10', N'00070', N'pasante', N'9999', N'm', N'1234567890', NULL)
INSERT [dbo].[Mantenimiento] ([MantenimientoId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (1, N'empleado1', N'00051', N'jardinero', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Mantenimiento] ([MantenimientoId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (2, N'empleado2', N'00052', N'jardinero', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Mantenimiento] ([MantenimientoId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (3, N'empleado3', N'00053', N'jardinero', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Mantenimiento] ([MantenimientoId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (4, N'empleado4', N'00054', N'conserje', N'9999', N'f', N'1234567890', NULL)
INSERT [dbo].[Mantenimiento] ([MantenimientoId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (5, N'empleado5', N'00055', N'conserje', N'9999', N'f', N'1234567890', N'cerca     ')
INSERT [dbo].[Mantenimiento] ([MantenimientoId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (6, N'empleado6', N'00056', N'conserje', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[Mantenimiento] ([MantenimientoId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (7, N'empleado7', N'00057', N'conserje', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[Mantenimiento] ([MantenimientoId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (8, N'empleado8', N'00058', N'conserje', N'9999', N'f', N'1234567890', N'cerca     ')
INSERT [dbo].[Mantenimiento] ([MantenimientoId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (9, N'empleado9', N'00059', N'cocinero', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[Mantenimiento] ([MantenimientoId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (10, N'empleado10', N'00060', N'cocinero', N'9999', N'f', N'1234567890', N'cerca     ')
INSERT [dbo].[RelacionesPublicas] ([RelacionesPublicasId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (1, N'empleado1', N'00011', N'encargado', N'9999', N'f', N'1234567890', N'cerca     ')
INSERT [dbo].[RelacionesPublicas] ([RelacionesPublicasId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (2, N'empleado2', N'00012', N'asistente1', N'9999', N'f', N'1234567890', N'cerca     ')
INSERT [dbo].[RelacionesPublicas] ([RelacionesPublicasId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (3, N'empleado3', N'00013', N'asistente2', N'9999', N'f', N'1234567890', N'cerca     ')
INSERT [dbo].[RelacionesPublicas] ([RelacionesPublicasId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (4, N'empleado4', N'00014', N'asistente3', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[RelacionesPublicas] ([RelacionesPublicasId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (5, N'empleado5', N'00015', N'asistente4', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[RelacionesPublicas] ([RelacionesPublicasId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (6, N'empleado6', N'00016', N'asistente5', N'9999', N'f', N'1234567890', NULL)
INSERT [dbo].[RelacionesPublicas] ([RelacionesPublicasId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (7, N'empleado7', N'00017', N'asistente6', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[RelacionesPublicas] ([RelacionesPublicasId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (8, N'empleado8', N'00018', N'asistente7', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[RelacionesPublicas] ([RelacionesPublicasId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (9, N'empleado9', N'00019', N'asistente8', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[RelacionesPublicas] ([RelacionesPublicasId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (10, N'empleado10', N'00020', N'asistente9', N'9999', N'm', N'1234567890', N'lejos     ')
INSERT [dbo].[RRHH] ([RRHHId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (1, N'empleado1', N'00001', N'encargado', N'9999', N'f', N'1234567890', N'cerca     ')
INSERT [dbo].[RRHH] ([RRHHId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (2, N'empleado2', N'00002', N'asistente1', N'9999', N'f', N'1234567890', N'cerca     ')
INSERT [dbo].[RRHH] ([RRHHId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (3, N'empleado3', N'00003', N'asistente2', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[RRHH] ([RRHHId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (4, N'empleado4', N'00004', N'asistente3', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[RRHH] ([RRHHId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (5, N'empleado5', N'00005', N'asistente4', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[RRHH] ([RRHHId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (6, N'empleado6', N'00006', N'asistente5', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[RRHH] ([RRHHId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (7, N'empleado7', N'00007', N'asistente6', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[RRHH] ([RRHHId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (8, N'empleado8', N'00008', N'asistente7', N'9999', N'f', N'1234567890', N'lejos     ')
INSERT [dbo].[RRHH] ([RRHHId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (9, N'empleado9', N'00009', N'asistente8', N'9999', N'm', N'1234567890', N'cerca     ')
INSERT [dbo].[RRHH] ([RRHHId], [nombre], [codigo], [posicion], [salario], [sexo], [telefono], [direccion]) VALUES (10, N'empleado10', N'00010', N'asistente9', N'9999', N'm', N'1234567890', NULL)
ALTER TABLE [dbo].[Administrativo]  WITH CHECK ADD  CONSTRAINT [FK_Administrativo_Contabilidad] FOREIGN KEY([ContabilidadId])
REFERENCES [dbo].[Contabilidad] ([ContabilidadId])
GO
ALTER TABLE [dbo].[Administrativo] CHECK CONSTRAINT [FK_Administrativo_Contabilidad]
GO
ALTER TABLE [dbo].[Administrativo]  WITH CHECK ADD  CONSTRAINT [FK_Administrativo_CreditosyCobros] FOREIGN KEY([CreditosyCobrosId])
REFERENCES [dbo].[CreditosyCobros] ([CreditosyCobrosId])
GO
ALTER TABLE [dbo].[Administrativo] CHECK CONSTRAINT [FK_Administrativo_CreditosyCobros]
GO
ALTER TABLE [dbo].[Administrativo]  WITH CHECK ADD  CONSTRAINT [FK_Administrativo_Gerencia] FOREIGN KEY([GerenciaId])
REFERENCES [dbo].[Gerencia] ([GerenciaId])
GO
ALTER TABLE [dbo].[Administrativo] CHECK CONSTRAINT [FK_Administrativo_Gerencia]
GO
ALTER TABLE [dbo].[Administrativo]  WITH CHECK ADD  CONSTRAINT [FK_Administrativo_RelacionesPublicas] FOREIGN KEY([RelacionesPublicasId])
REFERENCES [dbo].[RelacionesPublicas] ([RelacionesPublicasId])
GO
ALTER TABLE [dbo].[Administrativo] CHECK CONSTRAINT [FK_Administrativo_RelacionesPublicas]
GO
ALTER TABLE [dbo].[Administrativo]  WITH CHECK ADD  CONSTRAINT [FK_Administrativo_RRHH] FOREIGN KEY([RRHHId])
REFERENCES [dbo].[RRHH] ([RRHHId])
GO
ALTER TABLE [dbo].[Administrativo] CHECK CONSTRAINT [FK_Administrativo_RRHH]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Administrativo] FOREIGN KEY([AdministrativoId])
REFERENCES [dbo].[Administrativo] ([AdministrativoId])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Administrativo]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Operativo] FOREIGN KEY([OpertativoId])
REFERENCES [dbo].[Operativo] ([OperativoId])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Operativo]
GO
ALTER TABLE [dbo].[Operativo]  WITH CHECK ADD  CONSTRAINT [FK_Operativo_Almacen] FOREIGN KEY([AlmacenId])
REFERENCES [dbo].[Almacen] ([AlmacenId])
GO
ALTER TABLE [dbo].[Operativo] CHECK CONSTRAINT [FK_Operativo_Almacen]
GO
ALTER TABLE [dbo].[Operativo]  WITH CHECK ADD  CONSTRAINT [FK_Operativo_CyM] FOREIGN KEY([CyMId])
REFERENCES [dbo].[CyM] ([CyMId])
GO
ALTER TABLE [dbo].[Operativo] CHECK CONSTRAINT [FK_Operativo_CyM]
GO
ALTER TABLE [dbo].[Operativo]  WITH CHECK ADD  CONSTRAINT [FK_Operativo_Industrial] FOREIGN KEY([IndustrialId])
REFERENCES [dbo].[Industrial] ([IndustrialId])
GO
ALTER TABLE [dbo].[Operativo] CHECK CONSTRAINT [FK_Operativo_Industrial]
GO
ALTER TABLE [dbo].[Operativo]  WITH CHECK ADD  CONSTRAINT [FK_Operativo_Mantenimiento] FOREIGN KEY([MantenimientoId])
REFERENCES [dbo].[Mantenimiento] ([MantenimientoId])
GO
ALTER TABLE [dbo].[Operativo] CHECK CONSTRAINT [FK_Operativo_Mantenimiento]
GO
USE [master]
GO
ALTER DATABASE [EmpresaDb] SET  READ_WRITE 
GO
/* nombre: Joel Serrano Guerrero matricula: 17-eiin-1-113 Seccion: 0541 */
