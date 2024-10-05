CREATE TABLE [dbo].[DimFecha]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [año] SMALLINT NOT NULL, 
    [mes] TINYINT NOT NULL, 
    [dia] TINYINT NOT NULL, 
    [trimestre] INT NOT NULL, 
    [semestre] INT NOT NULL, 
    [name_day] VARCHAR(50) NOT NULL, 
    [number_day_of_week] INT NOT NULL, 
    [name_month] VARCHAR(50) NOT NULL
)
