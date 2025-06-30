SELECT 
    StudentID, 
    Name, 
    Subject, 
    LAG(Grade,1) OVER (ORDER BY GRADE DESC) AS PrevGrade,
    Grade,
    LEAD(Grade,1) OVER (ORDER BY GRADE DESC) AS NextGrade
FROM 
    Students;

