CREATE TABLE [san].[MedicoServicio](
	[idMedicoServicio] [int] IDENTITY(1,1) NOT NULL,
	[idMedico] [int] NULL,
	[idServicio] [int] NULL,

FOREIGN KEY([idMedico]) REFERENCES [san].[Medico] ([idMedico]),
FOREIGN KEY([idServicio]) REFERENCES [san].[Servicio] ([idServicio]),

PRIMARY KEY CLUSTERED 
(
	[idMedicoServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO