CREATE TABLE Visitas (
    VisitaID INT PRIMARY KEY IDENTITY(1, 1),
    codHist INT,
    FechaHora DATETIME NOT NULL,
    codHospital INT,
    idServicio NVARCHAR(10),
    DNI NVARCHAR(10), -- Médico que atendió
    Diagnostico NVARCHAR(255),
    Tratamiento NVARCHAR(255),
    Ingreso BIT DEFAULT 0, -- 1 si hubo ingreso, 0 si no
    NumeroHabitacion NVARCHAR(10),
    FechaAlta DATE,
    FcodHist int, 
    FcodHospital int,
    FidServicio int, 
    FDNI int
   -- FOREIGN KEY (codHist) REFERENCES HistoriasClinicas(codHist),
   -- FOREIGN KEY (codHospital) REFERENCES Hospitales(codHospital),
   -- FOREIGN KEY (idServicio) REFERENCES Servicios(idServicio),
   -- FOREIGN KEY (DNI) REFERENCES Medicos(DNI)
);