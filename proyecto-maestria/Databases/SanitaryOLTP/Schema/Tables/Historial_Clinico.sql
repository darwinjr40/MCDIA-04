CREATE TABLE [dbo].[Historial_Clinico] (
    [Id] INT NOT NULL PRIMARY KEY,
    [Paciente_Id] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Paciente]([Id]),
    [Codigo] VARCHAR(20) NOT NULL
);
