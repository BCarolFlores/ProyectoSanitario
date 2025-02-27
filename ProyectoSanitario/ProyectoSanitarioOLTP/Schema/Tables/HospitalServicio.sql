CREATE TABLE [san].[HospitalServicio](
	[idHospitalServicio] [int] IDENTITY(1,1) NOT NULL,
	[idHospital] [int] NULL,
	[idServicio] [int] NULL,
	[NumeroCamas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHospitalServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]