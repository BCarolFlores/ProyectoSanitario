CREATE TABLE [staging].[Visita](
	[idVisita] [int] NULL,
	[idPaciente] [int] NULL,
	[idMedico] [int] NULL,
	[idHospital] [int] NULL,
	[idServicio] [int] NULL,
	[FechaHora] [datetime] NULL,
	[NumeroHabitacion] [varchar](255) NULL,
	[Diagnostico] [varchar](255) NULL,
	[Tratamiento] [varchar](255) NULL,
	[fechaAlta] [varchar](255) NULL,
	[codHist] [varchar](50) NULL
) ON [PRIMARY]
GO