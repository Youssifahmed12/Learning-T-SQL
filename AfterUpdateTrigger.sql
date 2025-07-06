CREATE TRIGGER trg_AfterUpdateStudents ON Students
AFTER UPDATE 
AS 
BEGIN
	IF Update(Grade)
		BEGIN
			INSERT INTO StudentUpdateLog (StudentID,OldGrade,NewGrade)
			SELECT i.StudentID,d.Grade AS OldGrade , i.Grade AS NewGrade
			FROM inserted i
			Inner Join deleted d ON i.StudentID = d.StudentID
		END
END