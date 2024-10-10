CREATE TABLE dim_hospital_servicio (
    hospital_servicio_sk INT PRIMARY KEY, 
    hospital_servicio_id INT NOT NULL,     
    nombre_hospital VARCHAR(255), 
    ciudad_hospital VARCHAR(100), 
    nombre_servicio VARCHAR(100), 
    total_camas INT,
    total_camas_libres INT,
    precio DECIMAL(10,2),
    UNIQUE(hospital_servicio_id) 
);
