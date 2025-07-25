USE [master]
GO
/****** Object:  Database [ClinicaGrupo15]    Script Date: 23/06/2025 21:28:41 ******/
CREATE DATABASE [ClinicaGrupo15]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClinicaGrupo15', FILENAME = N'C:\Users\RTECH\Desktop\Study\Visual Studio\TPI_BaseDeDatos\ClinicaGrupo15.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ClinicaGrupo15_log', FILENAME = N'C:\Users\RTECH\Desktop\Study\Visual Studio\TPI_BaseDeDatos\ClinicaGrupo15_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ClinicaGrupo15] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClinicaGrupo15].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClinicaGrupo15] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET ARITHABORT OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ClinicaGrupo15] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ClinicaGrupo15] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ClinicaGrupo15] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ClinicaGrupo15] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ClinicaGrupo15] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ClinicaGrupo15] SET  MULTI_USER 
GO
ALTER DATABASE [ClinicaGrupo15] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ClinicaGrupo15] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ClinicaGrupo15] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ClinicaGrupo15] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ClinicaGrupo15] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ClinicaGrupo15] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ClinicaGrupo15] SET QUERY_STORE = ON
GO
ALTER DATABASE [ClinicaGrupo15] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ClinicaGrupo15]
GO
/****** Object:  Table [dbo].[Administradores]    Script Date: 23/06/2025 21:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administradores](
	[Legajo_Admin] [char](8) NOT NULL,
	[Contraseña_Admin] [varchar](30) NOT NULL,
	[Nombre_Admin] [varchar](20) NOT NULL,
	[Apellido_Admin] [varchar](20) NOT NULL,
	[Correo_Admin] [varchar](50) NOT NULL,
	[Telefono_Admin] [varchar](20) NULL,
 CONSTRAINT [PK_Administrador] PRIMARY KEY CLUSTERED 
(
	[Legajo_Admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 23/06/2025 21:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[CodPostal_Ciudad] [char](4) NOT NULL,
	[CodProvincia] [char](4) NOT NULL,
	[Desc_Ciudad] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[CodPostal_Ciudad] ASC,
	[CodProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consultas]    Script Date: 23/06/2025 21:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consultas](
	[CodConsultas] [char](8) NOT NULL,
	[LegajoMedico_Cons] [char](8) NOT NULL,
	[DNIPaciente_Cons] [char](8) NOT NULL,
	[PresenciaPaciente] [bit] NOT NULL,
	[Observacion_Cons] [varchar](150) NULL,
 CONSTRAINT [PK_Consultas] PRIMARY KEY CLUSTERED 
(
	[CodConsultas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidades]    Script Date: 23/06/2025 21:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidades](
	[Cod_Especialidad] [char](6) NOT NULL,
	[Especialidad] [varchar](30) NOT NULL,
	[Desc_Espec] [varchar](100) NULL,
 CONSTRAINT [PK_Especialidades] PRIMARY KEY CLUSTERED 
(
	[Cod_Especialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicos]    Script Date: 23/06/2025 21:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicos](
	[Legajo_Medico] [char](8) NOT NULL,
	[DNI_Medico] [char](8) NOT NULL,
	[Nombre_Medico] [varchar](30) NOT NULL,
	[Apellido_Medico] [varchar](30) NOT NULL,
	[Sexo_Medico] [varchar](10) NOT NULL,
	[CodEspecialidad_Medico] [char](6) NOT NULL,
	[Nacionalidad_Medico] [varchar](50) NOT NULL,
	[FechaNacimiento_Medico] [date] NOT NULL,
	[Direccion_Medico] [varchar](50) NOT NULL,
	[Ciudad_Medico] [varchar](40) NOT NULL,
	[Provincia_Medico] [varchar](40) NOT NULL,
	[Correo_Medico] [varchar](50) NOT NULL,
	[Telefono_Medico] [varchar](20) NOT NULL,
	[DiasAtencion_Medico] [varchar](100) NOT NULL,
	[HorarioInicio_Medico] [time](7) NOT NULL,
	[HorarioFin_Medico] [time](7) NOT NULL,
	[Contraseña_Medico] [varchar](20) NOT NULL,
	[Estado_Medico] [bit] NOT NULL,
 CONSTRAINT [PK_Medicos] PRIMARY KEY CLUSTERED 
(
	[Legajo_Medico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 23/06/2025 21:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[DNI_Paciente] [char](8) NOT NULL,
	[Nombre_Paciente] [varchar](20) NOT NULL,
	[Apellido_Paciente] [varchar](20) NOT NULL,
	[Sexo_Paciente] [varchar](10) NOT NULL,
	[FechaNacimiento_Paciente] [date] NOT NULL,
	[Correo_Paciente] [varchar](50) NULL,
	[Telefono_Paciente] [varchar](20) NOT NULL,
	[Direccion_Paciente] [varchar](50) NOT NULL,
	[CodCiudad_Paciente] [char](4) NOT NULL,
	[CodProvincia_Paciente] [char](4) NOT NULL,
	[Estado_Paciente] [bit] NULL,
	[Nacionalidad_Paciente] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pacientes] PRIMARY KEY CLUSTERED 
(
	[DNI_Paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 23/06/2025 21:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[CodProvincia] [char](4) NOT NULL,
	[Desc_Provincia] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Provincias] PRIMARY KEY CLUSTERED 
(
	[CodProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turnos]    Script Date: 23/06/2025 21:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turnos](
	[Cod_Turno] [char](8) NOT NULL,
	[LegajoMedico_Turnos] [char](8) NOT NULL,
	[DNIPaciente_Turnos] [char](8) NOT NULL,
	[LegajoAdmin_Turnos] [char](8) NOT NULL,
	[Dia_Turnos] [datetime] NOT NULL,
	[Horarios_Turnos] [time](7) NOT NULL,
	[Estado_Turno] [int] NOT NULL,
 CONSTRAINT [PK_Turnos] PRIMARY KEY CLUSTERED 
(
	[Cod_Turno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00001', N'admin1234', N'Lucía', N'Pérez', N'lucia.perez@clinica.com', N'1134567890')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00002', N'securepass', N'Javier', N'Gómez', N'javier.gomez@clinica.com', N'1145678901')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00003', N'clave2025', N'María', N'Fernández', N'maria.fernandez@clinica.com', N'1156789012')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00004', N'pass2025', N'Sofía', N'Martínez', N'sofia.martinez@clinica.com', N'1167890123')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00005', N'adminpass', N'Tomás', N'López', N'tomas.lopez@clinica.com', N'1178901234')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00006', N'clave1234', N'Camila', N'Ruiz', N'camila.ruiz@clinica.com', N'1189012345')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00007', N'secure2025', N'Mateo', N'Díaz', N'mateo.diaz@clinica.com', N'1190123456')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00008', N'clinica01', N'Valentina', N'Gómez', N'valentina.gomez@clinica.com', N'1101234567')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00009', N'admclave', N'Benjamín', N'Fernández', N'benjamin.fernandez@clinica.com', N'1112345678')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00010', N'contrasegura', N'Juana', N'Romero', N'juana.romero@clinica.com', N'1123456789')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00011', N'passadmin', N'Ignacio', N'Sosa', N'ignacio.sosa@clinica.com', N'1134567890')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00012', N'admin2025', N'Florencia', N'Acosta', N'florencia.acosta@clinica.com', N'1145678901')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00013', N'segura456', N'Bruno', N'Morales', N'bruno.morales@clinica.com', N'1156789012')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00014', N'claveadmin', N'Martina', N'Silva', N'martina.silva@clinica.com', N'1167890123')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00015', N'clinica123', N'Lautaro', N'Ramos', N'lautaro.ramos@clinica.com', N'1178901234')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00016', N'seguro789', N'Agustina', N'Torres', N'agustina.torres@clinica.com', N'1189012345')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00017', N'adminclave', N'Sebastián', N'Méndez', N'sebastian.mendez@clinica.com', N'1190123456')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00018', N'claveclinica', N'Julieta', N'Paz', N'julieta.paz@clinica.com', N'1101234567')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00019', N'seguro2025', N'Franco', N'Cabrera', N'franco.cabrera@clinica.com', N'1112345678')
INSERT [dbo].[Administradores] ([Legajo_Admin], [Contraseña_Admin], [Nombre_Admin], [Apellido_Admin], [Correo_Admin], [Telefono_Admin]) VALUES (N'ADM00020', N'adminsecure', N'Renata', N'Iglesias', N'renata.iglesias@clinica.com', N'1123456789')
GO
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'1625', N'BSAS', N'Escobar')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'1900', N'BSAS', N'La Plata')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'2000', N'SFE ', N'Rosario')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'2300', N'SFE ', N'Rafaela')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3000', N'SFE ', N'Santa Fe')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3100', N'ENTR', N'Paraná')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3200', N'ENTR', N'Concordia')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3280', N'ENTR', N'Gualeguaychú')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3300', N'MISI', N'Posadas')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3360', N'MISI', N'Eldorado')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3370', N'MISI', N'Oberá')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3400', N'CORR', N'Corrientes')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3418', N'CORR', N'Paso de los Libres')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3450', N'CORR', N'Goya')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3500', N'CHAC', N'Resistencia')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3530', N'CHAC', N'Villa Ángela')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3540', N'CHAC', N'Sáenz Peña')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3600', N'FORM', N'Formosa')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3612', N'FORM', N'Herradura')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'3620', N'FORM', N'Clorinda')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4000', N'TUCU', N'San Miguel de Tucumán')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4107', N'TUCU', N'Tafí Viejo')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4162', N'TUCU', N'Concepción')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4200', N'SDEL', N'Santiago del Estero')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4230', N'SDEL', N'Termas de Río Hondo')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4300', N'SDEL', N'La Banda')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4400', N'SALT', N'Salta')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4405', N'SALT', N'Cafayate')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4417', N'SALT', N'Orán')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4600', N'JUJU', N'San Salvador de Jujuy')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4624', N'JUJU', N'Perico')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4630', N'JUJU', N'Palpalá')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4700', N'CATA', N'San Fernando del Valle de Catamarca')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4711', N'CATA', N'Andalgalá')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'4720', N'CATA', N'Tinogasta')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5000', N'CORD', N'Córdoba Capital')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5186', N'CORD', N'Río Cuarto')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5300', N'LARI', N'La Rioja')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5320', N'LARI', N'Chilecito')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5400', N'SJUA', N'San Juan')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5417', N'SJUA', N'Rawson')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5430', N'LARI', N'Aimogasta')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5460', N'SJUA', N'Pocito')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5500', N'MEND', N'Mendoza Capital')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5580', N'MEND', N'Godoy Cruz')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5600', N'MEND', N'San Rafael')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5700', N'SLUI', N'San Luis')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5714', N'CORD', N'Villa María')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5760', N'SLUI', N'Merlo')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'5780', N'SLUI', N'Villa Mercedes')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'6200', N'LAPA', N'General Pico')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'6240', N'LAPA', N'Vicuña Mackenna')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'6300', N'LAPA', N'Santa Rosa')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'7600', N'BSAS', N'Mar del Plata')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'8000', N'BSAS', N'Bahía Blanca')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'8300', N'NEUQ', N'Neuquén Capital')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'8302', N'RNGR', N'Allen')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'8320', N'NEUQ', N'Centenario')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'8342', N'NEUQ', N'Aluminé')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'8400', N'RNGR', N'Viedma')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'8500', N'RNGR', N'Bariloche')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'9000', N'CHUB', N'Comodoro Rivadavia')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'9100', N'CHUB', N'Puerto Madryn')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'9200', N'CHUB', N'Esquel')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'9400', N'SANT', N'Río Gallegos')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'9405', N'SANT', N'Caleta Olivia')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'9410', N'SANT', N'Ushuaia')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'9410', N'TDFU', N'Ushuaia')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'9417', N'TDFU', N'Río Grande')
INSERT [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia], [Desc_Ciudad]) VALUES (N'9418', N'TDFU', N'Tolhuin')
GO
INSERT [dbo].[Consultas] ([CodConsultas], [LegajoMedico_Cons], [DNIPaciente_Cons], [PresenciaPaciente], [Observacion_Cons]) VALUES (N'CON0001 ', N'MED00006', N'20228704', 1, N'Radiografía computada')
GO
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'CARDIO', N'Cardiología', N'Estudia y trata las enfermedades del corazón y del sistema circulatorio')
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'CLINIC', N'Clínica Médica', N'Atención integral de adultos, diagnóstico y tratamiento de enfermedades comunes')
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'DERMAT', N'Dermatología', N'Diagnóstico y tratamiento de afecciones de la piel, pelo y uñas')
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'ENDOCR', N'Endocrinología', N'Trastornos hormonales y del sistema endocrino')
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'GINECO', N'Ginecología', N'Atención de la salud del aparato reproductor femenino')
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'NEFROL', N'Nefrología', N'Estudia y trata enfermedades renales')
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'NEUROL', N'Neurología', N'Trata enfermedades del sistema nervioso central y periférico')
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'OBSTET', N'Obstetricia', N'Control del embarazo, parto y postparto')
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'OFTALM', N'Oftalmología', N'Estudia y trata las enfermedades de los ojos y la visión')
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'OTORRI', N'Otorrinolaringología', N'Trata enfermedades de oído, nariz y garganta')
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'PEDIAT', N'Pediatría', N'Atiende la salud y enfermedades de bebés, niños y adolescentes')
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'PSIQUI', N'Psiquiatría', N'Diagnóstico y tratamiento de trastornos mentales y emocionales')
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'REUMA ', N'Reumatología', N'Trata enfermedades articulares y autoinmunes como la artritis')
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'TRAUMA', N'Traumatología', N'Diagnóstico y tratamiento de lesiones óseas, musculares y articulares')
INSERT [dbo].[Especialidades] ([Cod_Especialidad], [Especialidad], [Desc_Espec]) VALUES (N'UROLOG', N'Urología', N'Enfermedades del sistema urinario y aparato reproductor masculino')
GO
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00001', N'21172390', N'Arcelia', N'Roselló', N'Femenino', N'UROLOG', N'Argentina', CAST(N'1994-11-12' AS Date), N'Camino Azucena Castillo 24', N'Alicante', N'Río Negro', N'arcelia.rosello@clinica.com', N'+34725858600', N'Miércoles, Viernes, Jueves', CAST(N'08:00:00' AS Time), CAST(N'14:00:00' AS Time), N'_xs3)ZuR2&', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00002', N'44833071', N'Heriberto', N'Ramírez', N'Masculino', N'CLINIC', N'Argentina', CAST(N'1984-01-12' AS Date), N'Acceso Candelario Segovia 55', N'Córdoba', N'Santiago del Estero', N'heriberto.ramirez@clinica.com', N'+34988349673', N'Martes, Jueves, Miércoles, Lunes, Viernes', CAST(N'09:00:00' AS Time), CAST(N'15:00:00' AS Time), N'v&H^01Zl2F', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00003', N'23144565', N'Yolanda', N'Echeverría', N'Femenino', N'OFTALM', N'Argentina', CAST(N'1984-09-19' AS Date), N'Cuesta de África Iniesta 87', N'Jaén', N'Santa Fe', N'yolanda.echeverria@clinica.com', N'+34600976574', N'Lunes, Miércoles, Jueves', CAST(N'07:00:00' AS Time), CAST(N'13:00:00' AS Time), N'xX&9ZpBgds', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00004', N'37581234', N'Martina', N'Sáez', N'Femenino', N'TRAUMA', N'Argentina', CAST(N'1975-05-30' AS Date), N'Paseo Pedro Soria 10', N'Buenos Aires', N'Buenos Aires', N'martina.saez@clinica.com', N'1133345566', N'Lunes, Miércoles, Viernes', CAST(N'08:00:00' AS Time), CAST(N'14:00:00' AS Time), N'med123secure', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00005', N'40871235', N'Luciano', N'Paredes', N'Masculino', N'PEDIAT', N'Argentina', CAST(N'1980-03-18' AS Date), N'Calle Solís 42', N'Rosario', N'Santa Fe', N'luciano.paredes@clinica.com', N'1144456677', N'Martes, Jueves', CAST(N'10:00:00' AS Time), CAST(N'16:00:00' AS Time), N'pediatra88', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00006', N'22981245', N'Tamara', N'Vega', N'Femenino', N'CARDIO', N'Argentina', CAST(N'1985-08-22' AS Date), N'Calle Santa Fe 120', N'Salta', N'Salta', N'tamara.vega@clinica.com', N'3874567890', N'Lunes, Jueves, Viernes', CAST(N'07:00:00' AS Time), CAST(N'13:00:00' AS Time), N'corazon2025', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00007', N'32145678', N'Gastón', N'Medina', N'Masculino', N'NEUROL', N'Argentina', CAST(N'1978-02-14' AS Date), N'Av. Belgrano 890', N'San Miguel de Tucumán', N'Tucumán', N'gaston.medina@clinica.com', N'3811234567', N'Lunes, Martes, Jueves', CAST(N'09:00:00' AS Time), CAST(N'15:00:00' AS Time), N'neuro@safe', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00008', N'33891234', N'Carolina', N'Martínez', N'Femenino', N'DERMAT', N'Argentina', CAST(N'1990-06-11' AS Date), N'Calle Italia 33', N'Godoy Cruz', N'Mendoza', N'carolina.martinez@clinica.com', N'2618889999', N'Martes, Miércoles', CAST(N'08:30:00' AS Time), CAST(N'14:30:00' AS Time), N'piel_sana1', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00009', N'30457896', N'Ramiro', N'Quiroga', N'Masculino', N'REUMA ', N'Argentina', CAST(N'1976-10-09' AS Date), N'Calle Mendoza 90', N'Neuquén', N'Neuquén', N'ramiro.quiroga@clinica.com', N'2995556789', N'Miércoles, Viernes', CAST(N'07:00:00' AS Time), CAST(N'13:00:00' AS Time), N'artritis88', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00010', N'41894512', N'Silvina', N'Ruiz', N'Femenino', N'GINECO', N'Argentina', CAST(N'1982-12-05' AS Date), N'Av. Mitre 450', N'Posadas', N'Misiones', N'silvina.ruiz@clinica.com', N'3761234567', N'Lunes, Martes, Jueves', CAST(N'10:00:00' AS Time), CAST(N'16:00:00' AS Time), N'gine2024', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00011', N'36789012', N'Federico', N'Benítez', N'Masculino', N'PSIQUI', N'Argentina', CAST(N'1983-11-20' AS Date), N'Calle Rivadavia 210', N'San Fernando del Valle de Catamarca', N'Catamarca', N'federico.benitez@clinica.com', N'3834123456', N'Martes, Miércoles, Jueves', CAST(N'08:00:00' AS Time), CAST(N'14:00:00' AS Time), N'menteSegura1', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00012', N'42987654', N'Ailén', N'Toledo', N'Femenino', N'OBSTET', N'Argentina', CAST(N'1979-07-08' AS Date), N'Pje. Dorrego 17', N'La Rioja', N'La Rioja', N'ailen.toledo@clinica.com', N'3804456677', N'Lunes, Miércoles, Viernes', CAST(N'09:00:00' AS Time), CAST(N'15:00:00' AS Time), N'partoOk2024', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00013', N'33441234', N'Santiago', N'Molina', N'Masculino', N'OTORRI', N'Argentina', CAST(N'1986-01-19' AS Date), N'Av. Libertador 900', N'Santa Rosa', N'La Pampa', N'santiago.molina@clinica.com', N'2954557890', N'Martes, Jueves', CAST(N'08:30:00' AS Time), CAST(N'14:30:00' AS Time), N'auditivo!77', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00014', N'41237890', N'Valeria', N'Domínguez', N'Femenino', N'NEFROL', N'Argentina', CAST(N'1977-04-23' AS Date), N'Calle 25 de Mayo 400', N'Rawson', N'San Juan', N'valeria.dominguez@clinica.com', N'2644567890', N'Lunes, Martes, Jueves', CAST(N'07:00:00' AS Time), CAST(N'13:00:00' AS Time), N'riñon2024', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00015', N'29876543', N'Bruno', N'Navarro', N'Masculino', N'ENDOCR', N'Argentina', CAST(N'1988-03-01' AS Date), N'Av. Perón 123', N'Villa Mercedes', N'San Luis', N'bruno.navarro@clinica.com', N'2657423698', N'Miércoles, Jueves, Viernes', CAST(N'09:00:00' AS Time), CAST(N'15:00:00' AS Time), N'hormonas9', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00016', N'34567891', N'Lorena', N'Aragón', N'Femenino', N'TRAUMA', N'Argentina', CAST(N'1985-06-16' AS Date), N'Ruta 3 KM 8', N'Río Grande', N'Tierra del Fuego', N'lorena.aragon@clinica.com', N'2964423344', N'Lunes, Miércoles, Viernes', CAST(N'08:00:00' AS Time), CAST(N'14:00:00' AS Time), N'huesosOK12', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00017', N'42908123', N'Nicolás', N'Gutiérrez', N'Masculino', N'CARDIO', N'Argentina', CAST(N'1976-09-29' AS Date), N'Av. Colón 60', N'San Salvador de Jujuy', N'Jujuy', N'nicolas.gutierrez@clinica.com', N'3884556677', N'Martes, Jueves', CAST(N'07:00:00' AS Time), CAST(N'13:00:00' AS Time), N'cardioFuerte', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00018', N'31887654', N'Emilia', N'Sánchez', N'Femenino', N'CLINIC', N'Argentina', CAST(N'1981-10-14' AS Date), N'Calle Moreno 77', N'Corrientes', N'Corrientes', N'emilia.sanchez@clinica.com', N'3794567890', N'Lunes, Miércoles', CAST(N'09:00:00' AS Time), CAST(N'15:00:00' AS Time), N'clinica22', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00019', N'40127856', N'Mateo', N'Caballero', N'Masculino', N'DERMAT', N'Argentina', CAST(N'1990-02-03' AS Date), N'Calle Sarmiento 12', N'Formosa', N'Formosa', N'mateo.caballero@clinica.com', N'3704123456', N'Martes, Jueves, Viernes', CAST(N'08:30:00' AS Time), CAST(N'14:30:00' AS Time), N'pielOk123', 1)
INSERT [dbo].[Medicos] ([Legajo_Medico], [DNI_Medico], [Nombre_Medico], [Apellido_Medico], [Sexo_Medico], [CodEspecialidad_Medico], [Nacionalidad_Medico], [FechaNacimiento_Medico], [Direccion_Medico], [Ciudad_Medico], [Provincia_Medico], [Correo_Medico], [Telefono_Medico], [DiasAtencion_Medico], [HorarioInicio_Medico], [HorarioFin_Medico], [Contraseña_Medico], [Estado_Medico]) VALUES (N'MED00020', N'38906781', N'Florencia', N'Aguilar', N'Femenino', N'PEDIAT', N'Argentina', CAST(N'1987-08-27' AS Date), N'Calle Belgrano 101', N'Resistencia', N'Chaco', N'florencia.aguilar@clinica.com', N'3624123456', N'Lunes, Miércoles, Jueves', CAST(N'10:00:00' AS Time), CAST(N'16:00:00' AS Time), N'peques2024', 1)
GO
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'20228704', N'Sebas', N'Yatra', N'Masculino', CAST(N'1989-05-10' AS Date), N'Seba@gmail.com', N'+34 952 218 226', N'Av. Libertador 250', N'9100', N'CHUB', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'21008764', N'Delfina', N'Suárez', N'Femenino', CAST(N'1999-12-31' AS Date), N'delfina.suárez@gmail.com', N'+34 955 233 111', N'Av. Libertador 1020', N'4600', N'JUJU', 1, N'Uruguaya')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'21234780', N'Valentina', N'Silva', N'Femenino', CAST(N'2004-07-20' AS Date), N'valentina.silva@gmail.com', N'+34 934 567 890', N'Pasaje Dorado 89', N'3540', N'CHAC', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'21456780', N'Juan', N'Paz', N'Masculino', CAST(N'1981-06-11' AS Date), N'juan.paz@gmail.com', N'+34 934 444 555', N'Pasaje Maipú 45', N'3280', N'ENTR', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'22339163', N'Xiomara', N'Leon', N'Masculino', CAST(N'1965-04-21' AS Date), N'xiomara.leon@gmail.com', N'+34 938 67 73 06', N'Pasaje Nydia Estevez 59 Piso 8 ', N'3600', N'FORM', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'22376102', N'Iván', N'Valenzuela', N'Femenino', CAST(N'2021-02-02' AS Date), N'iván.valenzuela@gmail.com', N'+34923 789 276', N'Cuesta Buenaventura Hervia 10 Apt. 26 ', N'3620', N'FORM', 1, N'Paraguaya')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'34590001', N'Franco', N'Moreno', N'Masculino', CAST(N'1962-04-06' AS Date), N'franco.moreno@gmail.com', N'+34 965 112 334', N'Calle la Esperanza 5', N'9100', N'CHUB', 1, N'Peruana')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'37556925', N'Jesus', N'Martinez', N'Masculino', CAST(N'2025-06-03' AS Date), N'JeMa@gmail.com', N'+34 911 999 320', N'Av. San Martin', N'9400', N'SANT', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'37981212', N'Jazmín', N'Lucero', N'Femenino', CAST(N'1996-09-10' AS Date), N'jazmín.lucero@gmail.com', N'+34 911 223 345', N'Bvard. España 27', N'4600', N'JUJU', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'38455678', N'Tomás', N'Ibarra', N'Masculino', CAST(N'1973-02-15' AS Date), N'tomás.ibarra@gmail.com', N'+34 952 999 888', N'Pje. Libertad 3', N'8000', N'BSAS', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'38912347', N'Axel', N'Rivera', N'Masculino', CAST(N'1975-02-07' AS Date), N'axel.rivera@gmail.com', N'+34 911 345 777', N'Av. Entre Ríos 1', N'3450', N'CORR', 1, N'Chilena')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'39870591', N'Benjamín', N'Acosta', N'Masculino', CAST(N'1979-08-14' AS Date), N'benjamín.acosta@gmail.com', N'+34 954 789 000', N'Calle del Sol 33', N'5186', N'CORD', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'40123077', N'Lucas', N'Ortiz', N'Masculino', CAST(N'1997-10-28' AS Date), N'lucas.ortiz@gmail.com', N'+34 934 123 888', N'Av. Circunvalación 9', N'5500', N'MEND', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'40192875', N'Milagros', N'Herrera', N'Femenino', CAST(N'1984-05-04' AS Date), N'milagros.herrera@gmail.com', N'+34 977 664 332', N'Calle Moreno 109', N'9200', N'CHUB', 1, N'Brasileña')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'40287643', N'Santiago', N'Torres', N'Masculino', CAST(N'1992-06-01' AS Date), N'santiago.torres@gmail.com', N'+34 964 234 987', N'Av. del Estudiante 13', N'1900', N'BSAS', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'40567890', N'Felipe', N'Aranda', N'Masculino', CAST(N'1990-10-25' AS Date), N'felipe.aranda@gmail.com', N'+34 934 789 000', N'Ruta 9 KM 22', N'3500', N'CHAC', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'40812934', N'Micaela', N'Vega', N'Femenino', CAST(N'1995-01-18' AS Date), N'micaela.vega@gmail.com', N'+34 983 888 111', N'Camino del Río 77', N'3100', N'ENTR', 1, N'Boliviana')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'40897653', N'Camila', N'Bravo', N'Femenino', CAST(N'1983-07-23' AS Date), N'camila.bravo@gmail.com', N'+34 999 555 444', N'Calle Laprida 88', N'3300', N'MISI', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'41098765', N'Gonzalo', N'Medina', N'Masculino', CAST(N'1991-04-19' AS Date), N'gonzalo.medina@gmail.com', N'+34 933 888 222', N'Av. Belgrano 567', N'5186', N'CORD', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'41129857', N'Luisina', N'Gaitán', N'Femenino', CAST(N'2010-03-27' AS Date), N'luisina.gaitán@gmail.com', N'+34 912 987 123', N'Av. del Prado 120', N'4700', N'CATA', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'41304915', N'Agustina', N'Casal', N'Femenino', CAST(N'1982-10-19' AS Date), N'agustina.casal@gmail.com', N'+34 912 649 190', N'Avenida de Flavia Romeu 7', N'4711', N'CATA', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'41607280', N'Martina', N'Ramírez', N'Femenino', CAST(N'1977-12-30' AS Date), N'martina.ramírez@gmail.com', N'+34 911 446 238', N'Avenida Gregoria Claramunt 54', N'9200', N'CHUB', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'41987302', N'Candela', N'Figueroa', N'Femenino', CAST(N'2001-11-12' AS Date), N'candela.figueroa@gmail.com', N'+34 933 111 222', N'Diagonal Sarmiento 101', N'3418', N'CORR', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'42210988', N'Lola', N'Méndez', N'Femenino', CAST(N'2002-01-06' AS Date), N'lola.méndez@gmail.com', N'+34 911 223 344', N'Av. Principal 64', N'8300', N'NEUQ', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'42786315', N'Mora', N'Cabral', N'Femenino', CAST(N'2000-12-02' AS Date), N'mora.cabral@gmail.com', N'+34 912 444 111', N'Calle Pellegrini 210', N'3450', N'CORR', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'42900398', N'Renata', N'Cruz', N'Femenino', CAST(N'1998-09-30' AS Date), N'renata.cruz@gmail.com', N'+34 931 345 222', N'Bulevar Argentino 80', N'5000', N'CORD', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'42987110', N'Bautista', N'Romero', N'Masculino', CAST(N'1986-08-19' AS Date), N'bautista.romero@gmail.com', N'+34 977 223 112', N'Av. Leandro N. Alem 400', N'4200', N'SDEL', 1, N'Venezolana')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'43123000', N'Julieta', N'Alvarez', N'Femenino', CAST(N'1993-03-09' AS Date), N'julieta.alvarez@gmail.com', N'+34 932 765 432', N'Calle Mitre 78', N'3200', N'ENTR', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'43209871', N'Brenda', N'Pereyra', N'Femenino', CAST(N'1987-03-15' AS Date), N'brenda.pereyra@gmail.com', N'+34 964 123 123', N'Calle Tucumán 90', N'3200', N'ENTR', 1, N'Colombiana')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'43345678', N'Malena', N'López', N'Femenino', CAST(N'1985-11-17' AS Date), N'malena.lópez@gmail.com', N'+34 911 999 333', N'Camino a la Costa 30', N'4711', N'CATA', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'43456879', N'Thiago', N'Sosa', N'Masculino', CAST(N'2006-08-22' AS Date), N'thiago.sosa@gmail.com', N'+34 911 888 777', N'Av. Caseros 4', N'5500', N'MEND', 1, N'Argentina')
INSERT [dbo].[Pacientes] ([DNI_Paciente], [Nombre_Paciente], [Apellido_Paciente], [Sexo_Paciente], [FechaNacimiento_Paciente], [Correo_Paciente], [Telefono_Paciente], [Direccion_Paciente], [CodCiudad_Paciente], [CodProvincia_Paciente], [Estado_Paciente], [Nacionalidad_Paciente]) VALUES (N'52347552', N'Jesus', N'Rojas', N'Masculino', CAST(N'2002-08-23' AS Date), N'JeRojas@gmail.com', N'+34 922 576', N'Lujuria 572', N'4405', N'SALT', 1, N'Argentina')
GO
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'BSAS', N'Buenos Aires')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'CATA', N'Catamarca')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'CHAC', N'Chaco')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'CHUB', N'Chubut')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'CORD', N'Córdoba')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'CORR', N'Corrientes')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'ENTR', N'Entre Ríos')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'FORM', N'Formosa')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'JUJU', N'Jujuy')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'LAPA', N'La Pampa')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'LARI', N'La Rioja')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'MEND', N'Mendoza')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'MISI', N'Misiones')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'NEUQ', N'Neuquén')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'RNGR', N'Río Negro')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'SALT', N'Salta')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'SANT', N'Santa Cruz')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'SDEL', N'Santiago del Estero')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'SFE ', N'Santa Fe')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'SJUA', N'San Juan')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'SLUI', N'San Luis')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'TDFU', N'Tierra del Fuego')
INSERT [dbo].[Provincias] ([CodProvincia], [Desc_Provincia]) VALUES (N'TUCU', N'Tucumán')
GO
INSERT [dbo].[Turnos] ([Cod_Turno], [LegajoMedico_Turnos], [DNIPaciente_Turnos], [LegajoAdmin_Turnos], [Dia_Turnos], [Horarios_Turnos], [Estado_Turno]) VALUES (N'TUR00001', N'MED00006', N'20228704', N'ADM00001', CAST(N'2025-02-06T00:00:00.000' AS DateTime), CAST(N'07:00:00' AS Time), 1)
INSERT [dbo].[Turnos] ([Cod_Turno], [LegajoMedico_Turnos], [DNIPaciente_Turnos], [LegajoAdmin_Turnos], [Dia_Turnos], [Horarios_Turnos], [Estado_Turno]) VALUES (N'TUR00002', N'MED00006', N'20228704', N'ADM00001', CAST(N'2025-02-06T00:00:00.000' AS DateTime), CAST(N'07:30:00' AS Time), 1)
INSERT [dbo].[Turnos] ([Cod_Turno], [LegajoMedico_Turnos], [DNIPaciente_Turnos], [LegajoAdmin_Turnos], [Dia_Turnos], [Horarios_Turnos], [Estado_Turno]) VALUES (N'TUR00003', N'MED00017', N'20228704', N'ADM00001', CAST(N'2025-03-06T00:00:00.000' AS DateTime), CAST(N'07:00:00' AS Time), 1)
INSERT [dbo].[Turnos] ([Cod_Turno], [LegajoMedico_Turnos], [DNIPaciente_Turnos], [LegajoAdmin_Turnos], [Dia_Turnos], [Horarios_Turnos], [Estado_Turno]) VALUES (N'TUR00004', N'MED00011', N'20228704', N'ADM00001', CAST(N'2025-06-19T00:00:00.000' AS DateTime), CAST(N'08:00:00' AS Time), 1)
INSERT [dbo].[Turnos] ([Cod_Turno], [LegajoMedico_Turnos], [DNIPaciente_Turnos], [LegajoAdmin_Turnos], [Dia_Turnos], [Horarios_Turnos], [Estado_Turno]) VALUES (N'TUR00005', N'MED00011', N'21234780', N'ADM00001', CAST(N'2025-06-19T00:00:00.000' AS DateTime), CAST(N'08:30:00' AS Time), 1)
INSERT [dbo].[Turnos] ([Cod_Turno], [LegajoMedico_Turnos], [DNIPaciente_Turnos], [LegajoAdmin_Turnos], [Dia_Turnos], [Horarios_Turnos], [Estado_Turno]) VALUES (N'TUR00006', N'MED00015', N'20228704', N'ADM00001', CAST(N'2025-06-12T00:00:00.000' AS DateTime), CAST(N'10:00:00' AS Time), 1)
GO
ALTER TABLE [dbo].[Medicos] ADD  DEFAULT ((1)) FOR [Estado_Medico]
GO
ALTER TABLE [dbo].[Pacientes] ADD  DEFAULT ((1)) FOR [Estado_Paciente]
GO
ALTER TABLE [dbo].[Pacientes] ADD  DEFAULT ('Argentina') FOR [Nacionalidad_Paciente]
GO
ALTER TABLE [dbo].[Turnos] ADD  DEFAULT ((1)) FOR [Estado_Turno]
GO
ALTER TABLE [dbo].[Ciudades]  WITH CHECK ADD  CONSTRAINT [FK_Ciudad_Provincia] FOREIGN KEY([CodProvincia])
REFERENCES [dbo].[Provincias] ([CodProvincia])
GO
ALTER TABLE [dbo].[Ciudades] CHECK CONSTRAINT [FK_Ciudad_Provincia]
GO
ALTER TABLE [dbo].[Consultas]  WITH CHECK ADD  CONSTRAINT [FK_Consultas_Medicos] FOREIGN KEY([LegajoMedico_Cons])
REFERENCES [dbo].[Medicos] ([Legajo_Medico])
GO
ALTER TABLE [dbo].[Consultas] CHECK CONSTRAINT [FK_Consultas_Medicos]
GO
ALTER TABLE [dbo].[Consultas]  WITH CHECK ADD  CONSTRAINT [FK_Consultas_Pacientes] FOREIGN KEY([DNIPaciente_Cons])
REFERENCES [dbo].[Pacientes] ([DNI_Paciente])
GO
ALTER TABLE [dbo].[Consultas] CHECK CONSTRAINT [FK_Consultas_Pacientes]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_Especialidades] FOREIGN KEY([CodEspecialidad_Medico])
REFERENCES [dbo].[Especialidades] ([Cod_Especialidad])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_Especialidades]
GO
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_Pacientes_Ciudades] FOREIGN KEY([CodCiudad_Paciente], [CodProvincia_Paciente])
REFERENCES [dbo].[Ciudades] ([CodPostal_Ciudad], [CodProvincia])
GO
ALTER TABLE [dbo].[Pacientes] CHECK CONSTRAINT [FK_Pacientes_Ciudades]
GO
ALTER TABLE [dbo].[Turnos]  WITH CHECK ADD  CONSTRAINT [FK_Turnos_Administradores] FOREIGN KEY([LegajoAdmin_Turnos])
REFERENCES [dbo].[Administradores] ([Legajo_Admin])
GO
ALTER TABLE [dbo].[Turnos] CHECK CONSTRAINT [FK_Turnos_Administradores]
GO
ALTER TABLE [dbo].[Turnos]  WITH CHECK ADD  CONSTRAINT [FK_Turnos_Medicos] FOREIGN KEY([LegajoMedico_Turnos])
REFERENCES [dbo].[Medicos] ([Legajo_Medico])
GO
ALTER TABLE [dbo].[Turnos] CHECK CONSTRAINT [FK_Turnos_Medicos]
GO
ALTER TABLE [dbo].[Turnos]  WITH CHECK ADD  CONSTRAINT [FK_Turnos_Pacientes] FOREIGN KEY([DNIPaciente_Turnos])
REFERENCES [dbo].[Pacientes] ([DNI_Paciente])
GO
ALTER TABLE [dbo].[Turnos] CHECK CONSTRAINT [FK_Turnos_Pacientes]
GO
USE [master]
GO
ALTER DATABASE [ClinicaGrupo15] SET  READ_WRITE 
GO
