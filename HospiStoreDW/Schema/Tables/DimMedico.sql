CREATE TABLE dim_medico (
    id INT NOT NULL, 
    medico_sk INT PRIMARY KEY, 
    dni VARCHAR(20),
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    fecha_nacimiento DATE,
    UNIQUE(id) 
);
