use sql_store;

select * from customers;

-- Round 1
 
select first_name, last_name, phone from customers;

select last_name, first_name from customers;

select points,points + 10 as 'Discount Found' from customers;

select Distinct state from customers;

Select * from orders where order_date >= '2019-01-30';

select * from  customers where birth_date > '1990-01-01' AND points > 100;

select * from customers where birth_date > '1990-01-01' OR points > 100;

select * from customers where ( birth_date > '1990-01-01'  OR points > 100)  AND state = 'VA';

select * from customers where NOT ((birth_date > '1990-01-01' OR points > 1000) AND state = 'VA');

select * from order_items;
select * from order_items where order_id = 6 AND (unit_price * quantity ) > 30;


select * from products where quantity_in_stock in (49,38,72);

select * from customers  where birth_date between '1990-1-1' and '2000-1-1';


select * from customers where phone like '%9';  -- it will print all those phone numbers which ends up with 9
select * from customers where phone like '719-724-7869'; -- it will pick up only those which have the same no as mentioned
select * from customers where phone like '%9%'; -- find out the all the phone number in which 9 exits

-- Exercise
	-- Get the Customer whose:
		-- address contains trail or avenue
        -- phone number ends up with 9
        
select * from customers where address like '%Trail%' OR '%avenue%';
select * from customers where phone like '%9';


-- Exerecise:
	-- Get the customers
		-- fisrt name ELKA or AMBUR 
select * 
from customers 
where first_name regexp "elka|ambur";

		-- last name ends with MY or ON
select * 
from customers 
where last_name regexp 'ey$|ON';
		-- last name starts with my or contains SE
select * 
from customers 
where last_name regexp '^my|se'; 
        -- last name contains B followed by R or un
select * 
from customers
where last_name regexp 'B[ru]';
select * 
from customers
where last_name regexp 'Br|Bu';

-- Exercise
	-- Get the orders that are not shippped yet
select * 
from orders 
where shipped_date or shipper_id is null;


select  *, quantity * unit_price as Total_new_price from order_items
where order_id = 2
order by quantity * unit_price  ASC;