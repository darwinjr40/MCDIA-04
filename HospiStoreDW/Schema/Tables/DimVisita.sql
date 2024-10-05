CREATE TABLE [dbo].[DimVisita]
(
	[visita_sk] INT NOT NULL PRIMARY KEY,
    [visita_id] INT NOT NULL,
    [diagnostico] VARCHAR(50) NOT NULL,
    [tratamiento] VARCHAR(50) NOT NULL, 
    [hospital_name] VARCHAR(50) NOT NULL, 
    [servicio_name] VARCHAR(50) NOT NULL, 
    [paciente_nombre] VARCHAR(50) NOT NULL,
)
