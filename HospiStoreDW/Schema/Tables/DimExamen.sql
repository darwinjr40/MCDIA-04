CREATE TABLE dim_examen (
    id INT NOT NULL,
    examen_sk INT PRIMARY KEY, 
    nombre VARCHAR(100),
    descripcion VARCHAR(255),
    UNIQUE(id)
);
