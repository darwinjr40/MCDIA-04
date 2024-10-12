/*
Plantilla de script posterior a la implementación							
--------------------------------------------------------------------------------------
 Este archivo contiene instrucciones de SQL que se anexarán al script de compilación.		
 Use la sintaxis de SQLCMD para incluir un archivo en el script posterior a la implementación.			
 Ejemplo:      :r .\miArchivo.sql								
 Use la sintaxis de SQLCMD para hacer referencia a una variable en el script posterior a la implementación.		
 Ejemplo:      :setvar TableName miTabla							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[Package_Config]
			  WHERE [Table_Name] = 'examen')
 BEGIN
	INSERT [dbo].[Package_Config] ([Table_Name], [Last_Row_Version]) VALUES ('examen', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[Package_Config]
			  WHERE [Table_Name] = 'hospital_servicio')
 BEGIN
	INSERT [dbo].[Package_Config] ([Table_Name], [Last_Row_Version]) VALUES ('hospital_servicio', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[Package_Config]
			  WHERE [Table_Name] = 'medico')
 BEGIN
  INSERT [dbo].[Package_Config] ([Table_Name], [Last_Row_Version]) VALUES ('medico', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[Package_Config]
			  WHERE [Table_Name] = 'paciente_historial')
 BEGIN
	INSERT [dbo].[Package_Config] ([Table_Name], [Last_Row_Version]) VALUES ('paciente_historial', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[Package_Config]
			  WHERE [Table_Name] = 'visita_factura')
 BEGIN
	INSERT [dbo].[Package_Config] ([Table_Name], [Last_Row_Version]) VALUES ('visita_factura', 0)
 END
GO
:r .\DimFechaScript.sql