﻿CREATE TABLE [dbo].[FACTURA] (
    [id]             INT       NOT NULL, 
    [visita_id]      INT       NOT NULL,
    [fecha_emision]  DATETIME  NOT NULL, 
    [total]          FLOAT     NOT NULL, 
    [cant_examenes]  INT       NULL, 
    [monto_visita]   FLOAT     NOT NULL, 
    [monto_examen]   FLOAT     NULL, 
    rowversion TIMESTAMP NOT NULL,
    CONSTRAINT [PK_FACTURA] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_FACTURA_VISITA] FOREIGN KEY ([visita_id]) REFERENCES [dbo].[VISITA] ([id])
);