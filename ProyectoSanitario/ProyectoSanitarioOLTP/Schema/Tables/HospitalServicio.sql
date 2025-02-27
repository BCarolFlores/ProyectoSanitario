CREATE TABLE san.HospitalServicio (
	idHospitalServicio INT PRIMARY KEY IDENTITY(1, 1),
    idHospital INT,
    idServicio INT,
    NumeroCamas INT,
    FOREIGN KEY (idHospital) REFERENCES Hospital(idHospital),
    FOREIGN KEY (idServicio) REFERENCES Servicio(idServicio)
);