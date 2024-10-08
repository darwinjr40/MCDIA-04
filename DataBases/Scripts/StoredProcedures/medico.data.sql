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