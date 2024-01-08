select * 
from sql_store.orders o 
join sql_store.customers c
	ON o.customer_id = c.customer_id
join sql_store.order_statuses os
	ON o.status = os.order_status_id;

select o.order_id,
		o.order_date,
        c.first_name,
        c.last_name,
        os.name as status
from sql_store.orders o 
join sql_store.customers c
	ON o.customer_id = c.customer_id
join sql_store.order_statuses os
	ON o.status = os.order_status_id;



use sql_invoicing;
select * from payment_methods;
select * from invoices;
select * from clients;
select * from payments;

select 
		i.invoice_id,
		c.client_id,
        p.payment_id,
        p.amount ,
        p.payment_method,
        p.date
from invoices i
join clients c
	On i.invoice_id = c.client_id
join payments p;

-- optimized soultion of above
use sql_invoicing;
select	
		c.client_id, 
		c.name,
		p.date,
        p.amount,
		p.payment_id,
        pm.name as payement_methods,
        pm.payment_method_id
from payments p 
join clients c
	on p.payment_id = c.client_id
join payment_methods pm
	on p.payment_id = pm.payment_method_id;