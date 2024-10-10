CREATE TABLE dim_medico (
    medico_sk INT PRIMARY KEY, 
    medico_id INT NOT NULL,     
    dni VARCHAR(20),
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    fecha_nacimiento DATE,
    UNIQUE(medico_id) 
);
