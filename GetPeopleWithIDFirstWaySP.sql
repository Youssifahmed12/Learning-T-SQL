CREATE PROCEDURE SP_GetPeopleWithIDFirstWay
@PersonID int
AS
BEGIN
	SELECT * FROM People Where ID = @PersonID
END