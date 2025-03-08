create procedure [san].[DW_MergeDimPaciente]  AS
BEGIN
  UPDATE dc
  SET idPaciente=sp.idPaciente
	 ,DNI=sp.DNI
	 ,Nombre=sp.Nombre
	 ,Apellidos=sp.Apellidos
	 ,FechaNacimiento=sp.FechaNacimiento
	 ,NumeroSeguridadSocial=sp.NumeroSeguridadSocial
	 ,OtrosDatos=sp.OtrosDatos
  from san.DimPaciente  dc
  INNER JOIN staging.Paciente sp ON dc.idPacienteSK=sp.idPacienteSK
END;