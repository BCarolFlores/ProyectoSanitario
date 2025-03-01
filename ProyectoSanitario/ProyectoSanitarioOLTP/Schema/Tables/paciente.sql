CREATE TABLE [san].[Paciente](--final
	[idPaciente] [int] IDENTITY(1,1) NOT NULL,
	[DNI] [nvarchar](10) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellidos] [nvarchar](100) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[NumeroSeguridadSocial] [nvarchar](20) NOT NULL,
	[OtrosDatos] [nvarchar](255) NULL,
	[RowVersion] [rowversion] NOT NULL
PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO