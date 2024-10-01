CREATE TABLE [dbo].[Paciente] (
    [Id] INT NOT NULL PRIMARY KEY,
    [Dni] VARCHAR(20) NOT NULL,
    [Apellido] VARCHAR(100) NOT NULL,
    [Nombre] VARCHAR(100) NOT NULL,
    [Fecha_Nacimiento] DATETIME NOT NULL,
    [Numero_Seguridad_Social] VARCHAR(20) NOT NULL,
    [Sexo] VARCHAR(10) NOT NULL
);