CREATE TABLE [dbo].[Paciente](
	[idPaciente] [int] IDENTITY(1,1) NOT NULL,
	[DNI] [nvarchar](10) NULL,
	[ApellidosNombre] [nvarchar](100) NOT NULL,
	[FechaNacimiento] [date] NULL,
	[NumeroSeguridadSocial] [nvarchar](20) NOT NULL,
	[OtrosDatos] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO