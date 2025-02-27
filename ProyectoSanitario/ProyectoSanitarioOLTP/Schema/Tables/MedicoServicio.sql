CREATE TABLE san.MedicoServicio (
	idMedicoServicio INT PRIMARY KEY IDENTITY(1, 1),
    idMedico INT,
    idServicio int,
    FOREIGN KEY (idMedico) REFERENCES Medico(idMedico),
    FOREIGN KEY (idServicio) REFERENCES Servicio(idServicio)
);
