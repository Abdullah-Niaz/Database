select * 
from orders
join customers
	on orders.customer_id = customers.customer_id;
    
-- aliasing
select * 
from orders o 
join customers c
	 on o.customer_id = c.customer_id;

-- Selecting only names
select o.customer_id,first_name, last_name
from orders o
join customers c
	on o.customer_id = c.customer_id;