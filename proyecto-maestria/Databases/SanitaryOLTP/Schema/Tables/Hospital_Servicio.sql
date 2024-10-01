CREATE TABLE [dbo].[Hospital_Servicio] (
    [Id] INT NOT NULL PRIMARY KEY,
    [Total_Camas] INT NOT NULL,
    [Total_Camas_Libres] INT NOT NULL,
    [Servicio_Id] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Servicio]([Id]),
    [Hospital_Id] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Hospital]([Id])
);