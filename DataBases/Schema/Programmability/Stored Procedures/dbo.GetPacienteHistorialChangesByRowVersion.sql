CREATE PROCEDURE [dbo].[GetPacienteHistorialChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT 
		dp.id
		,dni
		,apellido
		,nombre
		,fecha_nacimiento
		,numero_seguridad_social
		,sexo
		,codigo_historial_clinico = sh.codigo
	FROM paciente dp
	INNER JOIN [historial_clinico] sh ON (sh.[paciente_id] = dp.[id]) 
	WHERE (dp.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND dp.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (sh.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND sh.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END