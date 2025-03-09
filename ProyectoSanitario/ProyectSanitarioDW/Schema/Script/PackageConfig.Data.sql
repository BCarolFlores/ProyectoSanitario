IF not exists(SELECT TOP(1) 1
	FROM san.PackageConfig
	WHERE TableName='san.DimHospital')
BEGIN
	INSERT san.PackageConfig (TableName, LastRowVersion) VALUES ('san.DimHospital', 0)
END