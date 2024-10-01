-- Tabla MEDICO
CREATE TABLE [dbo].[Medico] (
    [Id] INT NOT NULL PRIMARY KEY,
    [Dni] VARCHAR(20) NOT NULL,
    [Nombre] VARCHAR(100) NOT NULL,
    [Apellido] VARCHAR(100) NOT NULL,
    [Fecha_Nacimiento] DATETIME NOT NULL
);