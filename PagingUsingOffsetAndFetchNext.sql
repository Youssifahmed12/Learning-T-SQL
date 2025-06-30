DECLARE @PageNumber int = 2;
DECLARE @RowsPerPage int = 3;

SELECT *
From Students
ORDER BY StudentID
OFFSET (@PageNumber - 1 ) * @RowsPerPage ROWS
FETCH NEXT @RowsPerPage ROWS ONLY

