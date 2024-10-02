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
delete from visita;
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







INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (1, '6017569', 'Hekkert', 'Caprice', '1930-09-04', 'css1', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (2, '1954268', 'Caveill', 'Tommie', '2001-06-30', 'css2', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (3, '8408480', 'Overthrow', 'Fulvia', '1979-05-11', 'css3', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (4, '59170', 'Moar', 'Trude', '2020-11-12', 'css4', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (5, '1394304', 'Tuxill', 'Sheelah', '1968-04-30', 'css5', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (6, '1366154', 'Caveill', 'Linette', '1966-11-06', 'css6', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (7, '9464303', 'Hekkert', 'Carmon', '1970-12-30', 'css7', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (8, '8609676', 'Niset', 'Karlene', '2021-08-26', 'css8', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (9, '464935', 'Cowins', 'Casi', '1985-09-16', 'css9', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (10, '150369', 'Chell', 'Rica', '1936-01-04', 'css10', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (11, '6978800', 'MacGillavery', 'Angelika', '1999-07-15', 'css11', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (12, '4854822', 'Coushe', 'Cassey', '1947-08-01', 'css12', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (13, '2558369', 'Buff', 'Linette', '1938-08-22', 'css13', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (14, '8430807', 'Shiers', 'Pansie', '2017-01-25', 'css14', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (15, '7675910', 'Hekkert', 'Georgetta', '1955-04-01', 'css15', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (16, '1259901', 'Wyndham', 'Linette', '2005-07-07', 'css16', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (17, '2794040', 'Wyndham', 'Amy', '1971-06-08', 'css17', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (18, '5823307', 'Ridges', 'Agace', '1990-02-06', 'css18', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (19, '1302184', 'Dongate', 'Jenna', '1949-11-27', 'css19', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (20, '5548313', 'Pither', 'Pansie', '1979-04-12', 'css20', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (21, '1977620', 'Ellwand', 'Lianna', '1961-11-23', 'css21', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (22, '280545', 'Amey', 'Agace', '1974-05-26', 'css22', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (23, '7036554', 'Vader', 'Agace', '1948-11-18', 'css23', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (24, '6008', 'Selburn', 'Karlene', '1953-03-03', 'css24', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (25, '481442', 'Longworthy', 'Fancy', '2009-07-20', 'css25', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (26, '8136613', 'Labeuil', 'Tommie', '1984-04-16', 'css26', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (27, '8192120', 'Jillis', 'Linette', '1970-07-24', 'css27', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (28, '4251866', 'Selburn', 'Carmon', '1939-07-06', 'css28', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (29, '5457107', 'Skoughman', 'Reta', '1945-09-20', 'css29', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (30, '9859142', 'Ducket', 'Ninnette', '2006-08-23', 'css30', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (31, '8104214', 'Dimitriades', 'Trude', '2000-11-04', 'css31', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (32, '6125003', 'Boyington', 'Cherlyn', '1953-09-30', 'css32', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (33, '7853823', 'Levecque', 'Reta', '2016-08-15', 'css33', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (34, '9618299', 'Parmley', 'Angelika', '1941-06-24', 'css34', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (35, '5610092', 'Yeldon', 'Agace', '2011-11-20', 'css35', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (36, '9164442', 'Hekkert', 'Marja', '1931-07-07', 'css36', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (37, '5756016', 'Greenard', 'Rhodia', '1932-12-08', 'css37', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (38, '1086209', 'Andrzejczak', 'Cherice', '2005-09-12', 'css38', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (39, '3582491', 'Shrubsall', 'Star', '1990-02-27', 'css39', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (40, '2526804', 'Kamen', 'Rica', '1939-12-29', 'css40', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (41, '787694', 'Dongate', 'Tessy', '1940-12-12', 'css41', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (42, '4129481', 'Longworthy', 'Salome', '2020-07-11', 'css42', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (43, '1940459', 'Keemar', 'Marja', '2005-04-07', 'css43', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (44, '2377105', 'Cumber', 'Coral', '1997-06-26', 'css44', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (45, '4476637', 'MChirrie', 'Janey', '1963-10-21', 'css45', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (46, '2039654', 'Paramor', 'Randy', '1956-12-10', 'css46', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (47, '6565284', 'Tuxill', 'Fulvia', '1980-10-20', 'css47', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (48, '2030067', 'Amey', 'Mildred', '1941-03-25', 'css48', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (49, '8637301', 'Pither', 'Angelika', '1967-10-06', 'css49', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (50, '7615379', 'Shiers', 'Amy', '1955-09-26', 'css50', 'Femenino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (51, '2414254', 'Ortas', 'Lorry', '1958-06-28', 'css51', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (52, '9938037', 'Cannell', 'Mylo', '1935-04-12', 'css52', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (53, '737148', 'MChirrie', 'Boy', '1959-08-08', 'css53', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (54, '999514', 'Yeldon', 'Ralph', '1941-07-19', 'css54', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (55, '5238661', 'Enns', 'Trev', '1957-02-22', 'css55', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (56, '2751937', 'FitzGeorge', 'Dante', '1965-01-02', 'css56', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (57, '1460578', 'Bacchus', 'Meyer', '2006-08-28', 'css57', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (58, '9475339', 'Fellows', 'Mylo', '1945-11-03', 'css58', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (59, '5014470', 'Shrubsall', 'Sayer', '1983-12-20', 'css59', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (60, '7331867', 'Cheater', 'Dante', '2010-11-18', 'css60', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (61, '8271128', 'Bizley', 'Harris', '1983-11-23', 'css61', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (62, '9191461', 'Keemar', 'Mylo', '2007-07-11', 'css62', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (63, '7969342', 'Tuxill', 'Mylo', '1976-11-16', 'css63', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (64, '6384618', 'Longworthy', 'Gage', '2017-10-06', 'css64', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (65, '9851136', 'Capeling', 'Boy', '1998-02-03', 'css65', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (66, '2710003', 'Mulran', 'Linc', '2002-05-27', 'css66', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (67, '7042950', 'McIlhatton', 'Abbot', '1997-01-26', 'css67', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (68, '9582583', 'Keemar', 'Victor', '1959-06-29', 'css68', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (69, '429766', 'Skoughman', 'Enos', '1948-07-01', 'css69', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (70, '5003348', 'Davion', 'Dallon', '1975-11-07', 'css70', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (71, '2146207', 'Dawidowitsch', 'Gradeigh', '1981-04-09', 'css71', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (72, '8194024', 'Boyington', 'Victor', '2014-09-01', 'css72', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (73, '1445504', 'Boyington', 'Rourke', '1930-11-05', 'css73', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (74, '7329897', 'Moar', 'Geoff', '1995-08-19', 'css74', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (75, '1978257', 'Beswell', 'Standford', '1954-02-18', 'css75', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (76, '6779587', 'Andrzejczak', 'Antonin', '1985-07-20', 'css76', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (77, '6710726', 'Sinclaire', 'Rourke', '1977-05-16', 'css77', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (78, '8571746', 'Sinclaire', 'Ced', '2020-10-01', 'css78', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (79, '7076470', 'McIlhatton', 'Trev', '1958-09-04', 'css79', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (80, '5412420', 'Enns', 'Gage', '1946-01-01', 'css80', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (81, '2566702', 'Harriagn', 'Dallon', '1986-12-04', 'css81', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (82, '5253464', 'MacAndie', 'Trev', '1935-02-07', 'css82', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (83, '1126941', 'Di Franceshci', 'Harris', '1965-09-25', 'css83', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (84, '513070', 'Vader', 'Standford', '1950-01-30', 'css84', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (85, '7278317', 'Harriagn', 'Deane', '2010-04-04', 'css85', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (86, '5601554', 'Orsi', 'Geoff', '1937-10-27', 'css86', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (87, '6958219', 'Castagneto', 'Boy', '1982-04-06', 'css87', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (88, '4209784', 'Niset', 'Bartholomew', '1958-03-10', 'css88', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (89, '7873436', 'Enns', 'Gibby', '2009-04-19', 'css89', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (90, '8332706', 'Chell', 'Victor', '1930-07-20', 'css90', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (91, '7017821', 'Boyington', 'Anson', '1974-07-13', 'css91', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (92, '6400381', 'Cockhill', 'Gibby', '1951-10-10', 'css92', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (93, '8233273', 'Shrubsall', 'Mylo', '2021-01-27', 'css93', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (94, '8632878', 'Boyington', 'Theo', '1932-07-05', 'css94', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (95, '4913718', 'Ridges', 'Geoff', '1974-12-22', 'css95', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (96, '7663608', 'Insoll', 'Anson', '2012-11-09', 'css96', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (97, '5118748', 'Ducket', 'Toiboid', '2007-11-16', 'css97', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (98, '8424923', 'Kleingrub', 'Waldon', '1955-01-22', 'css98', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (99, '9540901', 'Ivanyushin', 'Rourke', '2001-01-02', 'css99', 'Masculino');
INSERT INTO PACIENTE (id, dni, apellido, nombre, fecha_nacimiento, numero_seguridad_social, sexo) VALUES (100, '1549643', 'Gianuzzi', 'Victor', '1947-03-04', 'css100', 'Masculino');
--REGISTROS PARA HISTORIAL CLINICO


INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (1, 1, 'hcp1');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (2, 2, 'hcp2');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (3, 3, 'hcp3');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (4, 4, 'hcp4');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (5, 5, 'hcp5');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (6, 6, 'hcp6');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (7, 7, 'hcp7');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (8, 8, 'hcp8');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (9, 9, 'hcp9');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (10, 10, 'hcp10');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (11, 11, 'hcp11');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (12, 12, 'hcp12');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (13, 13, 'hcp13');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (14, 14, 'hcp14');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (15, 15, 'hcp15');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (16, 16, 'hcp16');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (17, 17, 'hcp17');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (18, 18, 'hcp18');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (19, 19, 'hcp19');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (20, 20, 'hcp20');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (21, 21, 'hcp21');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (22, 22, 'hcp22');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (23, 23, 'hcp23');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (24, 24, 'hcp24');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (25, 25, 'hcp25');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (26, 26, 'hcp26');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (27, 27, 'hcp27');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (28, 28, 'hcp28');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (29, 29, 'hcp29');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (30, 30, 'hcp30');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (31, 31, 'hcp31');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (32, 32, 'hcp32');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (33, 33, 'hcp33');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (34, 34, 'hcp34');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (35, 35, 'hcp35');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (36, 36, 'hcp36');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (37, 37, 'hcp37');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (38, 38, 'hcp38');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (39, 39, 'hcp39');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (40, 40, 'hcp40');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (41, 41, 'hcp41');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (42, 42, 'hcp42');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (43, 43, 'hcp43');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (44, 44, 'hcp44');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (45, 45, 'hcp45');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (46, 46, 'hcp46');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (47, 47, 'hcp47');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (48, 48, 'hcp48');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (49, 49, 'hcp49');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (50, 50, 'hcp50');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (51, 51, 'hcp51');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (52, 52, 'hcp52');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (53, 53, 'hcp53');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (54, 54, 'hcp54');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (55, 55, 'hcp55');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (56, 56, 'hcp56');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (57, 57, 'hcp57');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (58, 58, 'hcp58');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (59, 59, 'hcp59');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (60, 60, 'hcp60');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (61, 61, 'hcp61');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (62, 62, 'hcp62');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (63, 63, 'hcp63');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (64, 64, 'hcp64');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (65, 65, 'hcp65');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (66, 66, 'hcp66');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (67, 67, 'hcp67');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (68, 68, 'hcp68');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (69, 69, 'hcp69');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (70, 70, 'hcp70');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (71, 71, 'hcp71');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (72, 72, 'hcp72');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (73, 73, 'hcp73');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (74, 74, 'hcp74');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (75, 75, 'hcp75');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (76, 76, 'hcp76');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (77, 77, 'hcp77');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (78, 78, 'hcp78');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (79, 79, 'hcp79');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (80, 80, 'hcp80');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (81, 81, 'hcp81');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (82, 82, 'hcp82');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (83, 83, 'hcp83');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (84, 84, 'hcp84');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (85, 85, 'hcp85');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (86, 86, 'hcp86');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (87, 87, 'hcp87');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (88, 88, 'hcp88');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (89, 89, 'hcp89');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (90, 90, 'hcp90');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (91, 91, 'hcp91');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (92, 92, 'hcp92');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (93, 93, 'hcp93');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (94, 94, 'hcp94');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (95, 95, 'hcp95');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (96, 96, 'hcp96');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (97, 97, 'hcp97');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (98, 98, 'hcp98');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (99, 99, 'hcp99');
INSERT INTO HISTORIAL_CLINICO (id, paciente_id, codigo) VALUES (100, 100, 'hcp100');
GO
CREATE OR ALTER PROCEDURE pro_addMedicos (@cant INT)
AS
BEGIN
    DECLARE @n INT;
    DECLARE @FromDate DATE = '1960-01-01'; 
    DECLARE @ToDate DATE = '1995-12-31';   
    DECLARE @FirstName VARCHAR(100);
    DECLARE @LastName VARCHAR(100);
    DECLARE @Birthdate DATE;

	DECLARE @FirstNames TABLE (Name VARCHAR(20));
    DECLARE @LastNames TABLE (Name VARCHAR(20));

    -- Insert tablas temporales
    INSERT INTO @FirstNames (Name) VALUES 
        ('Harold'), ('Darwin'), ('Melanie'), ('Deisy'), ('Natalia'),('Luis'),('Evo'),
        ('Pedro'), ('Jorge'), ('Elena'), ('Laura'), ('Fernando'),('Mamen'),('Claudina'),('Shakira');

    INSERT INTO @LastNames (Name) VALUES 
        ('Garcia'), ('Rodriguez'), ('Arce'), ('Martinez'), ('Perez'), ('Choque'),('Mbappe'),
        ('Gonzalez'), ('Fernandez'), ('Ramirez'), ('Catacora'),('Morales'),('Flores');--xd

    SET @n = 1;
    WHILE @n <= @cant
    BEGIN
        SELECT TOP 1 @FirstName = Name FROM @FirstNames ORDER BY NEWID();
        SELECT TOP 1 @LastName = Name FROM @LastNames ORDER BY NEWID();
        SET @Birthdate = DATEADD(DAY, 
            RAND(CHECKSUM(NEWID())) * (1 + DATEDIFF(DAY, @FromDate, @ToDate)), 
            @FromDate);
        INSERT INTO MEDICO (id, dni, nombre, apellido, fecha_nacimiento)
        VALUES (@n, 'DNI' + CAST(@n AS VARCHAR(20)), @FirstName, @LastName, @Birthdate);
        SET @n = @n + 1;
    END
END


GO
GO
EXEC pro_addMedicos 60;
GO

--DELETE FROM HOSPITAL

INSERT INTO HOSPITAL (id, cod, nombre, ciudad, telefono, direccion, medico_id) 
VALUES 
(1, 'HOSP01', 'Hospital San Juan De Dios', 'Santa Cruz', '555-1111', 'Calle 123', 1),
(2, 'HOSP02', 'Hospital de Niños Dr. Mario Ortíz Suárez', 'Santa Cruz', '555-2222', 'Calle 456', 2),
(3, 'HOSP03', 'Caja Petrolera de Salud Hospital Santa Cruz', 'Santa Cruz', '555-3333', 'Calle 789', 3),
(4, 'HOSP04', 'Hospital materno infantil caja nacional de salud', 'Santa Cruz', '555-6666', 'Calle 303', 4),
(5, 'HOSP05', 'Hospital Universitario Martín Dockweiler', 'Santa Cruz', '555-7777', 'Calle 404', 5),
(6, 'HOSP06', 'Hospital Japonés', 'Santa Cruz', '555-8888', 'Calle 505', 6),
(7, 'HOSP07', 'Hospital Cochabamba', 'Cochabamba', '555-9999', 'Calle 606', 7),
(8, 'HOSP08', 'Hospital del Norte', 'Cochabamba', '555-0000', 'Calle 707', 8),
(9, 'HOSP09', 'Hospital Elizabeth Seton', 'Cochabamba', '555-6666', 'Calle 303', 9),
(10, 'HOSP10', 'Hospital Universitario Nuestra Señora de La Paz', 'La Paz', '555-7777', 'Calle 404', 10),
(11, 'HOSP11', 'HOSPITAL DE EL ALTO SUR', 'La Paz', '555-8888', 'Calle 505', 11),
(12, 'HOSP12', 'Hospital Municipal La Merced', 'La Paz', '555-9999', 'Calle 606', 12),
(13, 'HOSP13', 'Hospital Trinidad', 'Beni', '555-0000', 'Calle 707', 13);


INSERT INTO SERVICIO (id, nombre, comentario) 
VALUES
(1, 'Consulta General', 'Atención médica general.'),
(2, 'Pediatría', 'Atención médica para niños.'),
(3, 'Ginecología', 'Atención médica para mujeres.'),
(4, 'Cardiología', 'Especialidad del corazón y sistema circulatorio.'),
(5, 'Dermatología', 'Atención de problemas en la piel.'),
(6, 'Neurología', 'Atención para el sistema nervioso.'),
(7, 'Traumatología', 'Especialidad en lesiones musculares y óseas.'),
(8, 'Psiquiatría', 'Tratamiento de enfermedades mentales.'),
(9, 'Odontología', 'Atención y cuidado de los dientes.'),
(10, 'Oftalmología', 'Cuidado y tratamiento de los ojos.'),
(11, 'Oncología', 'Tratamiento para el cáncer.'),
(12, 'Urología', 'Atención del sistema urinario.'),
(13, 'Endocrinología', 'Especialidad en glándulas y hormonas.'),
(14, 'Neonatología', 'Atención de bebés recién nacidos.'),
(15, 'Gastroenterología', 'Especialidad en el sistema digestivo.'),
(16, 'Reumatología', 'Tratamiento de enfermedades reumáticas.'),
(17, 'Cirugía General', 'Operaciones quirúrgicas generales.'),
(18, 'Nefrología', 'Atención para enfermedades renales.'),
(19, 'Neumología', 'Atención para enfermedades del pulmón.'),
(20, 'Fisioterapia', 'Rehabilitación y terapias físicas.');




INSERT INTO HOSPITAL_SERVICIO (id, total_camas, total_camas_libres, servicio_id, hospital_id) 
VALUES
(1, 34, 20, 1, 1),
(2, 50, 15, 2, 1),
(3, 25, 25, 3, 1),
(4, 50, 30, 4, 1),
(5, 60, 30, 5, 2),
(6, 20, 15, 6, 2),
(7, 60, 20, 7, 2),
(8, 60, 35, 8, 2),
(9, 10, 10, 9, 3),
(10, 70, 35, 10, 3),
(11, 70, 30, 11, 3),
(12, 70, 45, 12, 3),
(13, 65, 30, 13, 4),
(14, 65, 25, 14, 4),
(15, 65, 20, 15, 4),
(16, 65, 35, 16, 4),
(17, 55, 25, 17, 5),
(18, 55, 20, 18, 5),
(19, 55, 15, 19, 5),
(20, 55, 30, 20, 5),
(21, 40, 20, 1, 6),
(22, 70, 35, 2, 6),
(23, 70, 30, 3, 6),
(24, 70, 45, 4, 6),
(25, 50, 25, 5, 7),
(26, 50, 20, 6, 7),
(27, 50, 15, 7, 7),
(28, 50, 30, 8, 7),
(29, 8, 5, 9, 8),
(30, 65, 30, 10, 8),
(31, 65, 25, 11, 8),
(32, 65, 40, 12, 8),
(33, 60, 30, 13, 9),
(34, 63, 25, 14, 9),
(35, 60, 20, 15, 9),
(36, 60, 35, 16, 9),
(37, 70, 35, 17, 10),
(38, 70, 30, 18, 10),
(39, 70, 25, 19, 10),
(40, 70, 40, 20, 10),
(41, 55, 25, 1, 11),
(42, 43, 20, 2, 11),
(43, 55, 15, 3, 11),
(44, 55, 30, 4, 11),
(45, 45, 20, 5, 12),
(46, 45, 15, 6, 12),
(47, 45, 10, 7, 12),
(48, 45, 25, 8, 12),
(49, 12, 12, 9, 13),
(50, 65, 25, 10, 13),
(51, 65, 20, 11, 13),
(52, 65, 35, 12, 13);




INSERT INTO MEDICO_HOSPITAL_SERVICIO (id, hospital_servicio_id, medico_id) 
VALUES
(1, 1, 1), 
(3, 2, 3),
(4, 3, 4),
(5, 4, 5),
(6, 5, 6),
(7, 5, 7), 
(8, 6, 8),
(9, 7, 9),
(10, 8, 10),
(11, 9, 11),
(12, 10, 12),
(13, 10, 13), 
(14, 11, 14),
(15, 12, 15),
(16, 13, 16),
(17, 13, 17), 
(18, 14, 18),
(19, 15, 19),
(20, 16, 20),
(21, 17, 21),
(22, 18, 22),
(24, 19, 24),
(25, 20, 25),
(26, 21, 26),
(28, 22, 28),
(29, 23, 29),
(30, 24, 30),
(31, 25, 31),
(32, 26, 32),
(33, 27, 33),
(34, 28, 34),
(35, 29, 35),
(36, 30, 36),
(37, 31, 37),
(39, 32, 39),
(40, 33, 40),
(41, 34, 41),
(42, 35, 42),
(43, 36, 43),
(44, 37, 44),
(45, 38, 45),
(46, 39, 46),
(47, 40, 47),
(48, 41, 48),
(49, 42, 49),
(50, 43, 50), 
(51, 45, 2),
(52, 46, 23),
(53, 47, 27),
(54, 48, 38),
(55, 49, 35),
(56, 50, 12),
(57, 51, 14),
(58, 52, 15),
(59, 44, 30),
(60, 44, 5);

INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (1, '2024-06-02', 'Trastorno de Estrés Postraumático', 'Terapia nutricional y psicológica', '2024-06-13', '2024-06-22', 7, 10, 5);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (2, '2024-04-18', 'Enfermedad Valvular Cardíaca', 'Anti-inflamatorios y reposo', '2024-04-30', '2024-05-09', 12, 59, 56);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (3, '2023-06-28', 'Ojo Seco', 'Inyecciones oculares', '2023-07-04', '2023-07-08', 18, 56, 23);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (4, '2023-11-02', 'Vejiga Hiperactiva', 'Cirugía de nefrectomía', '2023-11-07', '2023-11-16', 10, 15, 70);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (5, '2024-01-08', 'Fatiga Crónica', 'Antiinflamatorios y reposo', '2024-01-15', '2024-01-22', 17, 26, 47);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (6, '2023-12-30', 'Menorragia', 'Tratamiento con crioterapia o láser', '2024-01-06', '2024-01-11', 2, 4, 40);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (7, '2023-01-12', 'Miopía', 'Lágrimas artificiales', '2023-01-23', '2023-02-02', 6, 12, 12);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (8, '2023-03-24', 'Cáncer de Pulmón', 'Cirugía laparoscópica', '2023-04-03', '2023-04-15', 4, 14, 8);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (9, '2024-04-09', 'Diabetes Mellitus Tipo 2', 'Cirugía y radioterapia', '2024-04-16', '2024-04-22', 18, 40, 72);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (10, '2023-04-18', 'Glaucoma', 'Lentes de contacto rígidos', '2023-04-25', '2023-05-03', 7, 56, 83);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (11, '2024-01-13', 'Hernia de Disco', 'Inmovilización y fisioterapia', '2024-01-14', '2024-01-26', 9, 53, 96);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (12, '2023-05-20', 'Trastorno de Pánico', 'Psicoterapia y medicación', '2023-06-02', '2023-06-03', 15, 54, 5);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (13, '2023-08-05', 'Cáncer de Colon', 'Radioterapia', '2023-08-15', '2023-08-18', 4, 37, 67);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (14, '2023-12-26', 'Esclerosis Lateral Amiotrófica', 'Plasmaféresis o inmunoglobulina', '2024-01-03', '2024-01-14', 12, 32, 29);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (15, '2023-01-20', 'Cálculos Biliares', 'Antibióticos y protectores gástricos', '2023-01-21', '2023-01-26', 34, 19, 89);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (16, '2024-03-03', 'Reflujo Gastroesofágico', 'Broncodilatadores', '2024-03-12', '2024-03-14', 10, 49, 67);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (17, '2023-03-17', 'Gripe Común', 'Cambio en estilo de vida y suplementación vitamínica', '2023-03-24', '2023-04-04', 6, 1, 89);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (18, '2023-01-28', 'Osteopenia', 'Levotiroxina', '2023-02-01', '2023-02-12', 7, 40, 63);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (19, '2024-06-25', 'Conjuntivitis', 'Lentes correctivos', '2024-06-28', '2024-07-08', 22, 36, 55);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (20, '2023-06-27', 'Urticaria', 'Cremas despigmentantes', '2023-06-29', '2023-07-12', 25, 51, 3);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (21, '2023-04-27', 'Bruxismo', 'Cirugía periodontal', '2023-05-06', '2023-05-15', 3, 35, 93);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (22, '2023-04-08', 'Cáncer de Colon', 'Colecistectomía', '2023-04-17', '2023-04-29', 4, 44, 98);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (23, '2024-02-07', 'Absceso Dental', 'Pasta desensibilizante', '2024-02-08', '2024-02-12', 3, 35, 50);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (24, '2024-04-24', 'Tendinitis de Manguito Rotador', 'Terapia física y antiinflamatorios', '2024-04-29', '2024-05-06', 39, 9, 85);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (25, '2023-10-17', 'Trastorno de Pánico', 'Antipsicóticos', '2023-10-21', '2023-10-30', 13, 34, 27);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (26, '2023-05-31', 'Osteopenia', 'Modificación del estilo de vida', '2023-06-07', '2023-06-19', 23, 16, 59);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (27, '2023-10-20', 'Pericarditis', 'Angioplastia', '2023-10-22', '2023-10-27', 24, 60, 8);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (28, '2024-04-29', 'Diabetes Mellitus Tipo 1', 'Octreótido', '2024-04-29', '2024-05-01', 5, 17, 78);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (29, '2023-08-03', 'Menorragia', 'Tratamientos hormonales', '2023-08-08', '2023-08-15', 21, 4, 94);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (30, '2023-01-26', 'Trombosis Pulmonar', 'Anticoagulantes', '2023-02-07', '2023-02-15', 40, 24, 90);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (31, '2023-11-17', 'Menorragia', 'Cirugía o medicación', '2023-11-23', '2023-12-06', 1, 4, 28);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (32, '2024-06-29', 'Cáncer de Cérvix', 'Cirugía laparoscópica', '2024-07-02', '2024-07-07', 19, 4, 5);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (33, '2023-06-18', 'Dermatitis Atópica', 'Cremas despigmentantes', '2023-06-22', '2023-07-06', 23, 6, 90);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (34, '2023-06-07', 'Escoliosis', 'Terapia con láser', '2023-06-11', '2023-06-15', 1, 47, 62);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (35, '2023-01-21', 'Ictericia Neonatal', 'Ventilación mecánica', '2023-01-25', '2023-01-31', 38, 18, 55);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (36, '2023-11-30', 'Enfermedad de Addison', 'Levotiroxina', '2023-12-09', '2023-12-11', 26, 17, 63);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (37, '2023-09-25', 'Hipertiroidismo', 'Antitiroideos', '2023-10-02', '2023-10-03', 20, 16, 81);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (38, '2023-08-02', 'Trastorno de Pánico', 'Antipsicóticos', '2023-08-04', '2023-08-14', 17, 54, 53);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (39, '2024-01-13', 'Hernia de Disco', 'Terapia con láser', '2024-01-24', '2024-02-06', 14, 25, 55);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (40, '2023-04-27', 'Esclerosis Múltiple', 'Antiepilépticos', '2023-04-30', '2023-05-06', 5, 8, 25);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (41, '2023-07-20', 'Hipermetropía', 'Lentes o cirugía refractiva', '2023-08-02', '2023-08-05', 33, 36, 11);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (42, '2023-06-24', 'Migraña', 'Analgésicos y antiepilépticos', '2023-07-02', '2023-07-15', 22, 52, 77);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (43, '2023-12-30', 'Osteoartritis', 'Antiinflamatorios no esteroides (AINEs)', '2024-01-09', '2024-01-21', 30, 20, 63);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (44, '2024-04-16', 'Trastorno Bipolar', 'Antipsicóticos', '2024-04-28', '2024-05-05', 21, 10, 60);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (45, '2024-05-02', 'Varicela', 'Ejercicio y dieta saludable', '2024-05-14', '2024-05-16', 19, 28, 42);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (46, '2024-03-19', 'Maloclusión', 'Pasta desensibilizante', '2024-03-21', '2024-03-25', 4, 55, 94);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (47, '2023-07-20', 'Cáncer de Estómago', 'Radioterapia', '2023-07-31', '2023-08-11', 27, 37, 89);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (48, '2023-04-10', 'Bronquiolitis', 'Broncodilatadores', '2023-04-11', '2023-04-19', 4, 28, 74);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (49, '2024-05-10', 'Obesidad Infantil', 'Medicamento para reducir el ácido', '2024-05-18', '2024-05-20', 12, 3, 86);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (50, '2023-02-03', 'Vejiga Hiperactiva', 'Inhibidores de la PDE-5', '2023-02-14', '2023-02-16', 24, 15, 30);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (51, '2024-02-18', 'Nefropatía Diabética', 'Corticosteroides', '2024-02-28', '2024-03-02', 34, 45, 31);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (52, '2023-03-22', 'Desgaste del Esmalte', 'Drenaje y antibióticos', '2023-03-23', '2023-03-26', 3, 55, 14);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (53, '2023-08-25', 'Derrame Pleural', 'Oxigenoterapia', '2023-09-04', '2023-09-12', 40, 24, 87);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (54, '2023-01-16', 'Alergia Estacional', 'Cambio en estilo de vida y suplementación vitamínica', '2023-01-21', '2023-02-01', 7, 26, 17);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (55, '2024-01-23', 'Glomerulonefritis', 'Corticosteroides', '2024-01-25', '2024-01-26', 1, 45, 15);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (56, '2023-03-02', 'Menopausia', 'Anticonceptivos y dieta', '2023-03-15', '2023-03-16', 9, 29, 53);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (57, '2024-01-04', 'Osteopenia', 'Modificación del estilo de vida', '2024-01-04', '2024-01-07', 13, 40, 100);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (58, '2023-06-12', 'Cáncer de Mama', 'Tratamiento con anticuerpos monoclonales', '2023-06-15', '2023-06-17', 22, 57, 32);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (59, '2023-12-31', 'Dolor de Cabeza Tensional', 'Cambio en estilo de vida y suplementación vitamínica', '2024-01-06', '2024-01-10', 13, 26, 98);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (60, '2024-02-19', 'Asma', 'Corticoides', '2024-03-01', '2024-03-10', 44, 46, 86);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (61, '2023-12-22', 'Síndrome de Dificultad Respiratoria', 'Ventilación mecánica', '2023-12-29', '2024-01-08', 34, 41, 76);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (62, '2023-01-13', 'Astigmatismo', 'Inyecciones oculares', '2023-01-24', '2023-02-04', 4, 12, 55);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (63, '2023-07-31', 'Melanoma', 'Cremas antibacterianas y antiinflamatorias', '2023-08-11', '2023-08-22', 4, 7, 81);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (64, '2024-01-15', 'Esclerosis Múltiple', 'Analgésicos y antiepilépticos', '2024-01-18', '2024-01-23', 4, 8, 89);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (65, '2024-04-08', 'Hernia Umbilical', 'Descompresión intestinal y cirugía', '2024-04-20', '2024-04-30', 26, 21, 55);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (66, '2024-01-27', 'Osteoporosis', 'Cirugía descompresiva', '2024-02-05', '2024-02-19', 34, 53, 26);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (67, '2024-03-21', 'Resfriado Común', 'Antibióticos', '2024-04-01', '2024-04-15', 12, 26, 77);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (68, '2024-05-11', 'Urticaria', 'Fototerapia', '2024-05-22', '2024-06-02', 24, 51, 9);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (69, '2023-03-03', 'Sepsis Neonatal', 'Tratamiento neuroprotector', '2023-03-12', '2023-03-19', 7, 41, 49);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (70, '2024-04-20', 'Depresión Mayor', 'Terapia cognitivo-conductual', '2024-04-30', '2024-05-01', 3, 10, 93);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (71, '2024-02-26', 'Esguince de Tobillo', 'Terapia con láser', '2024-03-02', '2024-03-16', 16, 47, 90);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (72, '2024-05-25', 'Derrame Pleural', 'Oxigenoterapia', '2024-06-02', '2024-06-12', 2, 46, 88);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (73, '2024-01-20', 'Artritis Reumatoide', 'Reducción y rehabilitación', '2024-01-22', '2024-02-05', 19, 53, 24);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (74, '2023-09-29', 'Dermatitis del Pañal', 'Terapia conductual y medicamentos', '2023-10-04', '2023-10-05', 35, 3, 84);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (75, '2024-02-04', 'Cáncer de Mama', 'Inmunoterapia', '2024-02-06', '2024-02-13', 8, 37, 86);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (76, '2023-02-14', 'Absceso Abdominal', 'Cirugía laparoscópica de emergencia', '2023-02-19', '2023-02-21', 6, 21, 50);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (77, '2023-12-30', 'Tendinitis de Manguito Rotador', 'Inmovilización y fisioterapia', '2023-12-30', '2024-01-08', 17, 33, 34);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (78, '2024-01-04', 'Enfermedad de Crohn', 'Cirugía laparoscópica', '2024-01-04', '2024-01-14', 7, 42, 55);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (79, '2024-05-16', 'Hipermetropía', 'Lágrimas artificiales', '2024-05-20', '2024-05-26', 25, 13, 35);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (80, '2024-04-19', 'Alopecia Areata', 'Cirugía, radioterapia o quimioterapia', '2024-04-29', '2024-05-03', 11, 31, 78);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (81, '2023-02-13', 'Fobia Social', 'Terapia cognitivo-conductual', '2023-02-21', '2023-02-27', 2, 10, 80);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (82, '2023-11-07', 'Gingivitis', 'Obturación Dental', '2023-11-07', '2023-11-15', 11, 55, 67);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (83, '2023-07-25', 'Endometriosis', 'Tratamientos hormonales', '2023-08-04', '2023-08-07', 12, 4, 85);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (84, '2023-04-11', 'Maloclusión', 'Pasta desensibilizante', '2023-04-12', '2023-04-24', 4, 11, 41);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (85, '2024-06-20', 'Acromegalia', 'Cirugía y radioterapia', '2024-06-29', '2024-07-11', 18, 40, 39);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (86, '2023-06-20', 'Trastorno Bipolar', 'Antipsicóticos', '2023-07-03', '2023-07-11', 3, 54, 28);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (87, '2023-09-18', 'Hipertiroidismo', 'Terapia de reemplazo hormonal', '2023-09-28', '2023-10-09', 11, 16, 61);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (88, '2024-03-20', 'Varicela', 'Oxigenoterapia y líquidos', '2024-03-25', '2024-04-01', 33, 28, 99);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (89, '2024-05-08', 'Bruxismo', 'Aplicación de flúor', '2024-05-14', '2024-05-27', 1, 11, 25);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (90, '2023-08-21', 'Asma Infantil', 'Dieta controlada y probióticos', '2023-08-29', '2023-09-08', 27, 28, 91);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (91, '2023-08-23', 'Melanoma', 'Antihistamínicos y cremas', '2023-08-25', '2023-09-03', 12, 7, 10);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (92, '2024-05-02', 'Alopecia Areata', 'Antifúngicos tópicos', '2024-05-13', '2024-05-27', 17, 51, 5);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (93, '2023-07-21', 'Déficit de Atención e Hiperactividad (TDAH)', 'Antibióticos y analgésicos', '2023-07-30', '2023-08-06', 21, 3, 32);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (94, '2023-11-11', 'Esclerodermia', 'Antiinflamatorios no esteroides (AINEs)', '2023-11-15', '2023-11-23', 7, 43, 81);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (95, '2024-05-12', 'Otitis Media Aguda', 'Antibióticos y analgésicos', '2024-05-14', '2024-05-24', 11, 28, 41);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (96, '2023-08-11', 'Síndrome de Túnel Carpiano', 'Electroterapia', '2023-08-16', '2023-08-27', 9, 25, 13);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (97, '2024-01-31', 'Hipertensión', 'Antibióticos', '2024-01-31', '2024-02-05', 1, 26, 87);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (98, '2023-06-09', 'Resfriado Común', 'Rehidratación y dieta blanda', '2023-06-12', '2023-06-14', 24, 48, 50);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (99, '2024-03-19', 'Apnea del Sueño', 'Broncodilatadores', '2024-03-19', '2024-03-30', 31, 46, 41);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (100, '2023-06-16', 'Infección Renal', 'Monitoreo y control', '2023-06-27', '2023-07-04', 23, 22, 13);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (101, '2023-09-18', 'Hipermetropía', 'Lentes de contacto rígidos', '2023-09-18', '2023-09-25', 10, 12, 93);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (102, '2023-01-17', 'Infarto Agudo de Miocardio', 'Medicación para insuficiencia cardíaca', '2023-01-27', '2023-01-29', 5, 59, 86);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (103, '2023-07-10', 'Depresión Mayor', 'Terapia dialéctico-conductual', '2023-07-20', '2023-07-22', 9, 34, 28);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (104, '2023-09-18', 'Caries Dental', 'Extracción quirúrgica', '2023-09-19', '2023-09-26', 6, 11, 87);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (105, '2024-02-15', 'Síndrome Metabólico', 'Cirugía y radioterapia', '2024-02-28', '2024-03-11', 5, 16, 78);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (106, '2023-07-12', 'Síndrome de Cushing', 'Suplementos de calcio y vitamina D', '2023-07-15', '2023-07-26', 30, 17, 32);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (107, '2024-05-19', 'Colitis Ulcerosa', 'Inhibidores de la bomba de protones', '2024-05-23', '2024-06-02', 13, 19, 63);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (108, '2023-02-08', 'Osteopenia', 'Suplementos de calcio y vitamina D', '2023-02-09', '2023-02-10', 28, 40, 56);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (109, '2023-11-09', 'Absceso Dental', 'Aplicación de flúor', '2023-11-12', '2023-11-26', 1, 55, 46);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (110, '2023-08-18', 'Cáncer de Pulmón', 'Cirugía laparoscópica', '2023-08-22', '2023-08-28', 6, 57, 40);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (111, '2023-02-27', 'Leucemia', 'Inmunoterapia', '2023-02-28', '2023-03-12', 2, 37, 12);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (112, '2023-09-10', 'Prostatitis', 'Litotricia extracorpórea', '2023-09-23', '2023-10-01', 2, 39, 80);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (113, '2023-10-31', 'Dermatitis Atópica', 'Tratamientos tópicos con peróxido de benzoilo', '2023-11-11', '2023-11-21', 13, 31, 51);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (114, '2024-02-17', 'Absceso Abdominal', 'Drenaje quirúrgico', '2024-02-27', '2024-03-07', 29, 21, 35);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (115, '2023-02-19', 'Cáncer de Estómago', 'Cirugía de resección', '2023-02-21', '2023-03-07', 25, 37, 62);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (116, '2023-05-24', 'Esclerosis Múltiple', 'Antiepilépticos', '2023-05-28', '2023-06-09', 2, 8, 92);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (117, '2023-05-28', 'Enfermedad de Parkinson', 'Riluzol y terapia ocupacional', '2023-06-07', '2023-06-19', 2, 8, 6);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (118, '2024-04-19', 'Fobia Social', 'Terapia dialéctico-conductual', '2024-04-26', '2024-05-06', 14, 34, 92);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (119, '2023-01-24', 'Trombosis Pulmonar', 'Terapia trombolítica', '2023-02-02', '2023-02-08', 14, 46, 50);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (120, '2024-01-22', 'Glomerulonefritis', 'Corticosteroides', '2024-01-30', '2024-01-31', 12, 22, 73);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (121, '2023-10-23', 'Rosácea', 'Cremas despigmentantes', '2023-10-31', '2023-11-06', 7, 51, 74);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (122, '2024-04-02', 'Obstrucción Intestinal', 'Antibióticos y resección intestinal', '2024-04-11', '2024-04-15', 30, 21, 26);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (123, '2023-10-25', 'Obstrucción Intestinal', 'Colecistectomía', '2023-11-06', '2023-11-17', 1, 44, 40);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (124, '2023-03-08', 'Trastorno Bipolar', 'Terapia nutricional y psicológica', '2023-03-10', '2023-03-13', 1, 34, 20);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (125, '2023-02-20', 'Embarazo Ectópico', 'Tratamiento con crioterapia o láser', '2023-03-04', '2023-03-09', 28, 29, 64);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (126, '2023-03-04', 'Disfunción Eréctil', 'Litotricia extracorpórea', '2023-03-14', '2023-03-21', 16, 15, 9);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (127, '2023-09-19', 'Dermatitis del Pañal', 'Antibióticos', '2023-09-22', '2023-09-27', 17, 49, 70);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (128, '2023-07-19', 'Reflujo Gastroesofágico', 'Terapia antiviral y seguimiento médico', '2023-07-28', '2023-08-04', 32, 42, 23);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (129, '2023-03-21', 'Hiperplasia Benigna de Próstata', 'Litotricia extracorpórea', '2023-03-27', '2023-03-30', 28, 58, 99);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (130, '2023-05-04', 'Síndrome de Túnel Carpiano', 'Terapia con láser', '2023-05-07', '2023-05-11', 3, 25, 19);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (131, '2023-06-08', 'Absceso Abdominal', 'Reparación de hernia', '2023-06-08', '2023-06-12', 24, 44, 87);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (132, '2023-09-17', 'Hipotiroidismo', 'Levotiroxina', '2023-09-27', '2023-10-10', 28, 40, 51);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (133, '2024-06-03', 'Dolor de Cabeza Tensional', 'Cambio en estilo de vida y suplementación vitamínica', '2024-06-05', '2024-06-16', 14, 48, 74);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (134, '2023-06-24', 'Conjuntivitis', 'Lentes correctivos', '2023-07-03', '2023-07-13', 22, 56, 81);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (135, '2024-02-25', 'Aterosclerosis', 'Medicamentos diuréticos y cambios en el estilo de vida', '2024-02-25', '2024-03-04', 23, 30, 89);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (136, '2024-02-15', 'Luxación de Hombro', 'Cirugía descompresiva', '2024-02-25', '2024-03-03', 13, 53, 89);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (137, '2023-03-21', 'Síndrome del Túnel Carpiano', 'Terapia física y antiinflamatorios', '2023-03-24', '2023-03-31', 11, 53, 27);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (138, '2024-03-10', 'Accidente Cerebrovascular', 'Antimigrañosos', '2024-03-19', '2024-03-29', 3, 8, 28);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (139, '2024-03-24', 'Miomas Uterinos', 'Cirugía o medicación', '2024-03-31', '2024-04-01', 7, 50, 9);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (140, '2023-11-15', 'Diabetes Mellitus Tipo 1', 'Metformina', '2023-11-15', '2023-11-17', 13, 17, 72);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (141, '2023-05-01', 'Otitis Media Aguda', 'Antibióticos', '2023-05-03', '2023-05-10', 2, 3, 61);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (142, '2023-11-08', 'Hipertensión Renovascular', 'Inmunosupresores', '2023-11-16', '2023-11-30', 6, 22, 5);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (143, '2023-05-09', 'Artritis Reumatoide', 'Antiinflamatorios no esteroides (AINEs)', '2023-05-13', '2023-05-15', 9, 43, 18);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (144, '2023-02-20', 'Esguince de Tobillo', 'Terapia física y antiinflamatorios', '2023-02-22', '2023-02-28', 20, 33, 5);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (145, '2023-12-07', 'Trastorno Bipolar', 'Estabilizadores del ánimo', '2023-12-15', '2023-12-25', 5, 54, 100);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (146, '2023-11-12', 'Cáncer de Pulmón', 'Inmunoterapia', '2023-11-14', '2023-11-18', 37, 37, 51);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (147, '2024-05-10', 'Hernia de Disco', 'Reducción y rehabilitación', '2024-05-23', '2024-05-27', 14, 53, 40);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (148, '2023-06-01', 'Maloclusión', 'Drenaje y antibióticos', '2023-06-02', '2023-06-11', 1, 11, 34);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (149, '2023-02-05', 'Hipertensión', 'Antiinflamatorios y reposo', '2023-02-16', '2023-02-21', 12, 1, 33);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (150, '2023-09-19', 'Hiperplasia Benigna de Próstata', 'Antibióticos', '2023-09-25', '2023-10-03', 22, 58, 86);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (151, '2024-05-01', 'Bursitis', 'Rehabilitación muscular', '2024-05-06', '2024-05-11', 32, 33, 64);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (152, '2023-09-05', 'Anemia Neonatal', 'Drenaje y tratamiento de complicaciones', '2023-09-10', '2023-09-11', 19, 18, 8);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (153, '2023-11-18', 'Déficit de Atención e Hiperactividad (TDAH)', 'Antibióticos', '2023-11-30', '2023-12-01', 15, 3, 19);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (154, '2023-10-07', 'Esclerodermia', 'Sustitutos de lágrimas y AINEs', '2023-10-09', '2023-10-19', 13, 20, 64);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (155, '2024-01-18', 'Vasculitis', 'Sustitutos de lágrimas y AINEs', '2024-01-20', '2024-01-26', 21, 43, 11);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (156, '2024-04-19', 'Obstrucción Intestinal', 'Apendicectomía', '2024-04-29', '2024-05-08', 11, 21, 51);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (157, '2023-09-25', 'Vasculitis', 'Corticoides y antiinflamatorios', '2023-10-05', '2023-10-13', 17, 43, 96);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (158, '2024-07-01', 'Osteoporosis', 'Cirugía descompresiva', '2024-07-06', '2024-07-16', 23, 33, 54);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (159, '2023-06-25', 'Desprendimiento de Retina', 'Lentes de contacto rígidos', '2023-06-26', '2023-06-27', 13, 36, 56);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (160, '2023-01-04', 'Epilepsia', 'Plasmaféresis o inmunoglobulina', '2023-01-17', '2023-01-31', 2, 8, 2);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (161, '2023-04-24', 'Gastritis Crónica', 'Antibióticos y protectores gástricos', '2023-05-06', '2023-05-18', 39, 19, 38);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (162, '2023-11-29', 'Ojo Seco', 'Lágrimas artificiales', '2023-12-05', '2023-12-15', 4, 36, 4);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (163, '2023-09-17', 'Astigmatismo', 'Lágrimas artificiales', '2023-09-20', '2023-09-25', 30, 36, 83);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (164, '2023-04-04', 'Miopía', 'Lentes correctivos', '2023-04-10', '2023-04-21', 13, 13, 63);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (165, '2023-03-22', 'Conjuntivitis', 'Cirugía de retina', '2023-03-27', '2023-04-07', 12, 13, 46);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (166, '2023-08-05', 'Hipotiroidismo', 'Cirugía de extirpación', '2023-08-08', '2023-08-11', 24, 40, 25);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (167, '2024-01-06', 'Fibrosis Pulmonar', 'Oxigenoterapia', '2024-01-08', '2024-01-19', 9, 24, 55);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (168, '2023-05-18', 'Embarazo Ectópico', 'Cirugía laparoscópica', '2023-05-26', '2023-05-30', 25, 29, 15);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (169, '2023-03-09', 'Anemia Ferropénica', 'Control de la presión arterial con medicamentos', '2023-03-17', '2023-03-21', 11, 1, 39);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (170, '2023-11-21', 'Cáncer de Próstata', 'Antibióticos y analgésicos', '2023-11-24', '2023-11-25', 12, 39, 52);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (171, '2024-03-18', 'Osteopenia', 'Terapia de reemplazo hormonal', '2024-03-21', '2024-03-22', 8, 16, 99);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (172, '2024-01-29', 'Neumonía', 'CPAP', '2024-02-03', '2024-02-12', 16, 24, 95);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (173, '2023-08-05', 'Cataratas', 'Cirugía de Cataratas', '2023-08-10', '2023-08-21', 21, 12, 28);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (174, '2024-06-24', 'Cáncer de Hígado', 'Inmunoterapia', '2024-06-25', '2024-07-03', 12, 14, 76);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (175, '2024-06-22', 'Melanoma', 'Terapia fotodinámica', '2024-07-05', '2024-07-11', 30, 14, 72);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (176, '2023-06-02', 'Enfermedad Valvular Cardíaca', 'Marcapasos o antiarrítmicos', '2023-06-10', '2023-06-13', 22, 60, 43);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (177, '2024-03-26', 'Miomas Uterinos', 'Laparoscopia', '2024-03-30', '2024-04-03', 25, 4, 99);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (178, '2024-02-21', 'Pericarditis', 'Anti-inflamatorios y reposo', '2024-02-24', '2024-03-09', 6, 30, 74);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (179, '2023-07-09', 'Glaucoma', 'Lentes o cirugía refractiva', '2023-07-14', '2023-07-19', 20, 36, 95);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (180, '2023-11-12', 'Hipertensión Arterial', 'Cirugía de reemplazo valvular', '2023-11-15', '2023-11-24', 1, 60, 2);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (181, '2024-01-20', 'Queratocono', 'Lentes de contacto rígidos', '2024-01-29', '2024-01-31', 11, 36, 58);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (182, '2024-03-23', 'Faringitis Estreptocócica', 'Medicamento para reducir el ácido', '2024-03-27', '2024-03-31', 16, 3, 87);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (183, '2024-05-15', 'Glaucoma', 'Cirugía de retina', '2024-05-19', '2024-05-29', 31, 13, 82);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (184, '2024-02-27', 'Apnea del Sueño', 'Corticoides', '2024-02-27', '2024-03-07', 28, 24, 47);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (185, '2024-04-24', 'Hipertensión Renovascular', 'Monitoreo y control', '2024-04-28', '2024-05-04', 2, 22, 38);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (186, '2024-01-26', 'Alopecia Areata', 'Esteroides tópicos', '2024-01-29', '2024-01-30', 16, 6, 79);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (187, '2024-05-27', 'Trastorno Obsesivo-Compulsivo', 'Benzodiacepinas', '2024-05-29', '2024-06-09', 13, 34, 14);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (188, '2024-05-12', 'Feocromocitoma', 'Levotiroxina', '2024-05-13', '2024-05-24', 19, 17, 68);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (189, '2023-08-15', 'Esclerosis Múltiple', 'Inhibidores de la colinesterasa', '2023-08-20', '2023-08-30', 28, 52, 46);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (190, '2023-10-27', 'Cataratas', 'Lentes o cirugía refractiva', '2023-11-03', '2023-11-17', 34, 13, 36);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (191, '2023-09-25', 'Glaucoma', 'Gotas antibióticas', '2023-10-05', '2023-10-19', 19, 12, 74);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (192, '2023-02-20', 'Menopausia', 'Antifúngicos o antibióticos', '2023-02-22', '2023-03-06', 35, 29, 24);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (193, '2024-02-06', 'Cáncer de Hígado', 'Trasplante de médula ósea', '2024-02-07', '2024-02-16', 8, 57, 97);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (194, '2024-03-06', 'Miocardiopatía Dilatada', 'Antihipertensivos', '2024-03-08', '2024-03-09', 25, 30, 55);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (195, '2023-02-08', 'Infección Renal', 'Bicarbonato de sodio', '2023-02-21', '2023-03-03', 4, 45, 77);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (196, '2023-04-01', 'Esclerosis Lateral Amiotrófica', 'Control glucémico y analgésicos', '2023-04-03', '2023-04-11', 2, 8, 15);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (197, '2023-12-12', 'Migraña', 'Antiepilépticos', '2023-12-20', '2023-12-21', 5, 8, 72);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (198, '2023-09-14', 'Hernia Inguinal', 'Descompresión intestinal y cirugía', '2023-09-23', '2023-09-29', 21, 21, 38);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (199, '2024-04-05', 'Otitis Media Aguda', 'Medicamento para reducir el ácido', '2024-04-10', '2024-04-16', 14, 3, 57);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (200, '2023-07-05', 'Ojo Seco', 'Inyecciones oculares', '2023-07-15', '2023-07-22', 20, 36, 56);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (201, '2023-12-24', 'Glaucoma', 'Gotas o cirugía láser', '2024-01-01', '2024-01-15', 4, 12, 24);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (202, '2023-04-10', 'Faringitis Estreptocócica', 'Antibióticos y analgésicos', '2023-04-20', '2023-05-03', 5, 28, 86);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (203, '2023-12-12', 'Amenorrea', 'Tratamiento con crioterapia o láser', '2023-12-16', '2023-12-26', 22, 4, 37);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (204, '2023-09-01', 'Bruxismo', 'Ortodoncia', '2023-09-06', '2023-09-20', 1, 11, 47);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (205, '2023-02-17', 'Alzheimer', 'Control glucémico y analgésicos', '2023-02-26', '2023-02-27', 7, 32, 35);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (206, '2023-05-29', 'Nefritis Intersticial', 'Corticosteroides', '2023-06-04', '2023-06-09', 5, 22, 94);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (207, '2024-04-11', 'Feocromocitoma', 'Suplementos de calcio y vitamina D', '2024-04-23', '2024-05-02', 19, 40, 29);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (208, '2023-10-25', 'Fractura de Húmero', 'Terapia con láser', '2023-10-28', '2023-11-08', 9, 47, 48);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (209, '2023-08-27', 'Endometriosis', 'Antifúngicos o antibióticos', '2023-08-29', '2023-09-05', 18, 4, 7);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (210, '2024-02-08', 'Cirrosis Hepática', 'Terapia biológica', '2024-02-10', '2024-02-13', 37, 42, 68);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (211, '2024-02-22', 'Hipermetropía', 'Lentes de contacto rígidos', '2024-02-28', '2024-03-07', 7, 36, 6);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (212, '2024-05-15', 'Dermatitis Atópica', 'Tratamientos tópicos con peróxido de benzoilo', '2024-05-17', '2024-05-20', 13, 7, 96);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (213, '2024-04-01', 'Taquipnea Transitoria del Recién Nacido', 'Oxigenoterapia', '2024-04-06', '2024-04-09', 31, 18, 93);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (214, '2024-05-16', 'Trastorno de Pánico', 'Terapia nutricional y psicológica', '2024-05-22', '2024-05-31', 16, 54, 65);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (215, '2024-02-26', 'Trastorno de Estrés Postraumático', 'Terapia dialéctico-conductual', '2024-02-28', '2024-03-13', 20, 10, 84);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (216, '2024-02-09', 'Amenorrea', 'Cirugía o medicación', '2024-02-11', '2024-02-15', 6, 4, 5);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (217, '2024-06-08', 'Infarto Agudo de Miocardio', 'Marcapasos o antiarrítmicos', '2024-06-19', '2024-06-21', 7, 59, 97);

INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (218, '2023-04-17', 'Trastorno de Ansiedad Generalizada', 'Terapia dialéctico-conductual', '2023-04-29', '2023-05-01', 5, 10, 69);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (219, '2024-02-27', 'Esclerodermia', 'Inmunosupresores', '2024-02-27', '2024-03-06', 15, 20, 12);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (220, '2023-05-17', 'Infarto Agudo de Miocardio', 'Anticoagulantes', '2023-05-25', '2023-06-04', 19, 30, 89);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (221, '2024-06-24', 'Fibrosis Pulmonar', 'Broncodilatadores y terapia respiratoria', '2024-06-28', '2024-07-07', 31, 46, 92);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (222, '2023-01-13', 'Conjuntivitis', 'Cirugía de retina', '2023-01-24', '2023-02-04', 35, 12, 23);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (223, '2024-03-25', 'Angina de Pecho', 'Cirugía de reemplazo valvular', '2024-03-27', '2024-04-07', 1, 30, 26);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (224, '2023-09-09', 'Fractura de Fémur', 'Cirugía descompresiva', '2023-09-16', '2023-09-21', 14, 53, 50);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (225, '2023-12-17', 'Diabetes Mellitus Tipo 1', 'Levotiroxina', '2023-12-23', '2023-12-30', 31, 17, 45);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (226, '2023-08-26', 'Degeneración Macular', 'Cirugía de Cataratas', '2023-09-06', '2023-09-15', 3, 36, 71);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (227, '2023-08-14', 'Alergia Estacional', 'Antibióticos', '2023-08-22', '2023-08-30', 10, 48, 13);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (228, '2023-10-09', 'Síndrome de Ovario Poliquístico', 'Terapia hormonal o cambios en el estilo de vida', '2023-10-18', '2023-10-24', 4, 50, 48);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (229, '2023-11-16', 'Síndrome de Intestino Irritable', 'Antivirales', '2023-11-18', '2023-11-25', 43, 19, 67);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (230, '2023-05-08', 'Bronquiolitis', 'Cremas protectoras', '2023-05-10', '2023-05-16', 27, 28, 32);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (231, '2023-09-28', 'Infección por Hongos', 'Fototerapia', '2023-10-04', '2023-10-07', 9, 6, 63);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (232, '2023-04-04', 'Cáncer de Colon', 'Reparación quirúrgica', '2023-04-09', '2023-04-18', 24, 44, 58);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (233, '2023-12-07', 'Esclerodermia', 'Sustitutos de lágrimas y AINEs', '2023-12-08', '2023-12-18', 15, 20, 31);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (234, '2023-04-15', 'Dermatitis Atópica', 'Exfoliación suave', '2023-04-27', '2023-05-10', 12, 6, 57);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (235, '2024-01-20', 'Parálisis Facial', 'Rehabilitación funcional', '2024-02-02', '2024-02-03', 6, 47, 13);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (236, '2023-05-29', 'Colitis Ulcerosa', 'Terapia biológica', '2023-06-06', '2023-06-17', 25, 42, 18);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (237, '2024-03-09', 'Anemia Neonatal', 'Reanimación neonatal', '2024-03-10', '2024-03-20', 5, 41, 8);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (238, '2024-02-14', 'Hipertensión', 'Rehidratación y dieta blanda', '2024-02-27', '2024-02-28', 23, 48, 44);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (239, '2023-12-30', 'Sarcoma', 'Quimioterapia', '2024-01-11', '2024-01-15', 23, 37, 83);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (240, '2023-08-19', 'Angina de Pecho', 'Marcapasos o antiarrítmicos', '2023-08-29', '2023-09-05', 5, 60, 12);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (241, '2023-10-19', 'Dermatitis del Pañal', 'Broncodilatadores', '2023-10-26', '2023-10-31', 20, 28, 33);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (242, '2024-02-14', 'Esquizofrenia', 'Benzodiacepinas', '2024-02-15', '2024-02-28', 1, 54, 80);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (243, '2023-09-23', 'Gastritis Crónica', 'Cirugía laparoscópica', '2023-09-24', '2023-10-02', 23, 19, 14);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (244, '2023-04-21', 'Lesión de Menisco', 'Ejercicios de fortalecimiento', '2023-04-23', '2023-05-07', 2, 25, 72);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (245, '2024-01-06', 'Embarazo Ectópico', 'Terapia hormonal', '2024-01-14', '2024-01-20', 40, 29, 98);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (246, '2024-02-26', 'Desgaste del Esmalte', 'Férula dental', '2024-02-27', '2024-03-01', 1, 35, 60);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (247, '2024-02-15', 'Vitíligo', 'Cremas despigmentantes', '2024-02-24', '2024-02-29', 14, 7, 98);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (248, '2023-06-26', 'Tendinitis de Manguito Rotador', 'Rehabilitación muscular', '2023-06-28', '2023-07-06', 15, 9, 70);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (249, '2023-01-26', 'Disfunción Eréctil', 'Inhibidores de la PDE-5', '2023-01-31', '2023-02-07', 18, 58, 22);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (250, '2023-05-31', 'Cáncer de Pulmón', 'Oxigenoterapia', '2023-05-31', '2023-06-12', 6, 24, 81);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (251, '2023-03-02', 'Embarazo Ectópico', 'Tratamientos hormonales', '2023-03-13', '2023-03-22', 15, 4, 33);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (252, '2023-09-29', 'Melanoma', 'Esteroides tópicos', '2023-10-03', '2023-10-17', 26, 7, 16);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (253, '2023-04-02', 'Bronquitis Crónica', 'Quimioterapia o cirugía', '2023-04-08', '2023-04-11', 22, 24, 29);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (254, '2024-02-07', 'Embarazo Ectópico', 'Terapia hormonal', '2024-02-15', '2024-02-17', 2, 29, 16);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (255, '2023-03-23', 'Trastorno Obsesivo-Compulsivo', 'Benzodiacepinas', '2023-03-29', '2023-04-07', 4, 34, 30);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (256, '2024-06-01', 'Derrame Pleural', 'Oxigenoterapia', '2024-06-01', '2024-06-03', 44, 46, 46);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (257, '2023-12-22', 'Hernia Inguinal', 'Resección y quimioterapia', '2024-01-03', '2024-01-04', 18, 21, 39);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (258, '2023-03-30', 'Hipermetropía', 'Lentes de contacto rígidos', '2023-04-03', '2023-04-11', 8, 12, 96);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (259, '2023-05-10', 'Enfermedad Valvular Cardíaca', 'Nitratos y beta-bloqueantes', '2023-05-19', '2023-05-26', 15, 30, 8);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (260, '2023-05-16', 'Vitíligo', 'Fototerapia', '2023-05-23', '2023-05-24', 8, 31, 5);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (261, '2024-01-13', 'Trastorno Límite de la Personalidad', 'Terapia cognitivo-conductual', '2024-01-19', '2024-01-30', 1, 54, 22);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (262, '2024-04-18', 'Infección del Tracto Urinario', 'Cirugía de nefrectomía', '2024-05-01', '2024-05-13', 23, 39, 44);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (263, '2024-05-24', 'Neuropatía Diabética', 'Riluzol y terapia ocupacional', '2024-05-29', '2024-06-08', 3, 8, 87);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (264, '2024-02-15', 'Infarto Agudo de Miocardio', 'Cirugía de reemplazo valvular', '2024-02-18', '2024-03-03', 20, 5, 96);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (265, '2023-10-01', 'Varicela', 'Ejercicio y dieta saludable', '2023-10-11', '2023-10-23', 7, 28, 87);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (266, '2023-01-12', 'Embolismo Pulmonar', 'Toracocentesis', '2023-01-23', '2023-02-04', 34, 46, 29);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (267, '2023-09-28', 'Tendinitis de Manguito Rotador', 'Cirugía descompresiva', '2023-10-02', '2023-10-11', 39, 9, 60);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (268, '2023-06-10', 'Faringitis', 'Cambio en estilo de vida y suplementación vitamínica', '2023-06-10', '2023-06-14', 18, 26, 35);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (269, '2024-01-30', 'Sensibilidad Dental', 'Drenaje y antibióticos', '2024-02-08', '2024-02-15', 10, 55, 36);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (270, '2023-02-14', 'Cálculos Biliares', 'Inhibidores de la bomba de protones', '2023-02-25', '2023-03-01', 7, 19, 2);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (271, '2024-05-18', 'Cataratas', 'Gotas antibióticas', '2024-05-19', '2024-05-20', 12, 12, 100);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (272, '2023-11-12', 'Alergia Estacional', 'Antihistamínicos', '2023-11-21', '2023-12-02', 10, 1, 12);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (273, '2023-02-25', 'Cálculos Renales', 'Inhibidores de la PDE-5', '2023-03-03', '2023-03-13', 1, 58, 99);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (274, '2024-01-17', 'Reflujo Gastroesofágico', 'Dieta controlada y probióticos', '2024-01-29', '2024-02-02', 18, 42, 47);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (275, '2023-01-02', 'Tendinitis de Manguito Rotador', 'Terapia física y antiinflamatorios', '2023-01-12', '2023-01-15', 1, 33, 72);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (276, '2023-10-04', 'Enfermedad Pulmonar Obstructiva Crónica (EPOC)', 'CPAP', '2023-10-11', '2023-10-25', 38, 46, 21);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (277, '2023-12-09', 'Glaucoma', 'Lentes o cirugía refractiva', '2023-12-12', '2023-12-14', 22, 12, 50);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (278, '2023-11-15', 'Síndrome de Intestino Irritable', 'Terapia biológica', '2023-11-21', '2023-11-27', 15, 42, 10);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (279, '2024-06-26', 'Bruxismo', 'Cirugía periodontal', '2024-06-29', '2024-07-01', 1, 35, 17);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (280, '2023-10-30', 'Asma Infantil', 'Broncodilatadores', '2023-11-09', '2023-11-14', 16, 3, 85);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (281, '2024-02-21', 'Absceso Dental', 'Limpieza profunda y enjuagues', '2024-03-01', '2024-03-13', 6, 11, 6);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (282, '2023-06-19', 'Anemia Neonatal', 'Drenaje y tratamiento de complicaciones', '2023-06-19', '2023-07-03', 15, 18, 23);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (283, '2024-02-25', 'Infección por Hongos', 'Antihistamínicos y cremas', '2024-02-27', '2024-03-10', 22, 51, 86);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (284, '2023-08-23', 'Ictericia Neonatal', 'Reanimación neonatal', '2023-08-28', '2023-09-04', 18, 41, 48);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (285, '2023-08-20', 'Sepsis Neonatal', 'Administración de glucosa intravenosa', '2023-08-30', '2023-09-03', 5, 18, 21);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (286, '2024-06-22', 'Acné Vulgaris', 'Antihistamínicos y cremas', '2024-06-23', '2024-07-03', 2, 6, 84);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (287, '2024-03-01', 'Miopía', 'Lentes correctivos', '2024-03-02', '2024-03-08', 2, 12, 25);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (288, '2023-10-09', 'Infección Renal', 'Medicamentos antihipertensivos', '2023-10-10', '2023-10-11', 37, 45, 43);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (289, '2023-11-28', 'Acromegalia', 'Metformina', '2023-12-05', '2023-12-09', 20, 40, 46);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (290, '2024-03-03', 'Gingivitis', 'Obturación Dental', '2024-03-08', '2024-03-22', 5, 11, 49);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (291, '2024-03-16', 'Déficit de Atención e Hiperactividad (TDAH)', 'Antibióticos y analgésicos', '2024-03-28', '2024-04-01', 21, 49, 3);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (292, '2023-04-20', 'Gastroenteritis', 'Suplementos de hierro', '2023-04-25', '2023-05-09', 19, 48, 53);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (293, '2023-02-18', 'Aterosclerosis', 'Estatinas y cambios en la dieta', '2023-02-22', '2023-03-04', 6, 5, 92);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (294, '2023-01-01', 'Obesidad Infantil', 'Antibióticos', '2023-01-09', '2023-01-20', 32, 3, 85);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (295, '2024-06-28', 'Miocardiopatía Dilatada', 'Angioplastia', '2024-07-04', '2024-07-15', 18, 60, 44);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (296, '2024-04-16', 'Parálisis Facial', 'Terapia manual', '2024-04-23', '2024-04-28', 28, 47, 4);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (297, '2023-12-07', 'Resfriado Común', 'Analgésicos y relajación', '2023-12-19', '2023-12-28', 30, 48, 22);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (298, '2023-05-13', 'Esquizofrenia', 'Terapia cognitivo-conductual', '2023-05-15', '2023-05-22', 15, 54, 24);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (299, '2023-06-21', 'Halitosis Crónica', 'Extracción quirúrgica', '2023-06-25', '2023-06-28', 1, 35, 65);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (300, '2023-11-15', 'Cáncer de Próstata', 'Antibióticos', '2023-11-22', '2023-11-23', 23, 58, 12);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (301, '2023-05-25', 'Endometriosis', 'Tratamiento con crioterapia o láser', '2023-05-25', '2023-06-01', 25, 4, 15);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (302, '2023-09-18', 'Cálculos Renales', 'Medicamentos antiespasmódicos', '2023-10-01', '2023-10-15', 15, 15, 10);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (303, '2024-06-30', 'Infección Urinaria', 'Antibióticos', '2024-07-12', '2024-07-18', 8, 26, 84);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (304, '2023-07-10', 'Apendicitis Aguda', 'Descompresión intestinal y cirugía', '2023-07-13', '2023-07-21', 19, 21, 75);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (305, '2023-09-07', 'Astigmatismo', 'Lentes o cirugía refractiva', '2023-09-09', '2023-09-16', 6, 36, 25);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (306, '2024-05-15', 'Miocardiopatía Dilatada', 'Antihipertensivos', '2024-05-15', '2024-05-27', 11, 5, 56);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (307, '2023-06-19', 'Nefropatía Diabética', 'Bicarbonato de sodio', '2023-06-27', '2023-07-08', 8, 22, 29);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (308, '2023-02-01', 'Resfriado Común', 'Antibióticos', '2023-02-04', '2023-02-08', 15, 26, 97);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (309, '2023-01-16', 'Pericarditis', 'Cirugía de reemplazo valvular', '2023-01-20', '2023-01-25', 15, 5, 51);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (310, '2023-08-27', 'Conjuntivitis', 'Lentes de contacto rígidos', '2023-09-01', '2023-09-12', 2, 56, 95);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (311, '2023-05-04', 'Acné Vulgaris', 'Esteroides tópicos', '2023-05-15', '2023-05-25', 11, 6, 62);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (312, '2023-12-02', 'Hipermetropía', 'Lentes o cirugía refractiva', '2023-12-05', '2023-12-06', 32, 12, 98);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (313, '2024-06-17', 'Faringitis Estreptocócica', 'Dieta controlada y probióticos', '2024-06-25', '2024-07-05', 4, 49, 34);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (314, '2023-07-06', 'Fibrosis Pulmonar', 'Antibióticos', '2023-07-13', '2023-07-22', 8, 24, 43);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (315, '2024-06-18', 'Urticaria', 'Antifúngicos tópicos', '2024-06-24', '2024-07-05', 4, 7, 73);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (316, '2024-05-02', 'Síndrome Metabólico', 'Cirugía y radioterapia', '2024-05-04', '2024-05-06', 15, 40, 41);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (317, '2024-06-30', 'Hipertensión Renovascular', 'Diálisis', '2024-07-07', '2024-07-10', 2, 22, 75);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (318, '2023-12-23', 'Síndrome de Dificultad Respiratoria', 'Fototerapia', '2024-01-02', '2024-01-08', 1, 41, 97);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (319, '2024-01-26', 'Esclerosis Lateral Amiotrófica', 'Corticoides y terapia inmunomoduladora', '2024-02-06', '2024-02-10', 6, 52, 32);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (320, '2024-02-17', 'Nefritis Intersticial', 'Inmunosupresores', '2024-03-01', '2024-03-09', 24, 22, 22);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (321, '2023-03-11', 'Esguince de Tobillo', 'Rehabilitación muscular', '2023-03-15', '2023-03-24', 9, 25, 2);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (322, '2023-12-16', 'Alopecia Areata', 'Esteroides tópicos', '2023-12-17', '2023-12-19', 16, 51, 79);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (323, '2024-06-29', 'Acromegalia', 'Cirugía y radioterapia', '2024-07-10', '2024-07-24', 26, 40, 17);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (324, '2023-06-20', 'Síndrome de Ovario Poliquístico', 'Tratamiento con crioterapia o láser', '2023-07-02', '2023-07-12', 13, 29, 1);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (325, '2024-04-11', 'Desgarro Muscular', 'Rehabilitación funcional', '2024-04-11', '2024-04-19', 16, 47, 81);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (326, '2023-09-25', 'Melanoma', 'Cremas despigmentantes', '2023-09-29', '2023-10-09', 4, 6, 2);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (327, '2023-08-23', 'Cálculos Biliares', 'Fluidoterapia y analgésicos', '2023-09-03', '2023-09-07', 42, 19, 18);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (328, '2023-08-06', 'Parálisis Facial', 'Terapia con láser', '2023-08-09', '2023-08-16', 22, 25, 74);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (329, '2023-01-30', 'Resfriado Común', 'Analgésicos y relajación', '2023-02-04', '2023-02-13', 17, 48, 83);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (330, '2023-12-03', 'Síndrome de Dificultad Respiratoria', 'Administración de glucosa intravenosa', '2023-12-11', '2023-12-20', 16, 18, 77);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (331, '2024-04-03', 'Embolismo Pulmonar', 'Anticoagulantes', '2024-04-04', '2024-04-05', 28, 46, 55);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (332, '2024-06-20', 'Úlcera Péptica', 'Antibióticos y protectores gástricos', '2024-06-24', '2024-07-04', 10, 42, 37);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (333, '2023-06-30', 'Úlcera Perforada', 'Limpieza quirúrgica y antibióticos', '2023-07-11', '2023-07-18', 24, 44, 27);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (334, '2023-04-01', 'Fatiga Crónica', 'Analgésicos y relajación', '2023-04-06', '2023-04-09', 5, 26, 30);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (335, '2023-11-23', 'Acromegalia', 'Cirugía y radioterapia', '2023-11-23', '2023-12-02', 21, 40, 13);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (336, '2024-06-27', 'Migraña', 'Antimigrañosos', '2024-07-07', '2024-07-10', 5, 8, 46);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (337, '2023-11-16', 'Apnea del Sueño', 'Corticoides', '2023-11-16', '2023-11-30', 40, 46, 53);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (338, '2023-11-28', 'Absceso Abdominal', 'Cirugía laparoscópica de emergencia', '2023-12-08', '2023-12-17', 17, 44, 84);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (339, '2023-10-15', 'Periodontitis', 'Pasta desensibilizante', '2023-10-22', '2023-11-03', 1, 11, 70);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (340, '2023-02-02', 'Bruxismo', 'Drenaje y antibióticos', '2023-02-14', '2023-02-23', 3, 35, 27);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (341, '2023-03-14', 'Faringitis Estreptocócica', 'Cremas protectoras', '2023-03-18', '2023-03-21', 4, 28, 90);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (342, '2024-01-22', 'Prostatitis', 'Medicamentos antiespasmódicos', '2024-01-25', '2024-01-31', 25, 15, 90);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (343, '2024-02-27', 'Cáncer de Mama', 'Quimioterapia', '2024-03-05', '2024-03-15', 20, 57, 33);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (344, '2024-04-29', 'Dermatitis del Pañal', 'Ejercicio y dieta saludable', '2024-05-01', '2024-05-13', 4, 49, 94);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (345, '2023-05-23', 'Hipoglucemia Neonatal', 'Transfusión de sangre', '2023-05-26', '2023-06-01', 19, 18, 72);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (346, '2023-05-07', 'Déficit de Atención e Hiperactividad (TDAH)', 'Antivirales y reposo', '2023-05-18', '2023-05-28', 20, 3, 45);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (347, '2024-04-27', 'Esquizofrenia', 'Antipsicóticos', '2024-04-27', '2024-05-01', 14, 54, 65);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (348, '2023-08-18', 'Faringitis', 'Analgésicos y relajación', '2023-08-18', '2023-08-26', 7, 1, 19);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (349, '2023-09-17', 'Prostatitis', 'Cirugía de nefrectomía', '2023-09-24', '2023-10-05', 30, 58, 93);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (350, '2024-02-22', 'Artritis Reumatoide', 'Suplementos de calcio y vitamina D', '2024-02-25', '2024-02-26', 33, 9, 44);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (351, '2023-03-14', 'Trombosis Coronaria', 'Nitratos y beta-bloqueantes', '2023-03-23', '2023-04-04', 22, 30, 4);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (352, '2024-04-19', 'Neuralgia del Trigémino', 'Levodopa y terapia física', '2024-04-28', '2024-05-08', 6, 32, 14);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (353, '2024-01-07', 'Síndrome de Túnel Carpiano', 'Rehabilitación funcional', '2024-01-20', '2024-01-24', 7, 25, 55);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (354, '2023-11-02', 'Diabetes Mellitus Tipo 2', 'Suplementos de calcio y vitamina D', '2023-11-12', '2023-11-24', 12, 16, 66);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (355, '2023-11-15', 'Cáncer de Colon', 'Apendicectomía', '2023-11-19', '2023-11-22', 27, 21, 92);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (356, '2023-07-12', 'Bronquiolitis', 'Antivirales y reposo', '2023-07-20', '2023-07-24', 5, 3, 47);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (357, '2024-02-08', 'Nefropatía Diabética', 'Antibióticos', '2024-02-20', '2024-03-05', 6, 45, 86);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (358, '2023-01-15', 'Hipotiroidismo', 'Insulina', '2023-01-18', '2023-01-22', 16, 40, 84);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (359, '2023-12-01', 'Displasia Cervical', 'Terapia hormonal', '2023-12-12', '2023-12-14', 36, 50, 87);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (360, '2023-08-26', 'Hernia de Disco', 'Inyecciones de corticoides', '2023-09-05', '2023-09-11', 12, 53, 47);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (361, '2023-05-11', 'Diverticulitis', 'Reparación quirúrgica', '2023-05-11', '2023-05-17', 6, 21, 53);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (362, '2023-04-23', 'Neumonía', 'Oxigenoterapia', '2023-04-28', '2023-04-30', 32, 24, 27);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (363, '2024-06-28', 'Queratocono', 'Lágrimas artificiales', '2024-07-05', '2024-07-11', 1, 12, 62);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (364, '2024-06-27', 'Síndrome de Guillain-Barré', 'Control glucémico y analgésicos', '2024-07-10', '2024-07-17', 29, 52, 43);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (365, '2024-01-10', 'Esguince de Tobillo', 'Crioterapia', '2024-01-11', '2024-01-13', 11, 25, 96);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (366, '2024-07-02', 'Vejiga Hiperactiva', 'Resección transuretral', '2024-07-02', '2024-07-09', 16, 15, 54);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (367, '2024-01-11', 'Miopía', 'Lentes o cirugía refractiva', '2024-01-19', '2024-01-22', 14, 13, 5);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (368, '2024-05-03', 'Incontinencia Urinaria', 'Medicamentos antiespasmódicos', '2024-05-05', '2024-05-17', 30, 58, 68);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (369, '2024-01-23', 'Degeneración Macular', 'Cirugía de retina', '2024-02-03', '2024-02-08', 29, 13, 86);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (370, '2024-05-16', 'Cirrosis Hepática', 'Inmunosupresores y corticoides', '2024-05-29', '2024-06-11', 38, 19, 14);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (371, '2023-09-24', 'Halitosis Crónica', 'Ortodoncia', '2023-10-01', '2023-10-12', 1, 11, 23);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (372, '2024-04-28', 'Cáncer de Pulmón', 'Terapia hormonal', '2024-05-09', '2024-05-13', 28, 57, 66);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (373, '2023-04-23', 'Esquizofrenia', 'Terapia cognitivo-conductual', '2023-04-25', '2023-05-09', 3, 10, 29);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (374, '2023-08-11', 'Gota', 'Inmunosupresores', '2023-08-23', '2023-08-31', 4, 43, 38);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (375, '2023-02-16', 'Conjuntivitis', 'Cirugía de retina', '2023-02-22', '2023-03-03', 10, 13, 64);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (376, '2023-07-25', 'Menorragia', 'Anticonceptivos y dieta', '2023-07-29', '2023-08-04', 17, 4, 95);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (377, '2023-05-14', 'Artritis Reumatoide', 'Cirugía descompresiva', '2023-05-23', '2023-05-27', 10, 33, 36);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (378, '2024-01-10', 'Déficit de Atención e Hiperactividad (TDAH)', 'Cremas protectoras', '2024-01-20', '2024-02-02', 5, 28, 73);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (379, '2023-09-24', 'Lumbalgia', 'Rehabilitación funcional', '2023-09-25', '2023-10-05', 7, 47, 100);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (380, '2024-03-18', 'Esguince de Tobillo', 'Terapia física y antiinflamatorios', '2024-03-30', '2024-03-31', 7, 9, 66);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (381, '2023-11-15', 'Cáncer de Riñón', 'Resección transuretral', '2023-11-23', '2023-11-27', 17, 58, 46);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (382, '2023-08-13', 'Accidente Cerebrovascular', 'Riluzol y terapia ocupacional', '2023-08-22', '2023-08-25', 3, 8, 80);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (383, '2023-03-05', 'Migraña', 'Trombolíticos', '2023-03-13', '2023-03-23', 13, 52, 35);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (384, '2024-04-15', 'Hipotiroidismo', 'Terapia de reemplazo hormonal', '2024-04-28', '2024-04-30', 8, 17, 20);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (385, '2023-10-11', 'Melanoma', 'Cirugía, radioterapia o quimioterapia', '2023-10-19', '2023-10-22', 24, 51, 76);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (386, '2024-06-11', 'Ojo Seco', 'Cirugía de Cataratas', '2024-06-24', '2024-06-28', 36, 56, 88);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (387, '2024-02-03', 'Nefropatía Diabética', 'Litotricia', '2024-02-06', '2024-02-09', 18, 45, 16);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (388, '2024-04-30', 'Alzheimer', 'Analgésicos y antiepilépticos', '2024-05-06', '2024-05-15', 30, 32, 4);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (389, '2023-08-05', 'Alzheimer', 'Plasmaféresis o inmunoglobulina', '2023-08-12', '2023-08-22', 4, 8, 58);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (390, '2023-12-16', 'Cáncer de Hígado', 'Radioterapia', '2023-12-22', '2024-01-02', 24, 57, 40);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (391, '2023-11-14', 'Cirrosis Hepática', 'Fluidoterapia y analgésicos', '2023-11-18', '2023-11-22', 9, 19, 18);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (392, '2023-08-17', 'Trastorno Obsesivo-Compulsivo', 'Psicoterapia y medicación', '2023-08-28', '2023-09-02', 10, 54, 28);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (393, '2023-06-27', 'Cáncer de Colon', 'Inmunoterapia', '2023-07-08', '2023-07-18', 28, 57, 12);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (394, '2023-10-19', 'Queratosis Pilaris', 'Antihistamínicos y cremas', '2023-11-01', '2023-11-15', 19, 51, 30);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (395, '2023-10-23', 'Bronquiolitis', 'Dieta controlada y probióticos', '2023-10-27', '2023-11-01', 28, 3, 41);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (396, '2023-02-05', 'Gripe Común', 'Analgésicos y relajación', '2023-02-07', '2023-02-13', 27, 48, 44);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (397, '2024-01-21', 'Hipotiroidismo', 'Cirugía y radioterapia', '2024-01-21', '2024-01-23', 18, 16, 14);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (398, '2024-01-20', 'Hernia de Disco', 'Inmovilización y fisioterapia', '2024-01-25', '2024-01-27', 27, 33, 50);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (399, '2024-05-14', 'Glaucoma', 'Lentes de contacto rígidos', '2024-05-26', '2024-05-27', 25, 13, 22);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (400, '2024-03-25', 'Nefropatía Diabética', 'Litotricia', '2024-03-25', '2024-04-08', 19, 22, 15);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (401, '2023-11-08', 'Glomerulonefritis', 'Control glucémico', '2023-11-10', '2023-11-14', 1, 22, 29);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (402, '2023-10-10', 'Halitosis Crónica', 'Aplicación de flúor', '2023-10-19', '2023-10-21', 1, 35, 85);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (403, '2024-01-31', 'Desgarro Muscular', 'Cirugía descompresiva', '2024-01-31', '2024-02-02', 30, 53, 11);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (404, '2023-05-19', 'Queratocono', 'Cirugía de Cataratas', '2023-05-23', '2023-06-06', 35, 13, 46);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (405, '2023-06-24', 'Enfermedad de Parkinson', 'Riluzol y terapia ocupacional', '2023-07-01', '2023-07-11', 28, 52, 55);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (406, '2023-02-06', 'Dolor de Cabeza Tensional', 'Control de la presión arterial con medicamentos', '2023-02-14', '2023-02-25', 16, 26, 40);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (407, '2024-04-12', 'Trombosis Pulmonar', 'Quimioterapia o cirugía', '2024-04-13', '2024-04-26', 2, 24, 67);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (408, '2024-01-07', 'Incontinencia Urinaria', 'Inhibidores de la PDE-5', '2024-01-08', '2024-01-09', 16, 15, 94);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (409, '2023-02-17', 'Trastorno de Pánico', 'Terapia dialéctico-conductual', '2023-02-22', '2023-03-06', 15, 34, 16);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (410, '2023-12-29', 'Neuralgia del Trigémino', 'Trombolíticos', '2024-01-11', '2024-01-16', 30, 52, 10);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (411, '2023-07-27', 'Melanoma', 'Tratamientos tópicos con peróxido de benzoilo', '2023-08-05', '2023-08-17', 28, 7, 76);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (412, '2024-04-27', 'Cálculos Biliares', 'Fluidoterapia y analgésicos', '2024-04-28', '2024-04-29', 1, 42, 91);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (413, '2023-03-19', 'Conjuntivitis', 'Lentes o cirugía refractiva', '2023-03-20', '2023-03-22', 24, 56, 33);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (414, '2023-05-13', 'Trombosis Pulmonar', 'Broncodilatadores', '2023-05-17', '2023-05-19', 27, 24, 99);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (415, '2023-01-05', 'Fatiga Crónica', 'Control de la presión arterial con medicamentos', '2023-01-12', '2023-01-19', 11, 48, 9);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (416, '2023-02-17', 'Aterosclerosis', 'Nitratos y beta-bloqueantes', '2023-02-22', '2023-02-24', 22, 60, 81);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (417, '2023-04-12', 'Cataratas', 'Lágrimas artificiales', '2023-04-24', '2023-05-05', 4, 13, 2);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (418, '2024-03-16', 'Hernia Inguinal', 'Resección y quimioterapia', '2024-03-28', '2024-04-10', 8, 21, 4);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (419, '2023-09-23', 'Polimialgia Reumática', 'Antidepresivos y analgésicos', '2023-09-25', '2023-10-06', 6, 20, 62);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (420, '2024-03-01', 'Caries Dental', 'Cirugía periodontal', '2024-03-14', '2024-03-27', 7, 11, 58);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (421, '2024-01-04', 'Prostatitis', 'Medicamentos antiespasmódicos', '2024-01-10', '2024-01-23', 25, 39, 15);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (422, '2023-08-05', 'Glaucoma', 'Lentes correctivos', '2023-08-14', '2023-08-15', 26, 36, 59);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (423, '2024-01-08', 'Hipoglucemia Neonatal', 'Drenaje y tratamiento de complicaciones', '2024-01-18', '2024-01-19', 40, 18, 34);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (424, '2023-07-30', 'Hernia Umbilical', 'Apendicectomía', '2023-08-04', '2023-08-12', 7, 21, 86);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (425, '2023-12-28', 'Peritonitis', 'Reparación quirúrgica', '2024-01-06', '2024-01-10', 21, 21, 90);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (426, '2023-02-18', 'Miocardiopatía Dilatada', 'Angioplastia', '2023-03-03', '2023-03-16', 22, 30, 18);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (427, '2024-05-12', 'Síndrome de Cushing', 'Insulina', '2024-05-21', '2024-05-31', 5, 16, 11);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (428, '2023-08-18', 'Melanoma', 'Fototerapia', '2023-08-31', '2023-09-05', 22, 51, 34);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (429, '2023-06-12', 'Hipertiroidismo', 'Octreótido', '2023-06-19', '2023-06-21', 28, 40, 8);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (430, '2024-01-03', 'Desgarro Muscular', 'Suplementos de calcio y vitamina D', '2024-01-05', '2024-01-17', 32, 9, 48);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (431, '2023-10-21', 'Angina de Pecho', 'Anticoagulantes', '2023-11-01', '2023-11-10', 20, 59, 33);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (432, '2023-03-18', 'Anemia Neonatal', 'Oxigenoterapia', '2023-03-31', '2023-04-05', 5, 18, 44);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (433, '2023-06-01', 'Luxación de Hombro', 'Rehabilitación muscular', '2023-06-11', '2023-06-13', 14, 53, 6);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (434, '2023-07-09', 'Obesidad Infantil', 'Oxigenoterapia y líquidos', '2023-07-15', '2023-07-20', 9, 49, 22);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (435, '2024-04-25', 'Obesidad Infantil', 'Medicamento para reducir el ácido', '2024-05-05', '2024-05-13', 7, 3, 51);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (436, '2023-11-11', 'Trombosis Pulmonar', 'CPAP', '2023-11-13', '2023-11-22', 38, 46, 61);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (437, '2023-06-19', 'Alopecia Areata', 'Antihistamínicos y cremas', '2023-06-21', '2023-06-28', 26, 6, 81);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (438, '2023-04-07', 'Hipertensión Arterial', 'Nitratos y beta-bloqueantes', '2023-04-15', '2023-04-23', 5, 5, 57);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (439, '2023-01-29', 'Cáncer de Hígado', 'Tratamiento con anticuerpos monoclonales', '2023-02-05', '2023-02-19', 9, 37, 98);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (440, '2023-10-29', 'Sarcoma', 'Quimioterapia', '2023-11-11', '2023-11-17', 7, 37, 39);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (441, '2023-01-02', 'Hepatitis Viral', 'Dieta controlada y probióticos', '2023-01-10', '2023-01-14', 9, 19, 43);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (442, '2024-01-06', 'Periodontitis', 'Cirugía periodontal', '2024-01-12', '2024-01-13', 11, 55, 36);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (443, '2023-06-25', 'Dermatitis Atópica', 'Esteroides tópicos', '2023-06-26', '2023-06-30', 25, 51, 37);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (444, '2023-04-14', 'Acné Vulgaris', 'Antihistamínicos y cremas', '2023-04-22', '2023-04-27', 13, 6, 67);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (445, '2023-03-15', 'Queratosis Pilaris', 'Antihistamínicos y cremas', '2023-03-17', '2023-03-19', 8, 31, 89);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (446, '2023-08-29', 'Ojo Seco', 'Inyecciones oculares', '2023-09-09', '2023-09-15', 1, 12, 22);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (447, '2023-03-28', 'Reflujo Gastroesofágico', 'Fluidoterapia y analgésicos', '2023-04-05', '2023-04-18', 33, 42, 51);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (448, '2024-04-06', 'Cáncer de Próstata', 'Terapia fotodinámica', '2024-04-15', '2024-04-23', 39, 37, 79);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (449, '2023-07-01', 'Psoriasis', 'Esteroides tópicos', '2023-07-02', '2023-07-05', 11, 31, 54);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (450, '2023-12-11', 'Gingivitis', 'Limpieza profunda y enjuagues', '2023-12-23', '2023-12-24', 1, 55, 71);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (451, '2023-11-30', 'Síndrome de Sjögren', 'Analgésicos y terapia física', '2023-12-04', '2023-12-08', 17, 43, 91);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (452, '2023-09-22', 'Anemia Ferropénica', 'Analgésicos y relajación', '2023-10-01', '2023-10-06', 22, 48, 38);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (453, '2023-01-18', 'Enfermedad de Crohn', 'Terapia biológica', '2023-01-30', '2023-01-31', 2, 19, 64);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (454, '2023-05-27', 'Hipermetropía', 'Lágrimas artificiales', '2023-05-30', '2023-06-05', 8, 12, 69);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (455, '2023-07-12', 'Cistitis Intersticial', 'Cirugía de prostatectomía', '2023-07-21', '2023-08-03', 20, 15, 55);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (456, '2024-06-09', 'Síndrome de Ovario Poliquístico', 'Tratamiento con crioterapia o láser', '2024-06-21', '2024-06-22', 18, 29, 12);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (457, '2023-11-17', 'Dermatitis Atópica', 'Antihistamínicos y cremas', '2023-11-19', '2023-11-25', 8, 6, 97);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (458, '2024-06-19', 'Fatiga Crónica', 'Descongestionantes y líquidos', '2024-06-26', '2024-07-07', 3, 1, 21);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (459, '2023-07-21', 'Otitis Media Aguda', 'Oxigenoterapia y líquidos', '2023-07-27', '2023-08-09', 7, 28, 28);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (460, '2023-08-05', 'Gota', 'Alopurinol y colchicina', '2023-08-07', '2023-08-17', 5, 20, 35);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (461, '2023-04-06', 'Pericarditis', 'Angioplastia', '2023-04-14', '2023-04-28', 16, 59, 47);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (462, '2023-05-28', 'Hiperplasia Benigna de Próstata', 'Antibióticos y analgésicos', '2023-06-05', '2023-06-13', 14, 39, 65);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (463, '2023-05-16', 'Esclerosis Múltiple', 'Control glucémico y analgésicos', '2023-05-16', '2023-05-26', 4, 8, 59);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (464, '2023-11-18', 'Fibromialgia', 'Antiinflamatorios no esteroides (AINEs)', '2023-11-25', '2023-11-30', 16, 20, 91);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (465, '2023-07-30', 'Osteopenia', 'Levotiroxina', '2023-08-07', '2023-08-08', 10, 40, 64);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (466, '2024-03-20', 'Neuropatía Diabética', 'Levodopa y terapia física', '2024-03-27', '2024-03-30', 4, 8, 4);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (467, '2024-01-22', 'Feocromocitoma', 'Antitiroideos', '2024-01-25', '2024-01-30', 4, 16, 59);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (468, '2024-05-29', 'Anemia Neonatal', 'Administración de glucosa intravenosa', '2024-06-08', '2024-06-14', 30, 41, 15);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (469, '2024-03-21', 'Dermatitis del Pañal', 'Antivirales y reposo', '2024-03-24', '2024-03-28', 31, 28, 84);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (470, '2023-08-21', 'Déficit de Atención e Hiperactividad (TDAH)', 'Antibióticos', '2023-08-22', '2023-08-27', 1, 49, 41);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (471, '2024-04-03', 'Enfermedad de Parkinson', 'Corticoides y terapia inmunomoduladora', '2024-04-16', '2024-04-25', 13, 32, 62);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (472, '2023-08-16', 'Alergia Estacional', 'Suplementos de hierro', '2023-08-20', '2023-08-28', 21, 48, 56);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (473, '2024-02-16', 'Síndrome de Ovario Poliquístico', 'Cirugía o medicación', '2024-02-26', '2024-03-07', 21, 29, 87);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (474, '2024-01-01', 'Epilepsia', 'Corticoides y terapia inmunomoduladora', '2024-01-08', '2024-01-18', 5, 8, 77);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (475, '2023-08-01', 'Síndrome de Dificultad Respiratoria', 'Reanimación neonatal', '2023-08-12', '2023-08-16', 10, 41, 97);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (476, '2023-05-22', 'Fibromialgia', 'Analgésicos y terapia física', '2023-05-25', '2023-05-31', 16, 20, 53);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (477, '2024-06-15', 'Urticaria', 'Cirugía, radioterapia o quimioterapia', '2024-06-16', '2024-06-18', 1, 7, 21);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (478, '2024-04-13', 'Cáncer de Piel', 'Cirugía laparoscópica', '2024-04-17', '2024-04-26', 8, 37, 100);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (479, '2023-09-25', 'Diabetes Mellitus Tipo 1', 'Suplementos de calcio y vitamina D', '2023-10-08', '2023-10-19', 29, 17, 47);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (480, '2023-10-05', 'Degeneración Macular', 'Cirugía de Cataratas', '2023-10-17', '2023-10-29', 35, 36, 45);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (481, '2023-02-22', 'Cáncer de Pulmón', 'Terapia hormonal', '2023-03-01', '2023-03-12', 30, 37, 53);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (482, '2024-04-27', 'Fibromialgia', 'Sustitutos de lágrimas y AINEs', '2024-05-06', '2024-05-15', 22, 20, 34);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (483, '2023-12-12', 'Diabetes Mellitus Tipo 1', 'Octreótido', '2023-12-16', '2023-12-25', 10, 40, 64);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (484, '2023-09-15', 'Acné Vulgaris', 'Exfoliación suave', '2023-09-23', '2023-09-27', 8, 51, 7);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (485, '2024-05-08', 'Faringitis Estreptocócica', 'Antibióticos y analgésicos', '2024-05-18', '2024-05-20', 6, 3, 13);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (486, '2024-01-09', 'Displasia Cervical', 'Quimioterapia o cirugía', '2024-01-09', '2024-01-22', 25, 50, 95);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (487, '2023-12-22', 'Angina de Pecho', 'Nitratos y beta-bloqueantes', '2023-12-25', '2023-12-26', 1, 59, 91);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (488, '2024-06-19', 'Artritis Reumatoide', 'Rehabilitación muscular', '2024-06-29', '2024-07-13', 23, 9, 3);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (489, '2023-05-10', 'Infección Urinaria', 'Analgésicos y relajación', '2023-05-22', '2023-06-03', 11, 26, 21);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (490, '2023-10-09', 'Absceso Dental', 'Férula dental', '2023-10-09', '2023-10-17', 2, 35, 19);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (491, '2023-03-10', 'Trombosis Coronaria', 'Anticoagulantes', '2023-03-21', '2023-04-01', 6, 5, 64);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (492, '2024-03-03', 'Asma', 'Quimioterapia o cirugía', '2024-03-09', '2024-03-23', 28, 46, 36);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (493, '2024-01-12', 'Osteopenia', 'Antitiroideos', '2024-01-22', '2024-02-02', 8, 16, 25);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (494, '2023-11-11', 'Anorexia Nerviosa', 'Psicoterapia y medicación', '2023-11-11', '2023-11-24', 15, 54, 2);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (495, '2023-01-25', 'Trastorno Obsesivo-Compulsivo', 'Antipsicóticos', '2023-02-06', '2023-02-19', 2, 10, 23);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (496, '2023-01-21', 'Enfermedad de Addison', 'Cirugía de extirpación', '2023-01-31', '2023-02-01', 14, 40, 62);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (497, '2023-09-27', 'Acné Vulgaris', 'Cremas despigmentantes', '2023-10-03', '2023-10-05', 30, 6, 19);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (498, '2023-08-20', 'Enfermedad Valvular Cardíaca', 'Medicación para insuficiencia cardíaca', '2023-08-30', '2023-09-08', 17, 60, 67);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (499, '2024-06-20', 'Absceso Dental', 'Ortodoncia', '2024-06-21', '2024-06-24', 3, 35, 16);
INSERT INTO VISITA (id, fecha, diagnostico, tratamiento, fecha_ingreso, fecha_salida, nro_habitacion, medico_hospital_servicio_id, historial_clinico_id) VALUES (500, '2023-09-05', 'Vasculitis', 'Antiinflamatorios y fisioterapia', '2023-09-08', '2023-09-16', 24, 43, 77);


--SELECT * FROM VISITA
GO

GO
PRINT N'Actualización completada.';


GO
