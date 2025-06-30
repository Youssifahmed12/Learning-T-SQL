SELECT 
    StudentID, 
    Name, 
    Grade,
    DENSE_RANK() OVER (ORDER BY Grade DESC) AS GradeRank
FROM 
    Students;