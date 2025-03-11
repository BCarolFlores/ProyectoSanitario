create procedure [san].[GetMedicoChangeByRowVersion] (
@startRow BIGINT
,@endRow BIGINT
)AS
BEGIN
 SELECT [idMedico]
      ,[DNI]
      ,[Nombre]
      ,[Apellidos]
      ,[FechaNacimiento]
      ,[idHospital]
      ,[EsDirector]
      ,[RowVersion]
  FROM [ProyectoSanitarioOLTP].[san].[Medico]
  where RowVersion>=CONVERT(ROWVERSION,@startRow)
  and RowVersion<=CONVERT(ROWVERSION,@endRow)
END;