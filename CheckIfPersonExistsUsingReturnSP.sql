CREATE PROCEDURE SP_CheckIfPersonExists
@PersonID int
AS
BEGIN
	IF EXISTS (select 1 from People where ID = @PersonID)
		BEGIN
			RETURN 1;
		END
	ELSE
		BEGIN
			RETURN 0;
		END
END