IF NOT EXISTS (select * from Employees where Employees.Name = 'john smith')
	BEGIN
		print 'john doesnt exist'
	END
ELSE
	BEGIN 
		PRINT 'john found'
	END