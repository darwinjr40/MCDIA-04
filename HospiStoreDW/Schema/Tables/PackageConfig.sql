CREATE TABLE [dbo].[package_config]
(
	[Package_id] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_PackageConfig PRIMARY KEY,
	[Table_Name] [varchar](50) NOT NULL,
	[Last_Row_Version] [bigint] NULL
)
