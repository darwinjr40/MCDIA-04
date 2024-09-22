-- Scrip de insert

-- PROCEDURE para insert médicos
CREATE PROCEDURE pro_addMedicos (@cant INT)
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

EXEC pro_addMedicos 50;
SELECT * FROM MEDICO;
--DELETE FROM MEDICO
--DROP PROCEDURE pro_addMedicos

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

--DELETE FROM HOSPITAL
SELECT * FROM HOSPITAL;
