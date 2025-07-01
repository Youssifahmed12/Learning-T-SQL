CREATE FUNCTION GetAverageGradeForSubject 
(@Subject varchar (20))
RETURNS INT
AS
	BEGIN
		RETURN (SELECT AVG(GRADE) FROM Students Where Students.Subject = @Subject)
	END


