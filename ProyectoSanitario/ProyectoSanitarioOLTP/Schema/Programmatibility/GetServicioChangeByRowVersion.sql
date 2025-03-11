create procedure [dbo].[GetServicioChangeByRowVersion] (
@startRow BIGINT
,@endRow BIGINT
)AS
BEGIN
SELECT [idServicio]
      ,[NombreCompleto]
      ,[Comentario]
      ,[RowVersion]
  FROM [ProyectoSanitarioOLTP].[san].[Servicio]
  where RowVersion>=CONVERT(ROWVERSION,@startRow)
  and RowVersion<=CONVERT(ROWVERSION,@endRow)
END;