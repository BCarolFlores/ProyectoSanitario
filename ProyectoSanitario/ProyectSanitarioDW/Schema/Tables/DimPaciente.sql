CREATE TABLE san.DimPaciente (
    idPacienteSK INT PRIMARY KEY IDENTITY(1,1),
    idPaciente INT,
    DNI NVARCHAR(10),
    Nombre NVARCHAR(100),
    Apellidos NVARCHAR(100),
    FechaNacimiento DATE,
    NumeroSeguridadSocial NVARCHAR(20),
    OtrosDatos NVARCHAR(255)
);