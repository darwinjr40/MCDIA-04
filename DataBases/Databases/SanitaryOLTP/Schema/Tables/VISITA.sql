CREATE TABLE [dbo].[VISITA] (
    [id]                          INT           NOT NULL,
    [fecha]                       DATE          NOT NULL,
    [diagnostico]                 VARCHAR (255) NOT NULL,
    [tratamiento]                 VARCHAR (255) NOT NULL,
    [fecha_ingreso]               DATETIME      NOT NULL,
    [fecha_salida]                DATETIME      NOT NULL,
    [nro_habitacion]              INT           NOT NULL,
    [medico_hospital_servicio_id] INT           NOT NULL,
    [historial_clinico_id]        INT           NOT NULL,
    [factura_id]                  INT           NOT NULL,
    CONSTRAINT [PK_VISITA] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_VISITA_HISTORIAL_CLINICO] FOREIGN KEY ([historial_clinico_id]) REFERENCES [dbo].[HISTORIAL_CLINICO] ([id]),
    CONSTRAINT [FK_VISITA_FACTURA] FOREIGN KEY ([factura_id]) REFERENCES [dbo].[FACTURA] ([id]),
    CONSTRAINT [FK_VISITA_MEDICO_HOSPITAL_SERVICIO] FOREIGN KEY ([medico_hospital_servicio_id]) REFERENCES [dbo].[MEDICO_HOSPITAL_SERVICIO] ([id])
);

