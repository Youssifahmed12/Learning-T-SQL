SELECT 
    StudentID, 
    Name, 
    Subject, 
    Grade,
    RANK() OVER (PARTITION BY Subject ORDER BY Grade DESC) AS GradeRank
FROM 
    Students;

