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


IF not exists(SELECT TOP(1) 1
	FROM san.PackageConfig
	WHERE TableName='san.DimHospital')
BEGIN
	INSERT san.PackageConfig (TableName, LastRowVersion) VALUES ('san.DimHospital', 0)
END;
/*
IF not exists(SELECT TOP(1) 1
	FROM san.PackageConfig
	WHERE TableName='san.DimHospital')
BEGIN
	INSERT san.PackageConfig (TableName, LastRowVersion) VALUES ('san.DimHospital', 0)
END;

IF not exists(SELECT TOP(1) 1
	FROM san.PackageConfig
	WHERE TableName='san.DimHospital')
BEGIN
	INSERT san.PackageConfig (TableName, LastRowVersion) VALUES ('san.DimHospital', 0)
END;

IF not exists(SELECT TOP(1) 1
	FROM san.PackageConfig
	WHERE TableName='san.DimHospital')
BEGIN
	INSERT san.PackageConfig (TableName, LastRowVersion) VALUES ('san.DimHospital', 0)
END;

IF not exists(SELECT TOP(1) 1
	FROM san.PackageConfig
	WHERE TableName='san.DimHospital')
BEGIN
	INSERT san.PackageConfig (TableName, LastRowVersion) VALUES ('san.DimHospital', 0)
END;
*/