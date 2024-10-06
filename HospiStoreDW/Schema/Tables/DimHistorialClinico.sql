CREATE TABLE DimHistorialClinico (
    historial_clinico_sk INT IDENTITY(1,1) PRIMARY KEY,
    historial_clinico_id INT,
    nombre VARCHAR(255),                  
    apellido VARCHAR(255),                
    fecha_de_nacimiento DATE,             
    numero_seguridad_social VARCHAR(50)   
);