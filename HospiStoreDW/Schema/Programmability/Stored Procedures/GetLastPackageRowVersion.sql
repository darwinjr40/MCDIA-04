CREATE PROCEDURE [dbo].[GetLastPackageRowVersion]
(
	@tableName VARCHAR(50)
)
  AS
  BEGIN
	SELECT Last_Row_Version
	FROM [dbo].[Package_Config]
	WHERE Table_Name = @tableName;
  END
GO