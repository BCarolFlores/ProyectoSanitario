CREATE TABLE san.DimServicio (
    idServicioSK INT PRIMARY KEY IDENTITY(1,1),
    idServicio INT,
    NombreCompleto NVARCHAR(100),
    Comentario NVARCHAR(255),
    RowVersion TIMESTAMP
);