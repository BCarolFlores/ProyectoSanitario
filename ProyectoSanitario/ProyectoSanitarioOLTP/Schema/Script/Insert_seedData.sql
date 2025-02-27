/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
-- Insertando datos en la tabla Paciente
INSERT INTO [san].[Paciente] (DNI, Nombre, Apellidos, FechaNacimiento, NumeroSeguridadSocial, OtrosDatos) VALUES
('12345678A', 'Juan', 'Perez', '1980-05-12', 'SS123456', 'Sin alergias'),
('23456789B', 'Maria', 'Lopez', '1992-08-23', 'SS234567', 'Hipertensa'),
('34567890C', 'Carlos', 'Gomez', '1985-11-30', 'SS345678', 'Diabético'),
('45678901D', 'Ana', 'Martinez', '1978-03-15', 'SS456789', 'N/A'),
('56789012E', 'Luis', 'Rodriguez', '1995-07-22', 'SS567890', 'Asma leve');

-- Insertando datos en la tabla Hospital
INSERT INTO [san].[Hospital] (Nombre, Ciudad, Telefono, DirectorDNI) VALUES
('Hospital Central', 'La Paz', '22113344', '12345678A'),
('Clinica del Sur', 'Santa Cruz', '33112244', '23456789B'),
('Hospital General', 'Cochabamba', '44556677', '34567890C');

-- Insertando datos en la tabla Servicio
INSERT INTO [san].[Servicio] (NombreCompleto, Comentario) VALUES
('Cardiología', 'Especialistas en enfermedades del corazón'),
('Neurología', 'Atención a problemas neurológicos'),
('Pediatría', 'Atención médica infantil'),
('Traumatología', 'Lesiones musculares y óseas'),
('Oftalmología', 'Enfermedades de los ojos');

-- Insertando datos en la tabla Medico
INSERT INTO [san].[Medico] (DNI, Nombre, Apellidos, FechaNacimiento, idHospital, EsDirector) VALUES
('67890123F', 'Fernando', 'Rojas', '1970-04-10', 1, 1),
('78901234G', 'Elena', 'Suarez', '1982-06-18', 2, 0),
('89012345H', 'Pedro', 'Molina', '1975-09-25', 3, 0);

-- Insertando datos en la tabla HospitalServicio
INSERT INTO [san].[HospitalServicio] (idHospital, idServicio, NumeroCamas) VALUES
(1, 1, 10),
(1, 2, 5),
(2, 3, 8),
(3, 4, 6);

-- Insertando datos en la tabla MedicoServicio
INSERT INTO [san].[MedicoServicio] (idMedico, idServicio) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insertando datos en la tabla HistoriasClinica
INSERT INTO [san].[HistoriasClinica] (codHist, idPaciente) VALUES
(1001, 1),
(1002, 2),
(1003, 3),
(1004, 4),
(1005, 5);

-- Insertando datos en la tabla Visita
INSERT INTO [san].[Visita] (idHist, FechaHora, idHospital, idServicio, idMedico, Diagnostico, Tratamiento, Ingreso, NumeroHabitacion, FechaAlta, FechaHospitalizacion) VALUES
(1, '2025-02-01 10:00:00', 1, 1, 1, 'Hipertensión', 'Medicamento A', 1, '101', '2025-02-05', '2025-02-01'),
(2, '2025-02-10 14:30:00', 2, 3, 2, 'Neumonía', 'Antibióticos', 1, '202', '2025-02-15', '2025-02-10'),
(3, '2025-02-15 09:00:00', 3, 4, 3, 'Fractura', 'Inmovilización', 0, NULL, NULL, NULL);
