CREATE TABLE DimMedico (
    medico_sk INT IDENTITY(1,1) PRIMARY KEY,  
    medico_id INT,
    nombre VARCHAR(255),                      
    apellido VARCHAR(255),                    
    fecha_de_nacimiento DATE                 
);
