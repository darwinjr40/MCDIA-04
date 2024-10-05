CREATE TABLE [dbo].[PACIENTE] (
    [id]                      INT           NOT NULL,
    [dni]                     VARCHAR (20)  NOT NULL,
    [apellido]                VARCHAR (100) NOT NULL,
    [nombre]                  VARCHAR (100) NOT NULL,
    [fecha_nacimiento]        DATETIME      NOT NULL,
    [numero_seguridad_social] VARCHAR (20)  NOT NULL,
    [sexo]                    VARCHAR (10)  NOT NULL,
    CONSTRAINT [PK_PACIENTE] PRIMARY KEY CLUSTERED ([id] ASC)
);

