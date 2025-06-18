BEGIN TRY

    INSERT INTO Employees3 (EmployeeID, Name, Position) VALUES (1, 'John Doe', 'Sales Manager');
    
    -- Attempt to insert a duplicate record which will cause an error
    INSERT INTO Employees3 (EmployeeID, Name, Position) VALUES (1, 'Jane Smith', 'Marketing Manager');
END TRY
BEGIN CATCH

    PRINT 'An error occurred: ' + ERROR_MESSAGE();

END CATCH