create or alter procedure customer_detail @id int = 10,
@firstname nvarchar(50) output, @lastname nvarchar(50) output , @phone nvarchar(20) output
as
begin 
select @firstname = firstname , @lastname = lastname , @phone = Phone from Customer
where id = @id;
end

select* from Customer;

begin
declare @fname nvarchar(50);
declare @lname nvarchar(50);
declare @phone nvarchar(20);
exec customer_detail default, @fname output , @lname output , @phone output;
print @fname
print @lname
print @phone;

end