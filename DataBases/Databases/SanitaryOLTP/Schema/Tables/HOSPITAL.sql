CREATE TABLE [dbo].[HOSPITAL] (
    [id]        INT          NOT NULL,
    [cod]       VARCHAR (10) NOT NULL,
    [nombre]    VARCHAR (50) NOT NULL,
    [ciudad]    VARCHAR (50) NOT NULL,
    [telefono]  VARCHAR (20) NOT NULL,
    [direccion] VARCHAR (40) NOT NULL,
    [medico_id] INT          NOT NULL,
    CONSTRAINT [PK_HOSPITAL] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_HOSPITAL_MEDICO] FOREIGN KEY ([medico_id]) REFERENCES [dbo].[MEDICO] ([id])
);

