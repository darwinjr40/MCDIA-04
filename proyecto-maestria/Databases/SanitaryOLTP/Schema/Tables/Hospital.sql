CREATE TABLE [dbo].[Hospital] (
    [Id] INT NOT NULL PRIMARY KEY,
    [Cod] VARCHAR(10) NOT NULL,
    [Nombre] VARCHAR(50) NOT NULL,
    [Ciudad] VARCHAR(50) NOT NULL,
    [Telefono] VARCHAR(20) NOT NULL,
    [Direccion] VARCHAR(40) NOT NULL,
    [Medico_Id] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Medico]([Id])
);