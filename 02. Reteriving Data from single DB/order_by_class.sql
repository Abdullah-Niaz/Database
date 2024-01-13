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