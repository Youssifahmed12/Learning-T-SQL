use C21_DB1
BEGIN TRANSACTION;
	BEGIN TRY
		DECLARE @AmountToBeTakenFromAccount int = 500;
		DECLARE @Balance int;
		SELECT @Balance = Balance from accounts where accountID = 2;

		IF (@Balance >= @AmountToBeTakenFromAccount)
			BEGIN 
				UPDATE Accounts SET Balance = Balance - @AmountToBeTakenFromAccount where accountID = 2
				UPDATE Accounts SET Balance = Balance + @AmountToBeTakenFromAccount where accountID = 1
				COMMIT;
			END
		ELSE
			BEGIN
				THROW 50001, 'Insufficient balance.', 1
			END
		
	END TRY

	BEGIN CATCH

		ROLLBACK;

	END CATCH

select * from Accounts