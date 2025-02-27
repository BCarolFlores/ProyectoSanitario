CREATE TABLE san.Servicio (
    idServicio INT PRIMARY KEY IDENTITY(1, 1), -- Acrónimo del servicio
    NombreCompleto NVARCHAR(100) NOT NULL,
    Comentario NVARCHAR(255)
);