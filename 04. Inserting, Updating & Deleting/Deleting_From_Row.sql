use sql_invoicing;
select * from invoices;

delete from invoices
where client_id = (
					SELECT name 
					FROM clients 
                    WHERE name = 'Myworks'
				);