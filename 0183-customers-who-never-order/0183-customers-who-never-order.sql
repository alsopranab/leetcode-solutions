select c.name as Customers
from customers c
Left join orders o
on c.id = o.customerId
where o.id is null;