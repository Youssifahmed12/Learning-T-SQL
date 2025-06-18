DECLARE @max int,@a int, @b int;
SET @a = 10;
SET @b = 16;

IF @a > @b	
	BEGIN
		SET @max = @a
	END
ELSE
	BEGIN
		SET @max = @b
	END
PRINT @max