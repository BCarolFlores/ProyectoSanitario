CREATE PROCEDURE [san].[DW_MergeDimHospital]
	AS
BEGIN
    UPDATE dc
    SET [idHospital] = sc.[idHospitalSK],
        [codHospital] = sc.[codHospital],
        [Nombre] = sc.[Nombre],
        [Ciudad] = sc.[Ciudad],
        [Telefono] = sc.[Telefono],
        [DirectorDNI] = sc.[DirectorDNI]
    FROM san.DimHospital dc
    INNER JOIN staging.hospital sc ON dc.[idHospitalSK] = sc.[idHospitalSK];
END
GO