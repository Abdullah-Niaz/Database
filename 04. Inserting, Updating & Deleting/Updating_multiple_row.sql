use sql_store;

select * from customers;

update customers
	set points = points + 50
	where birth_date < '2000-01-01';