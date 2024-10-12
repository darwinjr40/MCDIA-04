CREATE PROCEDURE [dbo].[GetExamenChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT id, nombre, descripcion
	FROM examen
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END