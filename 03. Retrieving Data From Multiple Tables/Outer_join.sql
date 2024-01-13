-- Types of join
	-- two
		-- Inner Join
		-- Outer Join
			-- Further two types
				-- left outer join
                -- right outer join
                
-- inner join
select * 
from order_items o 
join products p
	on o.product_id = p.product_id;


-- outer join with types
-- left join
select * 
from order_items o 
left join products p
	on o.product_id = p.product_id;


-- right outer join 
select * 
from order_items o 
right join products p
	on o.product_id = p.product_id;
    
    
-- Exercise 
	-- join product table and order item table to get result of :
	-- product_id : name : quantiy
select 
	p.product_id,
	p.name,
    oi.quantity
from products p
left join order_items oi
	on p.product_id = oi.product_id
order by p.product_id;