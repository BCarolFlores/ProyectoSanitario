CREATE TABLE san.Hospital (
	idHospital INT PRIMARY KEY IDENTITY(1, 1),
    Nombre NVARCHAR(100) NOT NULL,
    Ciudad NVARCHAR(100) NOT NULL,
    Telefono NVARCHAR(15),
    DirectorDNI NVARCHAR(10) -- DNI del médico que es director
);