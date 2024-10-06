CREATE TABLE [dbo].[DETALLE_FACTURA]
(
	[Id] INT NOT NULL, 
    [factura_id] INT NOT NULL, 
    [examen_id] INT NOT NULL, 
    [cantidad] INT NOT NULL, 
    [sub_total] FLOAT NOT NULL,
    CONSTRAINT [PK_DETALLE_FACTURA] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_FACTURA] FOREIGN KEY ([factura_id]) REFERENCES [dbo].[FACTURA] ([id]),
    CONSTRAINT [FK_EXAMEN] FOREIGN KEY ([examen_id]) REFERENCES [dbo].[EXAMEN] ([id])

)
