
CREATE TABLE [dbo].[FacFactura]
(
    [factura_sk] INT NOT NULL PRIMARY KEY, 
    [factura_id] INT NOT NULL, 
    [detalle_factura_id] INT NOT NULL,
    [examen_sk] INT NOT NULL, 
    [visita_sk] INT NOT NULL, 
    [fecha] DATETIME NOT NULL, 
    [cantidad] INT NOT NULL DEFAULT 0, 
    [subtotal] FLOAT NOT NULL DEFAULT 0, 
    [fecha_id] INT NOT NULL, 
    FOREIGN KEY ([examen_sk]) REFERENCES DimExamen (examen_sk),
    FOREIGN KEY (visita_sk) REFERENCES DimVisita (visita_sk),
    FOREIGN KEY ([fecha_id]) REFERENCES DimFecha (id),
);