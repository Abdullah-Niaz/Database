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

