select * from orders;

select productName from products;


select orderid, orderdate from orders
order by orderdate DESC;


select CompanyName from suppliers
where country = 'USA';

select CategoryName from categories 
order by CategoryName ASC;


select CompanyName, shipcity from Shippers, orders
where shippers.shipperid = orders.shipvia;


select FirstName, lastname from employees
where country != 'USA'


select CustomerID , CompanyName from customers
where city = 'London' or city = 'Paris';

select OrderID, ProductName from "Order Details", products
where Quantity > 10;

select EmployeeID , Title from employees
where Title like '%Manager%';

select SupplierID , CompanyName from Suppliers
where CompanyName like 'A%'


select ProductID, UnitPrice from Products
where UnitPrice between 10 and 20;

select count(orderid) as totalorders, ShipCountry  from orders
group by ShipCountry;

select sum(Quantity) as TotalQ, customerid from "Order Details", customers
group by CustomerID order by TotalQ DESC ;

select avg(unitprice) as totalavg, ProductName from products
group by ProductName order by totalavg DESC;

select orderid, orderdate from orders
where year(orderdate) = 1997 and shipcity = 'Berlin';

select min(orderdate) as mindate, customerid from orders 
group by customerid;

select orderid, max(RequiredDate) as maxdate from Orders
where shipcountry = 'France' or shipcountry = 'Spain';

select sum(Quantity) as totalQ, ProductID from "Order Details"
group by ProductID
having sum(Quantity) > 100 ;

select count(orders.orderid) as totalorders, Employees.EmployeeID from orders, Employees
where  Employees.EmployeeID =  orders.EmployeeID
group by employees.EmployeeID      
order by totalorders;


select customers.customerid, customers.companyname, orders.customerid, sum(Quantity*Unitprice) as totalrev
from customers, orders, "order details" 
where customers.customerid = orders.customerid and orders.orderid = "order details".orderid and orders.customerid > 5;
