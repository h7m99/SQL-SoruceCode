begin transaction; 

select * from product;

update product set price = 60 where name =  'dew';

rollback;

select * from product;