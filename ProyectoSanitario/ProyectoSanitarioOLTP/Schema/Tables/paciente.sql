CREATE TABLE san.paciente ( --probando un cambio
	idPaciente INT  IDENTITY(1, 1) NOT NULL,
    DNI NVARCHAR(10) NOT NULL,
    ApellidosNombre NVARCHAR(100) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    NumeroSeguridadSocial NVARCHAR(20) NOT NULL,
    OtrosDatos NVARCHAR (255) NULL
    CONSTRAINT PK_idPaciente PRIMARY KEY (idPaciente) NULL
);