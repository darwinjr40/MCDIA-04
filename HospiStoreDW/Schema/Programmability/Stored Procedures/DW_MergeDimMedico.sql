Create PROCEDURE [dbo].[DW_MergeDimMedico]
AS
BEGIN

	UPDATE dc
	SET [dni] = sc.[dni]
	   ,[nombre]     = sc.[nombre]
	   ,[apellido]     = sc.[apellido]
	   ,[fecha_nacimiento]    = sc.[fecha_nacimiento]	   
	FROM [dbo].[dim_medico]        dc
	INNER JOIN [dbo].[Medico] sc ON (dc.[medico_sk]=sc.[medico_sk])
END
GO