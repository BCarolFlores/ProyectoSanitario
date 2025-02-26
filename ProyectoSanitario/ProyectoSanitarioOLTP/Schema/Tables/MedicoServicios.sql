CREATE TABLE san.MedicoServicios (
    DNI NVARCHAR(10),
    idServicio NVARCHAR(10),
    PRIMARY KEY (DNI, idServicio)
    --FOREIGN KEY (DNI) REFERENCES Medicos(DNI),
    --FOREIGN KEY (idServicio) REFERENCES Servicios(idServicio)
)