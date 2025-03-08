CREATE TABLE staging.Medico (
    idMedicoSK INT NOT NULL,
    DNI NVARCHAR(12),
    Nombre NVARCHAR(100),
    Apellidos NVARCHAR(110),
    FechaNacimiento DATE,
    EsDirector BIT
);