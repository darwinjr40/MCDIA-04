﻿CREATE TABLE fact_visita_factura (    
    visita_id INT not null PRIMARY KEY IDENTITY(1,1),    
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
    FOREIGN KEY (hospital_servicio_sk) REFERENCES dim_hospital_Servicio(hospital_servicio_sk),
    FOREIGN KEY (medico_sk) REFERENCES dim_medico(medico_sk),
    FOREIGN KEY (paciente_historial_sk) REFERENCES dim_paciente_historial(paciente_historial_sk),
    FOREIGN KEY (examen_sk) REFERENCES dim_examen(examen_sk),
    FOREIGN KEY (fecha_id) REFERENCES dim_fecha(fecha_id),    
);
