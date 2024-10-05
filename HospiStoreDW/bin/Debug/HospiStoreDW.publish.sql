/*
Script de implementación para hospiDW

Una herramienta generó este código.
Los cambios realizados en este archivo podrían generar un comportamiento incorrecto y se perderán si
se vuelve a generar el código.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "hospiDW"
:setvar DefaultFilePrefix "hospiDW"
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
PRINT N'La operación de refactorización Cambiar nombre con la clave f4501f15-1592-4909-85e2-dbefcfe82584 se ha omitido; no se cambiará el nombre del elemento [dbo].[DimFecha].[number_da_of_week] (SqlSimpleColumn) a number_day_of_week';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 8e3f9d67-52cf-454a-a3c8-d4fab882d436, 34d228b3-1b07-4ce2-aa22-1f17bb42bec7 se ha omitido; no se cambiará el nombre del elemento [dbo].[FacFactura].[cantidad] (SqlSimpleColumn) a factura_id';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 638e4756-15e0-40a9-a9f4-1730a02f0910 se ha omitido; no se cambiará el nombre del elemento [dbo].[FacFactura].[subtotal] (SqlSimpleColumn) a detalle_factura_id';


GO
PRINT N'Creando Tabla [dbo].[DimExamen]...';


GO
CREATE TABLE [dbo].[DimExamen] (
    [examen_sk] INT           NOT NULL,
    [examen_id] INT           NOT NULL,
    [nombre]    VARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([examen_sk] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[DimFecha]...';


GO
CREATE TABLE [dbo].[DimFecha] (
    [Id]                 INT          NOT NULL,
    [año]                SMALLINT     NOT NULL,
    [mes]                TINYINT      NOT NULL,
    [dia]                TINYINT      NOT NULL,
    [trimestre]          INT          NOT NULL,
    [semestre]           INT          NOT NULL,
    [name_day]           VARCHAR (50) NOT NULL,
    [number_day_of_week] INT          NOT NULL,
    [name_month]         VARCHAR (50) NOT NULL,
    [fecha]              DATETIME     NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[DimVisita]...';


GO
CREATE TABLE [dbo].[DimVisita] (
    [visita_sk]       INT          NOT NULL,
    [visita_id]       INT          NOT NULL,
    [diagnostico]     VARCHAR (50) NOT NULL,
    [tratamiento]     VARCHAR (50) NOT NULL,
    [hospital_name]   VARCHAR (50) NOT NULL,
    [servicio_name]   VARCHAR (50) NOT NULL,
    [paciente_nombre] VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([visita_sk] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[FacFactura]...';


GO
CREATE TABLE [dbo].[FacFactura] (
    [factura_sk]         INT        NOT NULL,
    [factura_id]         INT        NOT NULL,
    [detalle_factura_id] INT        NOT NULL,
    [examen_sk]          INT        NOT NULL,
    [visita_sk]          INT        NOT NULL,
    [fecha]              DATETIME   NOT NULL,
    [cantidad]           INT        NOT NULL,
    [subtotal]           FLOAT (53) NOT NULL,
    PRIMARY KEY CLUSTERED ([factura_sk] ASC)
);


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[FacFactura]...';


GO
ALTER TABLE [dbo].[FacFactura]
    ADD DEFAULT 0 FOR [cantidad];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[FacFactura]...';


GO
ALTER TABLE [dbo].[FacFactura]
    ADD DEFAULT 0 FOR [subtotal];


GO
-- Paso de refactorización para actualizar el servidor de destino con los registros de transacciones implementadas

IF OBJECT_ID(N'dbo.__RefactorLog') IS NULL
BEGIN
    CREATE TABLE [dbo].[__RefactorLog] (OperationKey UNIQUEIDENTIFIER NOT NULL PRIMARY KEY)
    EXEC sp_addextendedproperty N'microsoft_database_tools_support', N'refactoring log', N'schema', N'dbo', N'table', N'__RefactorLog'
END
GO
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'f4501f15-1592-4909-85e2-dbefcfe82584')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('f4501f15-1592-4909-85e2-dbefcfe82584')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '8e3f9d67-52cf-454a-a3c8-d4fab882d436')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('8e3f9d67-52cf-454a-a3c8-d4fab882d436')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '34d228b3-1b07-4ce2-aa22-1f17bb42bec7')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('34d228b3-1b07-4ce2-aa22-1f17bb42bec7')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '638e4756-15e0-40a9-a9f4-1730a02f0910')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('638e4756-15e0-40a9-a9f4-1730a02f0910')

GO

GO
PRINT N'Actualización completada.';


GO
