CREATE TABLE dim_hospital_servicio (
    id INT NOT NULL, 
    hospital_servicio_sk INT PRIMARY KEY, 
    nombre_hospital VARCHAR(255), 
    ciudad_hospital VARCHAR(100), 
    nombre_servicio VARCHAR(100), 
    total_camas INT,
    total_camas_libres INT,
    precio DECIMAL(10,2),
    UNIQUE(id) 
);
