create procedure [dbo].[GetPacienteChangeByRowVersion] (
@startRow BIGINT
,@endRow BIGINT
)AS
BEGIN
 SELECT 
  idPaciente,	
  DNI,	
  Nombre,
  Apellidos,
  FechaNacimiento,
  NumeroSeguridadSocial,
  OtrosDatos
  FROM san.paciente
  where RowVersion>=CONVERT(ROWVERSION,@startRow)
  and RowVersion<=CONVERT(ROWVERSION,@endRow)
END;