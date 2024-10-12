Create PROCEDURE [dbo].[DW_MergeDimExamen]
AS
BEGIN

	UPDATE de
	SET [nombre]     = se.[nombre]
	   ,[descripcion]     = se.[descripcion]
	FROM [dbo].[dim_examen]    de
	INNER JOIN [dbo].[examen] se ON (de.[examen_sk]=se.[examen_sk])
END
GO