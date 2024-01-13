select 
	order_id,
	order_date,
	'Active' as Status
from orders
where order_date >= '2000-01-01'
union

select 
	order_id,
    order_date,
    'Archived' as Status
from orders 
where order_date < '2000-01-01';