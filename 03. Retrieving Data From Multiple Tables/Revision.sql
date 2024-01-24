-- Join statement 
-- suppose that you're working on ecommerce website & now on position where you want to combine data of two table
	-- like order_details 
    -- customer details 
    -- use the multiple table joining method
    -- there is also other method which is called implicit method call 
    -- mentioned one is explicit call 
select o.order_id,
	c.first_name,
	c.customer_id,
    o.order_date 
from orders o 
join customers c
	on o.customer_id = c.customer_id;
    
select *
from order_items oi 
join products p
	on oi.product_id = p.product_id;
    
select 
	oi.order_id,
	p.name
from order_items oi 
join products p
	on oi.product_id = p.product_id;