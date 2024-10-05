CREATE TABLE Fact_Visita (
    visita_sk INT IDENTITY(1,1) PRIMARY KEY,    
    visita_id INT,
    servicio_sk INT,                            
    medico_sk INT,                               
    hospital_sk INT,                            
    paciente_sk INT,                             
    historial_clinico_sk INT,                   
    fecha_sk INT,                                
    numero_cama INT,                             
    cantidad INT,                                
    monto_total DECIMAL(10, 2),                  

    CONSTRAINT FK_Fact_Visita_Servicio FOREIGN KEY (servicio_sk) REFERENCES DimServicios(servicio_sk),
    CONSTRAINT FK_Fact_Visita_Medico FOREIGN KEY (medico_sk) REFERENCES DimMedico(medico_sk),
    CONSTRAINT FK_Fact_Visita_Hospital FOREIGN KEY (hospital_sk) REFERENCES DimHospital(hospital_sk),
    CONSTRAINT FK_Fact_Visita_Paciente FOREIGN KEY (paciente_sk) REFERENCES DimHistorialClinico(paciente_sk),
    CONSTRAINT FK_Fact_Visita_Historial FOREIGN KEY (historial_clinico_sk) REFERENCES DimHistorialClinico(historial_clinico_sk),
    CONSTRAINT FK_Fact_Visita_Fecha FOREIGN KEY (fecha_sk) REFERENCES DimFecha(fecha_sk)
);