CREATE TABLE san.DimHospital (
    idHospitalSK INT PRIMARY KEY IDENTITY(1,1),
    idHospital INT,
    codHospital NVARCHAR(20),
    Nombre NVARCHAR(100),
    Ciudad NVARCHAR(100),
    Telefono NVARCHAR(15),
    DirectorDNI NVARCHAR(10),
    RowVersion TIMESTAMP
);