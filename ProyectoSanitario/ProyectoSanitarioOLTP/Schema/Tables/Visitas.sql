CREATE TABLE san.Visita (
    idVisita INT PRIMARY KEY IDENTITY(1, 1),
    idHist INT,
    FechaHora DATETIME NOT NULL,
    idHospital INT,
    idServicio INT,
    idMedico INT, -- Médico que atendió
    Diagnostico NVARCHAR(255),
    Tratamiento NVARCHAR(255),
    Ingreso BIT DEFAULT 0, -- 1 si hubo ingreso, 0 si no
    NumeroHabitacion NVARCHAR(10),
    FechaAlta DATE,
    FOREIGN KEY (idHist) REFERENCES HistoriaClinica(idHist),
    FOREIGN KEY (idHospital) REFERENCES Hospital(idHospital),
    FOREIGN KEY (idServicio) REFERENCES Servicio(idServicio),
    FOREIGN KEY (idMedico) REFERENCES Medico(idMedico)
);
