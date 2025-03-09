
CREATE TABLE [staging].[Paciente](
	[idPacienteSK] [int] NOT NULL,
	[idPaciente] [int] NULL,
	[DNI] [nvarchar](10) NULL,
	[Nombre] [nvarchar](100) NULL,
	[Apellidos] [nvarchar](100) NULL,
	[FechaNacimiento] [date] NULL,
	[NumeroSeguridadSocial] [nvarchar](20) NULL,
	[OtrosDatos] [nvarchar](255) NULL
)