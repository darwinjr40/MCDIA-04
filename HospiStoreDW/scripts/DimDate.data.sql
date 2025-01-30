
IF NOT EXISTS(SELECT TOP(1) 1 FROM dim_fecha)
 BEGIN
	BEGIN TRAN 
		DECLARE @startdate DATE = '2016-01-01',
				@enddate   DATE = '2026-01-01';
		DECLARE @datelist TABLE(full_date DATE);

	IF @startdate IS NULL
		BEGIN
			SELECT TOP 1 
				   @startdate = full_date
			FROM dbo.dim_fecha 
			ORDER By fecha_id ASC;
		END

	WHILE (@startdate <= @enddate)
	BEGIN 
		INSERT INTO @datelist(full_date)
		SELECT @startdate

		SET @startdate = DATEADD(dd,1,@startdate);
	END

	 INSERT INTO dbo.dim_fecha(fecha_id
							,full_date
							,año 
							,mes
							,dia
							,trimestre
							,semestre
							,name_day
							,[number_day_of_week] 
							,name_month
							)


	SELECT fecha_id           = CONVERT(INT,CONVERT(VARCHAR,dl.full_date,112))
	, full_date = dl.full_date
		  ,año      = YEAR(dl.full_date)
		  ,mes = MONTH(dl.full_date)
		  ,dia  = DATEPART(d,dl.full_date)
		  ,trimestre   = DATEPART(qq, dl.full_date)
		  ,semestre  = CASE DATEPART(qq, dl.full_date)
										WHEN 1 THEN 1
										WHEN 2 THEN 1
										WHEN 3 THEN 2
										WHEN 4 THEN 2
								  END
		  ,name_day     = DATENAME(WEEKDAY,dl.full_date) 
		  ,[number_day_of_week]   = DATEPART(dw,dl.full_date)
		  ,name_month       = DATENAME(MONTH,dl.full_date) 

		FROM @datelist              dl 
		LEFT OUTER JOIN dbo.dim_fecha dd ON (dl.full_date = dd.full_date)
		WHERE dd.full_date IS NULL;
	COMMIT TRAN
END
GO