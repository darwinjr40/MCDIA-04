create table fact_visita (
    visita_sk int identity(1,1) primary key,    
    visita_id int,
    servicio_sk int,                            
    medico_sk int,                               
    hospital_sk int,                            
    paciente_sk int,                             
    historial_clinico_sk int,                   
    fecha_sk int,                                
    numero_cama int,                             
    cantidad int,                                
    monto_total decimal(10, 2),                  

    constraint fk_fact_visita_servicio foreign key (servicio_sk) references DimServicios(servicios_sk),
    constraint fk_fact_visita_medico foreign key (medico_sk) references DimMedico(medico_sk),
    constraint fk_fact_visita_hospital foreign key (hospital_sk) references DimHospital(hospital_sk),
    constraint fk_fact_visita_historial_clinico foreign key (paciente_sk) references DimHistorialClinico(historial_clinico_sk),
    constraint fk_fact_visita_fecha foreign key (fecha_sk) references DimFecha(id)
);