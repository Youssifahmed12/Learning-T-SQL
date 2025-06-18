Declare @a int , @b int;
set @a = 100;
set @b = 135;

if @a > @b
	begin 
		print 'a is bigger than b'
	end
else
	begin
		print 'b is bigger than a '
	end