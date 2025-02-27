CREATE TABLE san.HistoriaClinica (
	idHist INT PRIMARY KEY IDENTITY(1, 1),
    idPaciente INT,
    FOREIGN KEY (idPaciente) REFERENCES Paciente(idPaciente)
);