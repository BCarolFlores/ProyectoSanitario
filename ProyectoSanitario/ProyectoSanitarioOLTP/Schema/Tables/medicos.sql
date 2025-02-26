CREATE TABLE [san].[Medicos] (
    [DNI] NVARCHAR(10) ,
    [ApellidosNombre] NVARCHAR(100) NOT NULL,
    [FechaNacimiento] DATE,
    [codHospital] INT,
    [EsDirector] BIT DEFAULT 0, -- 1 si es director, 0 si no
    FOREIGN KEY (codHospital) REFERENCES Hospitales(codHospital)
  );