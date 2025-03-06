CREATE TABLE san.DimHospital (
    idHospitalSK INT PRIMARY KEY IDENTITY(1,1),
    idHospital INT,
    codHospital NVARCHAR(20),
    Nombre NVARCHAR(100),
    Ciudad NVARCHAR(100),
<<<<<<< HEAD
    Telefono NVARCHAR(20),
=======
    Telefono INT, --NVARCHAR(15),
>>>>>>> 9f86785b70182bacc70f035a5e4b1cb273b6cf6d
    DirectorDNI NVARCHAR(10),
    RowVersion TIMESTAMP
);