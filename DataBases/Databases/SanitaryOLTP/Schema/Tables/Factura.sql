CREATE TABLE [dbo].[FACTURA]
(
	[Id] INT NOT NULL, 
    [visita_id] INT NOT NULL,
    [fecha_emision] DATETIME NOT NULL, 
    [total] FLOAT NOT NULL, 
    [cant_examenes] INT NULL, 
    [monto_visita] FLOAT NOT NULL, 
    [monto_examen] FLOAT NULL, 
    CONSTRAINT [PK_FACTURA] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_VISITA] FOREIGN KEY ([visita_id]) REFERENCES [dbo].[VISITA] ([id])
)
