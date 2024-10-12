CREATE PROCEDURE [dbo].[GetMedicoChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT id, dni, nombre, apellido, fecha_nacimiento
	FROM MEDICO
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END