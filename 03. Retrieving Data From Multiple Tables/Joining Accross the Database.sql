select *
from order_items oi
join sql_inventory.products ip
	on oi.order_id  = ip.product_id;
    
use sql_inventory;
select *
from sql_store.order_items oi
join products p
	on oi.order_id  = p.product_id;