create or alter trigger empsalcheck on Employees for update
as
begin 
declare @old_salary decimal (18,2);
declare @new_salary decimal(18,2);

select @old_salary = salary from deleted;
select @new_salary = salary from inserted;

if @old_salary > @new_salary 
begin 

print 'cant change';
rollback;
end;
end;

update employees set salary = salary - 500;
