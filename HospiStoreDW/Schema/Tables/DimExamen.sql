CREATE TABLE dim_examen (
    examen_sk INT PRIMARY KEY IDENTITY(1,1),
    examen_id INT NOT NULL,     
    nombre VARCHAR(100),
    descripcion VARCHAR(255),
    UNIQUE(examen_id)
);
