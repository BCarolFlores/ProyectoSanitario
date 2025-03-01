DECLARE @StartDate DATE = '2016-01-01';
DECLARE @EndDate DATE = DATEADD(YEAR, 10, @StartDate);

WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO DimTiempo (Fecha, Anio, Mes, Dia, DiaSemana, Trimestre)
    VALUES (
        @StartDate,
        YEAR(@StartDate),
        MONTH(@StartDate),
        DAY(@StartDate),
        DATEPART(WEEKDAY, @StartDate),
        DATEPART(QUARTER, @StartDate)
    );
    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END;