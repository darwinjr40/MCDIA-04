Create PROCEDURE [dbo].[DW_MergeFactVisitaFactura]
AS
BEGIN

	UPDATE de
	SET [hospital_servicio_sk]     = se.[hospital_servicio_sk]
	   ,[medico_sk]     = se.[medico_sk]
	   ,[paciente_historial_sk]     = se.[paciente_historial_sk]
	   ,[examen_sk]     = se.[examen_sk]
	   ,[total_factura]     = se.[total_factura]
	   ,[cantidad_examenes]     = se.[cantidad_examenes]
	   ,[monto_visita]     = se.[monto_visita]
	   ,[monto_examen]     = se.[monto_examen]
	   ,[nro_habitacion]     = se.[nro_habitacion]
	   ,[fecha_ingreso]     = se.[fecha_ingreso]
	   ,[fecha_salida]     = se.[fecha_salida]
	   ,[fecha_id]     = se.[fecha_id]
	FROM [dbo].[fact_visita_factura]    de
	INNER JOIN [dbo].[visita_factura] se ON (de.[visita_id]=se.[visita_id])
END
GO