CREATE PROCEDURE san.DW_MergeDimMedico
AS
BEGIN
    UPDATE dc
    SET [DNI] = sc.[DNI],
        [Nombre] = sc.[Nombre],
        [Apellidos] = sc.[Apellidos],
        [FechaNacimiento] = sc.[FechaNacimiento],
        [EsDirector] = sc.[EsDirector]
    FROM san.DimMedico dc
    INNER JOIN staging.Medico sc ON dc.[idMedicoSK] = sc.[idMedicoSK];
END
GO