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
GO
DELETE FROM HOSPITAL_SERVICIO_EXAMEN_VISITA;
GO
DELETE FROM HOSPITAL_SERVICIO_EXAMEN;
GO
DELETE FROM VISITA;
GO
DELETE FROM FACTURA;
GO
DELETE FROM EXAMEN;
GO
delete from MEDICO_HOSPITAL_SERVICIO;
GO
delete from HOSPITAL_SERVICIO;
GO
delete from servicio;
GO
delete from hospital;
GO
delete from medico;
GO
--DBCC CHECKIDENT ('medico', RESEED);
GO
delete from HISTORIAL_CLINICO;
GO
delete from paciente;
GO


:r .\paciente.data.sql
:r .\historial_clinico.data.sql
:r .\StoredProcedures\medico.data.sql
GO
EXEC pro_addMedicos 50;
GO
:r .\hospital.data.sql
:r .\servicio.data.sql
:r .\hospital_servicio.data.sql
:r .\medico_hospital_servicio.data.sql
:r .\examen.sql
:r .\hospital_servicio_examen.data.sql
:r .\visita.data.sql
:r .\hospital_servicio_examen_visita.data.sql
:r .\factura.data.sql


