CREATE TABLE [dbo].[MEDICO] (
    [id]               INT           NOT NULL,
    [dni]              VARCHAR (20)  NOT NULL,
    [nombre]           VARCHAR (100) NOT NULL,
    [apellido]         VARCHAR (100) NOT NULL,
    [fecha_nacimiento] DATETIME      NOT NULL,
    CONSTRAINT [FK_MEDICO] PRIMARY KEY CLUSTERED ([id] ASC)
);

