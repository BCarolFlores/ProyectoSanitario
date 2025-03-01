CREATE TABLE san.DimMedico (
    idMedicoSK INT PRIMARY KEY IDENTITY(1,1),
    idMedico INT,
    DNI NVARCHAR(10),
    Nombre NVARCHAR(100),
    Apellidos NVARCHAR(100),
    FechaNacimiento DATE,
    EsDirector BIT,
    RowVersion TIMESTAMP
);