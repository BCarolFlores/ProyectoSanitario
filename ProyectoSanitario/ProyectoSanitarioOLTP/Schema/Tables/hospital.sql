CREATE TABLE [san].[Hospital](
	[idHospital] [int] IDENTITY(1,1) NOT NULL,
	[codHospital] [nvarchar](20) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Ciudad] [nvarchar](100) NOT NULL,
	[Telefono] [nvarchar](15) NULL,
	[DirectorDNI] [nvarchar](10) NULL,
	[RowVersion] [rowversion] NOT NULL
PRIMARY KEY CLUSTERED 
(
	[idHospital] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO