CREATE TABLE san.Visita (
    idVisita INT IDENTITY(1,1) NOT NULL,
    idHist INT NULL,
    FechaHora DATETIME NOT NULL,
    idHospital INT NULL,
    idServicio INT NULL,
    idMedico INT NULL,
    Diagnostico NVARCHAR(255) NULL,
    Tratamiento NVARCHAR(255) NULL,
    Ingreso BIT NOT NULL,
    NumeroHabitacion NVARCHAR(10) NULL,
    FechaAlta DATE NULL,
    FechaHospitalizacion DATE NULL,
    PRIMARY KEY CLUSTERED (idVisita ASC),
    CONSTRAINT FK_Visita_HistoriaClinica FOREIGN KEY (idHist) REFERENCES HistoriasClinica(idHist),
    CONSTRAINT FK_Visita_Hospital FOREIGN KEY (idHospital) REFERENCES Hospital(idHospital),
    CONSTRAINT FK_Visita_Servicio FOREIGN KEY (idServicio) REFERENCES Servicio(idServicio),
    CONSTRAINT FK_Visita_Medico FOREIGN KEY (idMedico) REFERENCES Medico(idMedico)
) ON [PRIMARY];
GO

ALTER TABLE [san].[Visita]  WITH CHECK ADD FOREIGN KEY([idHist])
REFERENCES [san].[HistoriasClinica] ([idHist])
GO
ALTER TABLE [san].[Visita]  WITH CHECK ADD FOREIGN KEY([idHospital])
REFERENCES [san].[Hospital] ([idHospital])
GO
ALTER TABLE [san].[Visita]  WITH CHECK ADD FOREIGN KEY([idMedico])
REFERENCES [san].[Medico] ([idMedico])
GO
ALTER TABLE [san].[Visita]  WITH CHECK ADD FOREIGN KEY([idServicio])
REFERENCES [san].[Servicio] ([idServicio])
GO