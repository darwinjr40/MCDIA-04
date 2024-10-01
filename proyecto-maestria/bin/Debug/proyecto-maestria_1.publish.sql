/*
Script de implementación para demo

Una herramienta generó este código.
Los cambios realizados en este archivo podrían generar un comportamiento incorrecto y se perderán si
se vuelve a generar el código.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "demo"
:setvar DefaultFilePrefix "demo"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detectar el modo SQLCMD y deshabilitar la ejecución del script si no se admite el modo SQLCMD.
Para volver a habilitar el script después de habilitar el modo SQLCMD, ejecute lo siguiente:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'El modo SQLCMD debe estar habilitado para ejecutar correctamente este script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ANSI_NULLS ON,
                ANSI_PADDING ON,
                ANSI_WARNINGS ON,
                ARITHABORT ON,
                CONCAT_NULL_YIELDS_NULL ON,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON,
                CURSOR_DEFAULT LOCAL 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET PAGE_VERIFY NONE 
            WITH ROLLBACK IMMEDIATE;
    END


GO
ALTER DATABASE [$(DatabaseName)]
    SET TARGET_RECOVERY_TIME = 0 SECONDS 
    WITH ROLLBACK IMMEDIATE;


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE (QUERY_CAPTURE_MODE = ALL, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 367), MAX_STORAGE_SIZE_MB = 100) 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE = OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
PRINT N'Creando Tabla [dbo].[Historial_Clinico]...';


GO
CREATE TABLE [dbo].[Historial_Clinico] (
    [Id]          INT          NOT NULL,
    [Paciente_Id] INT          NOT NULL,
    [Codigo]      VARCHAR (20) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Hospital]...';


GO
CREATE TABLE [dbo].[Hospital] (
    [Id]        INT          NOT NULL,
    [Cod]       VARCHAR (10) NOT NULL,
    [Nombre]    VARCHAR (50) NOT NULL,
    [Ciudad]    VARCHAR (50) NOT NULL,
    [Telefono]  VARCHAR (20) NOT NULL,
    [Direccion] VARCHAR (40) NOT NULL,
    [Medico_Id] INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Hospital_Servicio]...';


GO
CREATE TABLE [dbo].[Hospital_Servicio] (
    [Id]                 INT NOT NULL,
    [Total_Camas]        INT NOT NULL,
    [Total_Camas_Libres] INT NOT NULL,
    [Servicio_Id]        INT NOT NULL,
    [Hospital_Id]        INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Medico]...';


GO
CREATE TABLE [dbo].[Medico] (
    [Id]               INT           NOT NULL,
    [Dni]              VARCHAR (20)  NOT NULL,
    [Nombre]           VARCHAR (100) NOT NULL,
    [Apellido]         VARCHAR (100) NOT NULL,
    [Fecha_Nacimiento] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Medico_Hospital_Servicio]...';


GO
CREATE TABLE [dbo].[Medico_Hospital_Servicio] (
    [Id]                   INT NOT NULL,
    [Hospital_Servicio_Id] INT NOT NULL,
    [Medico_Id]            INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Paciente]...';


GO
CREATE TABLE [dbo].[Paciente] (
    [Id]                      INT           NOT NULL,
    [Dni]                     VARCHAR (20)  NOT NULL,
    [Apellido]                VARCHAR (100) NOT NULL,
    [Nombre]                  VARCHAR (100) NOT NULL,
    [Fecha_Nacimiento]        DATETIME      NOT NULL,
    [Numero_Seguridad_Social] VARCHAR (20)  NOT NULL,
    [Sexo]                    VARCHAR (10)  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Servicio]...';


GO
CREATE TABLE [dbo].[Servicio] (
    [Id]         INT           NOT NULL,
    [Nombre]     VARCHAR (100) NOT NULL,
    [Comentario] VARCHAR (255) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Visita]...';


GO
CREATE TABLE [dbo].[Visita] (
    [Id]                          INT           NOT NULL,
    [Fecha]                       DATE          NOT NULL,
    [Diagnostico]                 VARCHAR (255) NOT NULL,
    [Tratamiento]                 VARCHAR (255) NOT NULL,
    [Fecha_Ingreso]               DATETIME      NOT NULL,
    [Fecha_Salida]                DATETIME      NOT NULL,
    [Nro_Habitacion]              INT           NOT NULL,
    [Medico_Hospital_Servicio_Id] INT           NOT NULL,
    [Historial_Clinico_Id]        INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[Historial_Clinico]...';


GO
ALTER TABLE [dbo].[Historial_Clinico] WITH NOCHECK
    ADD FOREIGN KEY ([Paciente_Id]) REFERENCES [dbo].[Paciente] ([Id]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[Hospital]...';


GO
ALTER TABLE [dbo].[Hospital] WITH NOCHECK
    ADD FOREIGN KEY ([Medico_Id]) REFERENCES [dbo].[Medico] ([Id]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[Hospital_Servicio]...';


GO
ALTER TABLE [dbo].[Hospital_Servicio] WITH NOCHECK
    ADD FOREIGN KEY ([Servicio_Id]) REFERENCES [dbo].[Servicio] ([Id]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[Hospital_Servicio]...';


GO
ALTER TABLE [dbo].[Hospital_Servicio] WITH NOCHECK
    ADD FOREIGN KEY ([Hospital_Id]) REFERENCES [dbo].[Hospital] ([Id]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[Medico_Hospital_Servicio]...';


GO
ALTER TABLE [dbo].[Medico_Hospital_Servicio] WITH NOCHECK
    ADD FOREIGN KEY ([Hospital_Servicio_Id]) REFERENCES [dbo].[Hospital_Servicio] ([Id]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[Medico_Hospital_Servicio]...';


GO
ALTER TABLE [dbo].[Medico_Hospital_Servicio] WITH NOCHECK
    ADD FOREIGN KEY ([Medico_Id]) REFERENCES [dbo].[Medico] ([Id]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[Visita]...';


GO
ALTER TABLE [dbo].[Visita] WITH NOCHECK
    ADD FOREIGN KEY ([Medico_Hospital_Servicio_Id]) REFERENCES [dbo].[Medico_Hospital_Servicio] ([Id]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[Visita]...';


GO
ALTER TABLE [dbo].[Visita] WITH NOCHECK
    ADD FOREIGN KEY ([Historial_Clinico_Id]) REFERENCES [dbo].[Historial_Clinico] ([Id]);


GO
PRINT N'Comprobando los datos existentes con las restricciones recién creadas';


GO
USE [$(DatabaseName)];


GO
CREATE TABLE [#__checkStatus] (
    id           INT            IDENTITY (1, 1) PRIMARY KEY CLUSTERED,
    [Schema]     NVARCHAR (256),
    [Table]      NVARCHAR (256),
    [Constraint] NVARCHAR (256)
);

SET NOCOUNT ON;

DECLARE tableconstraintnames CURSOR LOCAL FORWARD_ONLY
    FOR SELECT SCHEMA_NAME([schema_id]),
               OBJECT_NAME([parent_object_id]),
               [name],
               0
        FROM   [sys].[objects]
        WHERE  [parent_object_id] IN (OBJECT_ID(N'dbo.Historial_Clinico'), OBJECT_ID(N'dbo.Hospital'), OBJECT_ID(N'dbo.Hospital_Servicio'), OBJECT_ID(N'dbo.Medico_Hospital_Servicio'), OBJECT_ID(N'dbo.Visita'))
               AND [type] IN (N'F', N'C')
                   AND [object_id] IN (SELECT [object_id]
                                       FROM   [sys].[check_constraints]
                                       WHERE  [is_not_trusted] <> 0
                                              AND [is_disabled] = 0
                                       UNION
                                       SELECT [object_id]
                                       FROM   [sys].[foreign_keys]
                                       WHERE  [is_not_trusted] <> 0
                                              AND [is_disabled] = 0);

DECLARE @schemaname AS NVARCHAR (256);

DECLARE @tablename AS NVARCHAR (256);

DECLARE @checkname AS NVARCHAR (256);

DECLARE @is_not_trusted AS INT;

DECLARE @statement AS NVARCHAR (1024);

BEGIN TRY
    OPEN tableconstraintnames;
    FETCH tableconstraintnames INTO @schemaname, @tablename, @checkname, @is_not_trusted;
    WHILE @@fetch_status = 0
        BEGIN
            PRINT N'Comprobando restricción:' + @checkname + N' [' + @schemaname + N'].[' + @tablename + N']';
            SET @statement = N'ALTER TABLE [' + @schemaname + N'].[' + @tablename + N'] WITH ' + CASE @is_not_trusted WHEN 0 THEN N'CHECK' ELSE N'NOCHECK' END + N' CHECK CONSTRAINT [' + @checkname + N']';
            BEGIN TRY
                EXECUTE [sp_executesql] @statement;
            END TRY
            BEGIN CATCH
                INSERT  [#__checkStatus] ([Schema], [Table], [Constraint])
                VALUES                  (@schemaname, @tablename, @checkname);
            END CATCH
            FETCH tableconstraintnames INTO @schemaname, @tablename, @checkname, @is_not_trusted;
        END
END TRY
BEGIN CATCH
    PRINT ERROR_MESSAGE();
END CATCH

IF CURSOR_STATUS(N'LOCAL', N'tableconstraintnames') >= 0
    CLOSE tableconstraintnames;

IF CURSOR_STATUS(N'LOCAL', N'tableconstraintnames') = -1
    DEALLOCATE tableconstraintnames;

SELECT N'Error de comprobación de restricción:' + [Schema] + N'.' + [Table] + N',' + [Constraint]
FROM   [#__checkStatus];

IF @@ROWCOUNT > 0
    BEGIN
        DROP TABLE [#__checkStatus];
        RAISERROR (N'Error al comprobar las restricciones', 16, 127);
    END

SET NOCOUNT OFF;

DROP TABLE [#__checkStatus];


GO
PRINT N'Actualización completada.';


GO
