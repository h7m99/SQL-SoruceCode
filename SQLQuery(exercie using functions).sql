create or alter function get_product_by_company (@id int)
returns table 
as 
return
select product.Id , companyname, productname from supplier, product
where @id = supplier.Id and supplier.id = product.supplierid 


select * from dbo.get_product_by_company (2)  as fulltable;

