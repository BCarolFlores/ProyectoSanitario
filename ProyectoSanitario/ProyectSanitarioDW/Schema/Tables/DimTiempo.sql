CREATE TABLE san.DimTiempo (
    idTiempo INT PRIMARY KEY IDENTITY(1,1),
    Fecha DATE,
    Anio INT,
    Mes INT,
    Dia INT,
    DiaSemana INT,
    Trimestre INT
);