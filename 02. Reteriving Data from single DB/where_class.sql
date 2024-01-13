-- Specifying the condition
select * from customers where customer_id = 1;

-- Read specific data
select first_name as Frist_Name, last_name as Last_Name
from customers;

-- Getting the distinct data
select distinct state from customers;

select * from products;
select 
	name,
    unit_price,
    unit_price * 1.1 as new_price
from products;


select * 
from customers
where points > 300;

select *
from customers
where state = "VA";

select * 
from customers where birth_date > '2019-01-01';


select * from customers where birth_date > '1990-01-01' and points > 1000;

select * from customers where birth_date > '1990-01-01' or points > 1000;

select * from customers where birth_date > '1990-01-01' or (points > 100 and state = "VA");

