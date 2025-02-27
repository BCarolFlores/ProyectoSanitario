CREATE TABLE san.paciente (
	idPaciente INT  IDENTITY(1, 1) NOT NULL,
    DNI NVARCHAR(10) NULL,
    ApellidosNombre NVARCHAR(100) NULL,
    FechaNacimiento DATE NULL,
    NumeroSeguridadSocial NVARCHAR(20) NULL,
    OtrosDatos NVARCHAR(255)
    CONSTRAINT PK_idPaciente PRIMARY KEY (idPaciente) NULL
);