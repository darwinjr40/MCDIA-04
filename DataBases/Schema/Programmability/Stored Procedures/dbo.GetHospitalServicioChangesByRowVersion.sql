CREATE PROCEDURE [dbo].[GetHospitalServicioChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT 
		 hospital_servicio_id = hs.id
		,nombre_hospital = h.nombre 
		,ciudad_hospital = h.ciudad
		,nombre_servicio = s.nombre 
		,total_camas = hs.total_camas
		,total_camas_libres = hs.total_camas_libres
		,precio = hs.precio
	FROM HOSPITAL_SERVICIO hs
	INNER JOIN servicio s
	ON (hs.servicio_id = s.id)
	INNER JOIN HOSPITAL h
	ON (hs.hospital_id = h.id)  
    WHERE 
        (hs.[rowversion] > CONVERT(ROWVERSION, @startRow) 
        AND hs.[rowversion] <= CONVERT(ROWVERSION, @endRow))
    OR 
        (s.[rowversion] > CONVERT(ROWVERSION, @startRow) 
        AND s.[rowversion] <= CONVERT(ROWVERSION, @endRow))
    OR 
        (h.[rowversion] > CONVERT(ROWVERSION, @startRow) 
        AND h.[rowversion] <= CONVERT(ROWVERSION, @endRow))
END