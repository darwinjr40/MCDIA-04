CREATE TABLE [dbo].[FacFactura]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [fecha] DATETIME NOT NULL, 
    [cantidad] INT NOT NULL DEFAULT 0, 
    [subtotal] FLOAT NOT NULL DEFAULT 0,
    [factura_id] INT NOT NULL , 
    [detalle_factura_id] INT NOT NULL FOREIGN KEY REFERENCES  (id)
    [examen_id] INT NOT NULL, 
    [visita_id] INT NOT NULL, 
)
