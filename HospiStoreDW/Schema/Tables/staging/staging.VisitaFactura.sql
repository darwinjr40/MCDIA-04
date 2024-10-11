CREATE TABLE visita_factura (            
    hospital_servicio_sk INT,
    medico_sk INT, 
    paciente_historial_sk INT, 
    examen_sk INT,
    total_factura DECIMAL(10,2),
    cantidad_examenes INT,
    monto_visita DECIMAL(10,2),
    monto_examen DECIMAL(10,2),
    nro_habitacion INT,
    fecha_ingreso DATE,
    fecha_salida DATE,
    fecha_id int,    
);
