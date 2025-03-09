CREATE TABLE san.FactVisita (
    idVisitaSK INT PRIMARY KEY IDENTITY(1,1),
    idPacienteSK INT FOREIGN KEY REFERENCES san.DimPaciente(idPacienteSK),
    idMedicoSK INT FOREIGN KEY REFERENCES san.DimMedico(idMedicoSK),
    idHospitalSK INT FOREIGN KEY REFERENCES san.DimHospital(idHospitalSK),
    idServicioSK INT FOREIGN KEY REFERENCES san.DimServicio(idServicioSK),
    idTiempo INT FOREIGN KEY REFERENCES san.DimTiempo(idTiempo),
    FechaVisita DATE,
    NumeroHabitacion NVARCHAR(255),
    Diagnostico NVARCHAR(255),
    Tratamiento NVARCHAR(255),
    FechaAlta NVARCHAR(255),
    codHist INT
);