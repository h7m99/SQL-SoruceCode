insert into product values( 2, 'ahmed', 2, 500);
insert into product values( 4, 'dew', 2, 20);

select name,  countity * price as totalprice from product 
where id  = 4;