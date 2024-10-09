    CREATE TABLE [dbo].[EXAMEN]
    (
	    [id] INT NOT NULL, 
        [nombre] VARCHAR(100) NOT NULL, 
        [descripcion] VARCHAR(255) NOT NULL, 
        CONSTRAINT [PK_EXAMEN] PRIMARY KEY CLUSTERED ([id] ASC),
        rowversion TIMESTAMP NOT NULL
    )
