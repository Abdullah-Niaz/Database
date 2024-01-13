select * from products
where quantity_in_stock = 49 or quantity_in_stock = 38 or quantity_in_stock = 72;

select * from customers;
select customer_id,first_name,last_name,phone,points from customers where Points >= 1000 and Points <=3000 and points is not null;
