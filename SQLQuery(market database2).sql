select * from "order";
select * from "orderitem";
select * from "product";



select avg(unitprice) as averageunits, CompanyName from product, Supplier where product.supplierid = supplier.id group by CompanyName;

select country, count(CompanyName) as totalcompany from supplier group by country order by totalcompany DESC ; 

select sum(TotalAmount) as totalprofit from "order";

select  max(Quantity) as highest, ProductName, firstname, lastname
from customer, product, Orderitem, "Order"
where product.id = OrderItem.productid and "order".id = orderitem.orderid and customer.id = "order".customerid
group by firstname, lastname ,ProductName
order by  highest DESC ;
