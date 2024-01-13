select c.customer_id,
		c.first_name as Customer,
        p.product_id
from customers c
cross join products p
order by c.first_name;




-- Exercise

-- join the customer and product table 
	-- using the implicit call 
    -- then using the explicit call


-- implicit call
select *
from customers c, products p
order by c.first_name;



-- using explicit call 
select *
from customers c 
cross join products p
order by c.first_name;