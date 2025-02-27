CREATE TABLE [san].[Visita](
	[idVisita] [int] INT PRIMARY KEY IDENTITY(1, 1),
	[idHist] [int] NULL,
	[FechaHora] [datetime] NOT NULL,
	[idHospital] [int] NULL,
	[idServicio] [int] NULL,
	[idMedico] [int] NULL,
	[Diagnostico] [nvarchar](255) NULL,
	[Tratamiento] [nvarchar](255) NULL,
	[Ingreso] [bit] NULL,
	[NumeroHabitacion] [nvarchar](10) NULL,
	[FechaAlta] [date] NULL,
	[FechaHospitalizacion] [date] NULL,


FOREIGN KEY (idHist) REFERENCES HistoriaClinica(idHist),
FOREIGN KEY (idHospital) REFERENCES Hospital(idHospital),
FOREIGN KEY (idServicio) REFERENCES Servicio(idServicio),
FOREIGN KEY (idMedico) REFERENCES Medico(idMedico)

)   
    

