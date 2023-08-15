create or alter function get_order_by_year (@year nvarchar(4))
returns table 
as 
return
select sum(totalamount) as totalsales, customer.Id, firstname, lastname , orderdate from customer, "order"
where @year = year(orderdate) and customer.Id = "order".customerId
group by customer.Id, firstname, lastname , orderdate


select * from dbo.get_order_by_year ('2012')  as fullTable;


select * from "Order";
