CREATE FUNCTION GetStudentsEnrolledInSubject (@subject varchar(20))
RETURNS TABLE
AS
RETURN
(
	SELECT * FROM Students s WHERE s.Subject = @subject
)
