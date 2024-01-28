use sql_store;

select * from orders;

create table orders_archieved as 
select * from orders;

select * from orders_archieved;

insert into orders_archieved
select * from orders
where order_date > '2000-05-06';

select * from orders_archieved;