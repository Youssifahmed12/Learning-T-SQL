DECLARE @Balance decimal(10,2) , @Withdrawl decimal (10,2);
SET @Balance = 950.00;
SET @Withdrawl = 100.00;

WHILE @Balance > 0
	BEGIN
		IF (@Withdrawl > @Balance)
			BEGIN
				PRINT 'Not Enough Balance , You''re Broke <3';
				BREAK;
			END
		SET @Balance = @Balance - @Withdrawl;
		PRINT @Balance
	END