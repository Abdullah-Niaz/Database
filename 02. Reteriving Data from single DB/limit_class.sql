-- in case you have a ecommerce website, and you want to limit 3 person data on each page to be shown 
select * from customers limit 3;

select * 
from customers
limit 0,3;

select * from customers  where points > 3000 limit 3;