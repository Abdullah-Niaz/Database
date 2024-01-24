use sql_store;
select * from customers;

-- Inserting into a row

INSERT INTO customers (customer_id,first_name,last_name,birth_date,phone,address,city,state,points)
VALUES (DEFAULT, 'Omer','Ali','1990-2-9','0304-5647892','Lahore','Multan','CA',2000);

select * from customers
where customer_id > 10;