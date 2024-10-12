Create PROCEDURE [dbo].[DW_MergeDimPacienteHistorial]
AS
BEGIN

	UPDATE dp
	SET [dni]     = sp.[dni]
	   ,[apellido]     = sp.[apellido]
	   ,[nombre]     = sp.[nombre]
	   ,[fecha_nacimiento]     = sp.[fecha_nacimiento]
	   ,[numero_seguridad_social]     = sp.[numero_seguridad_social]
	   ,[sexo]     = sp.[sexo]
	   ,[codigo_historial_clinico]     = sp.[codigo_historial_clinico]
	FROM [dbo].[dim_paciente_historial]    dp
	INNER JOIN [dbo].[paciente_historial] sp ON (dp.[paciente_historial_sk]=sp.[paciente_historial_sk])
END
GO
