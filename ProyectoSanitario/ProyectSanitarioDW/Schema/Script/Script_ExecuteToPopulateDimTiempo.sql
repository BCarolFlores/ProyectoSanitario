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

/*CARGAMOS DIM TIEMPO*/
EXEC PopulateDimTiempo;

/*CARGAMOS [PackageConfig] con 0 para todas las tablas */

INSERT INTO [ProyectoSanitarioDW].[san].[PackageConfig] (TableName, LastRowVersion)  
SELECT 'san.DimHospital', 0  
WHERE NOT EXISTS (
    SELECT 1 FROM [ProyectoSanitarioDW].[san].[PackageConfig] WHERE TableName = 'san.DimHospital'
);

INSERT INTO [ProyectoSanitarioDW].[san].[PackageConfig] (TableName, LastRowVersion)  
SELECT 'san.DimMedico', 0  
WHERE NOT EXISTS (
    SELECT 1 FROM [ProyectoSanitarioDW].[san].[PackageConfig] WHERE TableName = 'san.DimMedico'
);

INSERT INTO [ProyectoSanitarioDW].[san].[PackageConfig] (TableName, LastRowVersion)  
SELECT 'san.DimPaciente', 0  
WHERE NOT EXISTS (
    SELECT 1 FROM [ProyectoSanitarioDW].[san].[PackageConfig] WHERE TableName = 'san.DimPaciente'
);

INSERT INTO [ProyectoSanitarioDW].[san].[PackageConfig] (TableName, LastRowVersion)  
SELECT 'san.DimServicio', 0  
WHERE NOT EXISTS (
    SELECT 1 FROM [ProyectoSanitarioDW].[san].[PackageConfig] WHERE TableName = 'san.DimServicio'
);
