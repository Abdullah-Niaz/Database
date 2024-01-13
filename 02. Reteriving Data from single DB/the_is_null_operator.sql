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