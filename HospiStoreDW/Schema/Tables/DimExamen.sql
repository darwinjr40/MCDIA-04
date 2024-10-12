CREATE TABLE dim_examen (
    examen_sk INT PRIMARY KEY IDENTITY(1,1),
    hosptal_servicio_examen_id INT NOT NULL, 
    examen_id INT NOT NULL,     
    nombre VARCHAR(100),
    descripcion VARCHAR(255),
    UNIQUE(examen_id)
);
