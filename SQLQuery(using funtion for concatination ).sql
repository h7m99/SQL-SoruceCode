create or alter function fname_lname ( @id int )
returns nvarchar(40)
as
begin 
declare @firstname nvarchar(40);
declare @lastname nvarchar(40);
select @firstname = firstname , @lastname = lastname  from Customer
where Id = @id;
return concat(@firstname , ' ' , @lastname)
end

select dbo.fname_lname (10) "Full Name" ;


