CREATE TRIGGER trg_AfterInsertStudent on Students
AFTER INSERT 
AS
BEGIN
	INSERT INTO StudentInsertLog (StudentID,Name,Subject,Grade)
	SELECT StudentID , Name,Subject , Grade From inserted  
	
END