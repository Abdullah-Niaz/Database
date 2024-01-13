use sql_store;

select *
from order_items oi
join order_item_notes oin
	ON oi.order_id = oin.order_id
	and oi.product_id = oin.product_id; 