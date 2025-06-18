DECLARE @Score int;
SET @Score = 16;

IF @Score > 16
	BEGIN 
		print 'Score Is More than 16'
	END
Else
	BEGIN
		IF @Score = 16
			BEGIN 
				Print 'Score is 16'
			END
	END