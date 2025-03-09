create procedure [san].[GetHospitalChangesByRowVersion] (
@startRow BIGINT
,@endRow BIGINT
)AS
BEGIN
 SELECT 
  idHospital,	
  CodHospital,	
  Nombre,
  Ciudad,
  Telefono,
  DirectorDNI,
  RowVersion
  FROM san.Hospital
  where RowVersion>=CONVERT(ROWVERSION,@startRow)
  and RowVersion<=CONVERT(ROWVERSION,@endRow)
END;