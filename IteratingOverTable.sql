DECLARE @MaxID int , @MinID int,@EmployeeID int;
DECLARE @Name varchar(50);

SELECT @MaxID = MAX(EmployeeID)from employees;
SELECT @MinID = MIN (@EmployeeID) from Employees;

SET @EmployeeID = 1;



WHILE @EmployeeID is not null and @EmployeeID < @MaxID
	BEGIN
		Select @Name = Employees.Name from Employees Where EmployeeID = @EmployeeID;
		Select @EmployeeID = Min(EmployeeID) from Employees Where EmployeeID > @EmployeeID;
		Print @Name;
	END