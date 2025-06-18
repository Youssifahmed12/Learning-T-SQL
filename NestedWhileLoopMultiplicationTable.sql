DECLARE @Rows int = 1;
DECLARE @Cols int = 1;
DECLARE @Result int;

WHILE @Rows <= 10
	BEGIN
		WHILE @Cols <= 10
			BEGIN
				SET @Result = @Rows * @Cols;
				Print CAST(@Rows as varchar) + '*' + CAST(@Cols as varchar) + '=' + CAST(@Result as varchar)
				SET @Cols = @Cols + 1;
			END
		print '==========='
		SET @Cols = 1;
		SET @Rows = @Rows + 1;
	END