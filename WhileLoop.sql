DECLARE @Counter int;
SET @Counter = 1;
WHILE @Counter <= 5
	BEGIN 
		PRINT 'Count : ' + CAST(@COUNTER as VARCHAR) 
		SET @Counter = @Counter + 1
	END

PRINT ' ';
PRINT 'Reversed'
SET @Counter = 5;

WHILE @Counter >= 1
	BEGIN 
		PRINT 'Count : ' + CAST(@COUNTER as VARCHAR) 
		SET @Counter = @Counter - 1
	END
