CREATE PROCEDURE [dbo].[GetVisitaFacturaChangesByRowVersion]
(
   @startRow BIGINT,
   @endRow  BIGINT
)
AS
BEGIN
    -- Selección de cambios en VISITA y sus facturas relacionadas
    SELECT hsev.[visita_id] AS visita_factura_id,
           v.[id] AS visita_id,
<<<<<<< HEAD
          hsev.hospital_servicio_examen_id AS examen_id,
=======
          
>>>>>>> 8c996dc026c722501238c64ed020e678621390d2
    v.[diagnostico],
    v.[tratamiento],
	-- Casteo de la fecha de ingreso (YYYYMMDD)
    CONVERT(INT,
        (CONVERT(CHAR(4), DATEPART(YEAR, v.[fecha_ingreso]))
        + CASE 
            WHEN DATEPART(MONTH, v.[fecha_ingreso]) < 10 THEN '0' + CONVERT(CHAR(1), DATEPART(MONTH, v.[fecha_ingreso]))
            ELSE CONVERT(CHAR(2), DATEPART(MONTH, v.[fecha_ingreso]))
          END
        + CASE 
            WHEN DATEPART(DAY, v.[fecha_ingreso]) < 10 THEN '0' + CONVERT(CHAR(1), DATEPART(DAY, v.[fecha_ingreso]))
            ELSE CONVERT(CHAR(2), DATEPART(DAY, v.[fecha_ingreso]))
          END)) AS fecha_ingreso_key,
          
    -- Casteo de la fecha de salida (YYYYMMDD)
    CONVERT(INT,
        (CONVERT(CHAR(4), DATEPART(YEAR, v.[fecha_salida]))
        + CASE 
            WHEN DATEPART(MONTH, v.[fecha_salida]) < 10 THEN '0' + CONVERT(CHAR(1), DATEPART(MONTH, v.[fecha_salida]))
            ELSE CONVERT(CHAR(2), DATEPART(MONTH, v.[fecha_salida]))
          END
        + CASE 
            WHEN DATEPART(DAY, v.[fecha_salida]) < 10 THEN '0' + CONVERT(CHAR(1), DATEPART(DAY, v.[fecha_salida]))
            ELSE CONVERT(CHAR(2), DATEPART(DAY, v.[fecha_salida]))
          END)) AS fecha_salida_key,
           v.[nro_habitacion],
		   v.medico_hospital_servicio_id AS hospital_servicio,
		   v.historial_clinico_id AS paciente_hitorial,
           f.[id] AS factura_id,
           f.[fecha_emision],
           f.[total],
           f.[cant_examenes],
           f.[monto_visita],
           f.[monto_examen]
    FROM [dbo].[visita] v
	INNER JOIN  [dbo].[HOSPITAL_SERVICIO_EXAMEN_VISITA] hsev ON v.[id] = hsev.[visita_id]
    INNER JOIN [dbo].[factura] f ON v.[id] = f.[visita_id]
    WHERE (v.[rowversion] > CONVERT(ROWVERSION, @startRow)
           AND v.[rowversion] <= CONVERT(ROWVERSION, @endRow))
      OR (f.[rowversion] > CONVERT(ROWVERSION, @startRow)
           AND f.[rowversion] <= CONVERT(ROWVERSION, @endRow))
	  OR (hsev.[rowversion] > CONVERT(ROWVERSION, @startRow)
           AND hsev.[rowversion] <= CONVERT(ROWVERSION, @endRow));
<<<<<<< HEAD
END
=======
END
>>>>>>> 8c996dc026c722501238c64ed020e678621390d2
