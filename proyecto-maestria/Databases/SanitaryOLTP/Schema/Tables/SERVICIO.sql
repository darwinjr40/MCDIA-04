CREATE TABLE [dbo].[SERVICIO] (
    [id]         INT           NOT NULL,
    [nombre]     VARCHAR (100) NOT NULL,
    [comentario] VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_SERVICIO] PRIMARY KEY CLUSTERED ([id] ASC)
);

