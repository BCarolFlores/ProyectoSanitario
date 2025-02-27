CREATE TABLE san.Paciente (
	idPaciente INT PRIMARY KEY IDENTITY(1, 1),
    DNI NVARCHAR(10),
    ApellidosNombre NVARCHAR(100) NOT NULL,
    FechaNacimiento DATE,
    NumeroSeguridadSocial NVARCHAR(20) NOT NULL,
    OtrosDatos NVARCHAR(255)
);