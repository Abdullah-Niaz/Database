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