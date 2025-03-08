CREATE PROCEDURE san.DW_MergeDimServicio
AS
BEGIN
    UPDATE dc
    SET [NombreCompleto] = sc.[NombreCompleto],
        [Comentario] = sc.[Comentario]
    FROM san.DimServicio dc
    INNER JOIN staging.Servicio sc ON dc.[idServicioSK] = sc.[idServicioSK];
END
GO