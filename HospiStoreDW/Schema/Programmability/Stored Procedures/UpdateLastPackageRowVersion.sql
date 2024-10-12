CREATE PROCEDURE [dbo].[UpdateLastPackageRowVersion]
  (
	@tableName VARCHAR(50)
	,@lastRowVersion BIGINT
  )
  AS
  BEGIN
	UPDATE [dbo].[Package_Config]
	SET Last_Row_Version = @lastRowVersion
	WHERE Table_Name = @tableName;
  END
GO