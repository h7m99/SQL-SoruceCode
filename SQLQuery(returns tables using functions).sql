create or alter function get_cus_by_country (@country nvarchar(50))
returns table 
as
return 
select id, firstname, lastname , city
from customer 
where country = @country;

select * from dbo.get_cus_by_country('USA'); 