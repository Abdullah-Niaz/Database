select * 
from customers c 
join orders o
	on c.customer_id = o.customer_id;
    
-- implicit call
-- in case we forget to call the where class it will attact the every id of customer with each id of orders
select * from customers c, orders o where c.customer_id = o.customer_id;