CREATE TABLE [dbo].[Medico_Hospital_Servicio] (
    [Id] INT NOT NULL PRIMARY KEY,
    [Hospital_Servicio_Id] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Hospital_Servicio]([Id]),
    [Medico_Id] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Medico]([Id])
);