	CREATE PROCEDURE [dbo].[GetVisitaFacturaChangesByRowVersion]
(
   @startRow BIGINT,
   @endRow  BIGINT
)
AS
BEGIN
    -- Selección de cambios en VISITA y sus facturas relacionadas
    SELECT v.[id] AS visita_id,
           v.[fecha],
           v.[diagnostico],
           v.[tratamiento],
           v.[fecha_ingreso],
           v.[fecha_salida],
           v.[nro_habitacion],
           f.[id] AS factura_id,
           f.[fecha_emision],
           f.[total],
           f.[cant_examenes],
           f.[monto_visita],
           f.[monto_examen]
    FROM [dbo].[visita] v
    INNER JOIN [dbo].[factura] f ON v.[id] = f.[visita_id]
    WHERE (v.[rowversion] > CONVERT(ROWVERSION, @startRow)
           AND v.[rowversion] <= CONVERT(ROWVERSION, @endRow))
      OR (f.[rowversion] > CONVERT(ROWVERSION, @startRow)
           AND f.[rowversion] <= CONVERT(ROWVERSION, @endRow));
END
GO