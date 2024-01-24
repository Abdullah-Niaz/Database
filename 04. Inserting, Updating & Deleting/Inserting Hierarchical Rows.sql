select * from orders;

INSERT INTO orders
	(customer_id,order_date,status)
VALUES 
	(1,'2019-09-05',1);

select * from orders;
select last_insert_id();