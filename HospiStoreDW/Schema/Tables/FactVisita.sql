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

    constraint fk_fact_visita_servicio foreign key (servicio_sk) references dimservicios(servicios_sk),
    constraint fk_fact_visita_medico foreign key (medico_sk) references dimmedico(medico_sk),
    constraint fk_fact_visita_hospital foreign key (hospital_sk) references dimhospital(hospital_sk),
    --constraint fk_fact_visita_paciente foreign key (paciente_sk) references dimhistorialclinico(paciente_sk),
    --constraint fk_fact_visita_historial foreign key (historial_clinico_sk) references dimhistorialclinico(historial_clinico_sk),
    --constraint fk_fact_visita_fecha foreign key (fecha_sk) references dimfecha(fecha_sk)
);