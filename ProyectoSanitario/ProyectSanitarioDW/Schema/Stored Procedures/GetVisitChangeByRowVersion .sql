create  procedure [san].[GetVisitChangeByRowVersion] 
 AS
BEGIN 

select stgv.idVisita,
	   stgv.idPaciente,
	   stgv.idMedico,
	   stgv.idHospital,
	   stgv.idServicio,
	   dt.idTiempo,
	   stgv.FechaHora,
	   stgv.NumeroHabitacion,
	   stgv.Diagnostico,
	   stgv.Tratamiento,
	   stgv.fechaAlta, 
	   stgv.codHist
from [staging].[Visita] stgv
	left join [san].[DimTiempo] dt on CAST(stgv.FechaHora AS DATE)   = dt.fecha
END;