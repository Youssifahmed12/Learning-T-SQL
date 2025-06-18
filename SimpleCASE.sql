SELECT Employees.EmployeeID
       ,CASE Employees.DepartmentID
        WHEN 1 then 'Enginnering'
        WHEN 2 then 'Computing'
        When 3 then 'Master'
        ELSE 'Other'
        END AS DepartmentName
From Employees