
create view emp_view as 
select id, firstname, country, phone from Customer where id between 1 and 10;

select * from emp_view;