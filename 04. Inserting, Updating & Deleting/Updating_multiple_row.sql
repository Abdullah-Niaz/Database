use sql_store;

select * from customers;

update customers
	set points = points + 50
	where birth_date < '1986-03-28';