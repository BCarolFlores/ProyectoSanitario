CREATE TABLE [san].[Medicos] (
    [IdMedico] Int ,
    [DNI] NVARCHAR(10) ,
    [ApellidosNombre] NVARCHAR(100) NOT NULL,
    [FechaNacimiento] DATE,
    [codHospital] INT,
    [EsDirector] BIT DEFAULT 0, -- 1 si es director, 0 si no
    CONSTRAINT [PK_IdMedico] PRIMARY KEY ([IdMedico]),
    FOREIGN KEY (idHospital) REFERENCES Hospitales(idHospital)
  );