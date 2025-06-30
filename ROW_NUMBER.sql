SELECT 
Students.Grade,
Students.Name,
ROW_NUMBER() OVER (ORDER BY grade DESC) AS RowNum
FROM Students
