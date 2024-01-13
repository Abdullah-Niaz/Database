use sql_store;

-- Reading all the data from the specific table
select * from customers;


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

select *
from order_items;

select * 
from customers where state in ('VA','GA','Fl');


select * 
from products 
where quantity_in_stock in (49,38,72);


select * from products
where quantity_in_stock = 49 or quantity_in_stock = 38 or quantity_in_stock = 72;

select * from customers;
select customer_id,first_name,last_name,phone,points from customers where Points >= 1000 and Points <=3000 and points is not null;

-- The Between Operator
-- better and concise way of getting values
select * from customers where points between 1000 and 3000;
select * from customers where birth_date between '1990-01-01' and '2000-01-01';


-- The like operators
select * 
from customers where last_name like 'b%';

-- select the customer where address contains trail or avenue
select * 
from customers 
where address 
like  '%Trail%' or "%Avenu%";

select * 
from customers 
where phone 
like '%9';


-- The Regex 
-- it is a regular expression.
-- it the powerfull specially when we are searching a string.
select * from customers where last_name regexp 'a';

-- caret ^ to present the beggining of the string
select * from customers where last_name regexp '^d';

-- $ dollar to present the end of string
select * from customers where last_name regexp 'd$';
select * from customers where last_name regexp 'h$';

-- | pipe logical or
select * from customers where last_name regexp 'field|mac'; 

select * from customers
where first_name regexp 'elka|ambur';

select * 
from customers 
where last_name regexp 'ey$|on$';

select * 
from customers
where last_name regexp '^my|se';

select * 
from customers 
where last_name regexp 'b[ro]';


-- The null opeators
-- if there is null in db-table;
-- let say client has not verified his account yet, we wana send him email then how will we fetch his details.
select * 
from customers
where phone is null;

-- select those whose phone is not null and send them newsletter daily
select * 
from customers where phone is not null;
select * from orders where shipped_date is null;


-- order by class
select * 
from customers
order by first_name ;

select first_name,last_name,customer_id 
from customers
order by 2,3;
-- order by first_name,last_name;
-- always order by column name not by index name, it may causes problem when you will work with large db

select * from order_items
where order_id = 2
order by quantity*unit_price  desc;