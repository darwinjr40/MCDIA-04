CREATE TABLE [dbo].[HOSPITAL_SERVICIO] (
    [id]                 INT NOT NULL,
    [total_camas]        INT NOT NULL,
    [total_camas_libres] INT NOT NULL,
    [servicio_id]        INT NOT NULL,
    [hospital_id]        INT NOT NULL,
    [precio] FLOAT NULL, 
    CONSTRAINT [PK_HOSPITAL_SERVICIO] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_HOSPITAL_SERVICIO_HOSPITAL] FOREIGN KEY ([hospital_id]) REFERENCES [dbo].[HOSPITAL] ([id]),
    CONSTRAINT [FK_HOSPITAL_SERVICIO_SERVICIO] FOREIGN KEY ([servicio_id]) REFERENCES [dbo].[SERVICIO] ([id])
);

