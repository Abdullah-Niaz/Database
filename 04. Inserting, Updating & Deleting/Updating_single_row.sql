use sql_invoicing;

select * from invoices;

update invoices
set payment_total = 30, invoice_date = '2000-04-09'
where client_id = 2;