CREATE TABLE [san].[HospitalServicio](
	[idHospitalServicio] [int] IDENTITY(1,1) NOT NULL,
	[idHospital] [int] NULL,
	[idServicio] [int] NULL,
	[NumeroCamas] [int] NULL,
	[RowVersion] [rowversion] NOT NULL
FOREIGN KEY([idHospital]) REFERENCES [san].[Hospital] ([idHospital]),
FOREIGN KEY([idServicio]) REFERENCES [san].[Servicio] ([idServicio]),
PRIMARY KEY CLUSTERED 
(
	[idHospitalServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]