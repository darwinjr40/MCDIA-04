CREATE TABLE [dbo].[HISTORIAL_CLINICO] (
    [id]          INT          NOT NULL,
    [paciente_id] INT          NOT NULL,
    [codigo]      VARCHAR (20) NOT NULL,
    CONSTRAINT [PK_HISTORIAL_CLINICO] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_PACIENTE] FOREIGN KEY ([paciente_id]) REFERENCES [dbo].[PACIENTE] ([id])
);

