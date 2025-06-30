DECLARE @EmployeesTable TABLE (
ID int Primary Key IDENTITY (1,1),
Name Varchar (50) 
);

Insert into @EmployeesTable values ('Youssif')
Select * from @EmployeesTable
