CREATE TABLE san.HistoriasClinicas (
    codHist INT PRIMARY KEY IDENTITY(1, 1),
    DNI INT,
    FOREIGN KEY (DNI) REFERENCES san.Paciente(DNI)
)