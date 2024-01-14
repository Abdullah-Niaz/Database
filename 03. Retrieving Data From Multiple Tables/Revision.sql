select o.order_id,
	c.first_name,
	c.customer_id,
    o.order_date 
from orders o 
join customers c
	on o.customer_id = c.customer_id;