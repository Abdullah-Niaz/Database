use sql_store;

select * from orders;

create table orders_archieved as 
select * from orders;

select * from orders_archieved;

insert into orders_archieved
select * from orders
where order_date > '2000-05-06';

select * from orders_archieved;

use sql_invoicing;

CREATE TABLE invoice_archived as
select 
	i.invoice_id,
    i.number,
    c.name as client,
    i.invoice_total,
    i.payment_total,
    i.due_date,
    i.payment_date
from invoices i 
join clients c
	using (client_id)
where payment_date is not null;    

select * from invoice_archived;