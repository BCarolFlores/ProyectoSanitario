
CREATE TABLE [san].[Medico](
	[idMedico] [int] IDENTITY(1,1) NOT NULL,
	[DNI] [nvarchar](10) NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellidos] [nvarchar](100) NOT NULL,
	[FechaNacimiento] [date] NULL,
	[idHospital] [int] NULL,
	[EsDirector] [bit] NULL,
	[RowVersion] [rowversion] NOT NULL
	FOREIGN KEY([idHospital]) REFERENCES [san].[Hospital] ([idHospital]),
PRIMARY KEY CLUSTERED 
(
	[idMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
