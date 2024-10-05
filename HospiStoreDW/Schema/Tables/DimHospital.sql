CREATE TABLE DimHospital (
    hospital_sk INT IDENTITY(1,1) PRIMARY KEY,
    hospital_id INT,
    cod INT,                          
    nombre VARCHAR(255),               
    ciudad VARCHAR(255),               
    telefono VARCHAR(20),             
    direccion VARCHAR(255)             
);