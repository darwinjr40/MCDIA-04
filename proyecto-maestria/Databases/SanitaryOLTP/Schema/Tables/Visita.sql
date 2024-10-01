CREATE TABLE [dbo].[Visita] (
    [Id] INT NOT NULL PRIMARY KEY,
    [Fecha] DATE NOT NULL,
    [Diagnostico] VARCHAR(255) NOT NULL,
    [Tratamiento] VARCHAR(255) NOT NULL,
    [Fecha_Ingreso] DATETIME NOT NULL,
    [Fecha_Salida] DATETIME NOT NULL,
    [Nro_Habitacion] INT NOT NULL,
    [Medico_Hospital_Servicio_Id] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Medico_Hospital_Servicio]([Id]),
    [Historial_Clinico_Id] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Historial_Clinico]([Id])
);