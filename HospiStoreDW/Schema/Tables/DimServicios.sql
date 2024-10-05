CREATE TABLE DimServicios (
    servicios_sk INT IDENTITY(1,1) PRIMARY KEY,     -- Clave sustituta para la dimensión
    servicios_id INT,
    nombre VARCHAR(255)                   -- Nombre del servicio (Ej: Cardiología, Urología, etc.)
);