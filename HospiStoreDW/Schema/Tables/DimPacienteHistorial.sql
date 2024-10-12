CREATE TABLE dim_paciente_historial (        
    paciente_historial_sk INT PRIMARY KEY IDENTITY(1,1),
    paciente_id INT NOT NULL,
    dni VARCHAR(20),
    apellido VARCHAR(100),
    nombre VARCHAR(100),
    fecha_nacimiento DATE,
    numero_seguridad_social VARCHAR(20),
    sexo CHAR(1),
    codigo_historial_clinico VARCHAR(50),     
);
