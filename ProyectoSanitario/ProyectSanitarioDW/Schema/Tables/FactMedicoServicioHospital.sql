CREATE TABLE san.FactMedicoServicioHospital (
    idMedicoServicioHospital INT PRIMARY KEY IDENTITY(1,1),
    idMedicoSK INT FOREIGN KEY REFERENCES san.DimMedico(idMedicoSK),
    idServicioSK INT FOREIGN KEY REFERENCES san.DimServicio(idServicioSK),
    idHospitalSK INT FOREIGN KEY REFERENCES san.DimHospital(idHospitalSK),
    idTiempo INT FOREIGN KEY REFERENCES san.DimTiempo(idTiempo)
);