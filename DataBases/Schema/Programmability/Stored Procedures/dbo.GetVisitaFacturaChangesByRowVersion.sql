CREATE PROCEDURE [dbo].[GetVisitaFacturaChangesByRowVersion]
(
   @startRow BIGINT,
   @endRow  BIGINT
)
AS
BEGIN
  SELECT  
		   DISTINCT 	
		   visita_id = v.[id]
		  ,hospital_servicio_id = mhs.hospital_servicio_id
		  ,medico_id = mhs.medico_id
		  ,paciente_id = hc.paciente_id
		  ,examen_id = ISNULL(
				(	
					SELECT TOP 1 hse.examen_id
					FROM dbo.HOSPITAL_SERVICIO_EXAMEN hse
					INNER JOIN dbo.HOSPITAL_SERVICIO_EXAMEN_VISITA hsev ON hse.id = hsev.hospital_servicio_examen_id
					WHERE hsev.visita_id = v.id
				), 0)
		  ,total_factura = f.total
		  ,cantidad_examenes = f.cant_examenes
		  ,monto_visita = f.[monto_visita]
		  ,monto_examen = f.[monto_examen]
		  ,nro_habitacion = v.[nro_habitacion]
		  ,fecha_ingreso = v.[fecha_ingreso]
		  ,fecha_salida = v.[fecha_salida]
		-- Casteo de la fecha de ingreso (YYYYMMDD)
		  ,fecha_ingreso_key = CONVERT(INT,
			  (CONVERT(CHAR(4), DATEPART(YEAR, v.[fecha_ingreso]))
			  + CASE 
				  WHEN DATEPART(MONTH, v.[fecha_ingreso]) < 10 THEN '0' + CONVERT(CHAR(1), DATEPART(MONTH, v.[fecha_ingreso]))
				  ELSE CONVERT(CHAR(2), DATEPART(MONTH, v.[fecha_ingreso]))
				END
			  + CASE 
				  WHEN DATEPART(DAY, v.[fecha_ingreso]) < 10 THEN '0' + CONVERT(CHAR(1), DATEPART(DAY, v.[fecha_ingreso]))
				  ELSE CONVERT(CHAR(2), DATEPART(DAY, v.[fecha_ingreso]))
				END))
        
	  -- Casteo de la fecha de salida (YYYYMMDD)
		  ,fecha_salida_key = CONVERT(INT,
			  (CONVERT(CHAR(4), DATEPART(YEAR, v.[fecha_salida]))
			  + CASE 
				  WHEN DATEPART(MONTH, v.[fecha_salida]) < 10 THEN '0' + CONVERT(CHAR(1), DATEPART(MONTH, v.[fecha_salida]))
				  ELSE CONVERT(CHAR(2), DATEPART(MONTH, v.[fecha_salida]))
				END
			  + CASE 
				  WHEN DATEPART(DAY, v.[fecha_salida]) < 10 THEN '0' + CONVERT(CHAR(1), DATEPART(DAY, v.[fecha_salida]))
				  ELSE CONVERT(CHAR(2), DATEPART(DAY, v.[fecha_salida]))
				END))

	FROM [dbo].[visita] v
	INNER JOIN  [dbo].[FACTURA] f 
		ON v.[id] = f.[visita_id]
	INNER JOIN  [dbo].[HISTORIAL_CLINICO] hc 
		ON v.[historial_clinico_id] = hc.[id]
	INNER JOIN  [dbo].[MEDICO_HOSPITAL_SERVICIO] mhs 
		ON v.[medico_hospital_servicio_id] = mhs.[id]
	INNER JOIN  [dbo].[HOSPITAL_SERVICIO_EXAMEN_VISITA] hsev 
		ON v.[id] = hsev.[visita_id]
	WHERE (v.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND v.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (f.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND f.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (hc.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND hc.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (mhs.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND mhs.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (hsev.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND hsev.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END