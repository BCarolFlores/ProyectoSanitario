CREATE TABLE [san].[HistoriasClinica](
	[idHist] [int] IDENTITY(1,1) NOT NULL,
	[codHist] [int] NOT NULL,
	[idPaciente] [int] NULL,
	[RowVersion] [rowversion] NOT NULL
	FOREIGN KEY([idPaciente]) REFERENCES [san].[Paciente] ([idPaciente]),
PRIMARY KEY CLUSTERED 
(
	[idHist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
