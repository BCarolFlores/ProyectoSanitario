create procedure [san].[GetVisitChangeByRowVersion] (
@fechaini int
,@fechafin int
)AS
BEGIN
   SELECT  v.idVisita,
        hc.idPaciente, 
        v.idMedico,        
        v.idHospital,
        v.idServicio,
        v.FechaHora,
	
        v.NumeroHabitacion,
        v.Diagnostico,
        v.Tratamiento,
        CONVERT(CHAR(8), v.FechaAlta, 112) AS fechaAlta,
        hc.codHist
    FROM [san].[Visita] v
    LEFT JOIN [san].[HistoriasClinica] hc 
        ON v.idHist = hc.idHist
  where  CONVERT(INT, CONVERT(VARCHAR(8), v.FechaHora, 112))  >= @fechaini
  and   CONVERT(INT, CONVERT(VARCHAR(8), v.FechaHora, 112))  <=@fechafin
END;