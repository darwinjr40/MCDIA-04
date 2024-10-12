Create PROCEDURE [dbo].[DW_MergeDimHospitalServicio]
AS
BEGIN

	UPDATE dh
	SET [nombre_hospital] = sh.[nombre_hospital]
	   ,[ciudad_hospital]     = sh.[ciudad_hospital]
	   ,[nombre_servicio]     = sh.[nombre_servicio]
	   ,[total_camas]    = sh.[total_camas]	   
	   ,[total_camas_libres]    = sh.[total_camas_libres]	   
	   ,[precio]    = sh.[precio]	   
	FROM [dbo].[dim_hospital_servicio]        dh
	INNER JOIN [dbo].[hospital_servicio] sh ON (dh.[hospital_servicio_sk]=sh.[hospital_servicio_sk])
END
GO