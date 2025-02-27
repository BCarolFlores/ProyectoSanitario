CREATE TABLE san.Medico (
	idMedico INT PRIMARY KEY IDENTITY(1, 1),
    DNI NVARCHAR(10),
    ApellidosNombre NVARCHAR(100) NOT NULL,
    FechaNacimiento DATE,
    idHospital INT,
    EsDirector BIT DEFAULT 0, -- 1 si es director, 0 si no
    FOREIGN KEY (idHospital) REFERENCES Hospital(idHospital)
);
