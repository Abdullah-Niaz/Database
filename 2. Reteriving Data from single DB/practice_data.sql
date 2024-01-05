use sql_store;

select * from customers;

-- Round 1
 
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