CREATE TABLE HistoriaClinica (
	idHist INT PRIMARY KEY IDENTITY(1, 1),
    idPaciente INT,
    FOREIGN KEY (idPaciente) REFERENCES Paciente(idPaciente)
);