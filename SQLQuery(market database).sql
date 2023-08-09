--select the fisrt name using ASC--
select FirstName from dbo.Customer order by FirstName ;
select * from "order";
select * from "Customer";

-- count the total orders--
select count(CustomerId)as totalorders,FirstName from "order", Customer where 
"order".Customerid = Customer.id 
AND "Order".OrderDate < '2013-01-01' 
group by firstName having count(CustomerId) >5 
order by firstname DESC ;

--select the total amount of spending-- 
select top 6 max(TotalAmount)as totalspending, firstname , lastname from "order", Customer  
where "order".Customerid = Customer.id group by firstName, lastname
order by totalspending DESC;


