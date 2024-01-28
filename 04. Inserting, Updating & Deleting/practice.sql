use sql_store;

select * from customers;
insert into 
	customers(first_name,last_name,birth_date,phone,address,city,state,points)
	values (
		"Ali","omer","1993-03-05",default,"Lahore","karachi","GC",300);
        
INSERT INTO shippers(name)
values("Omer"),
	("Ali"),
    ("Hamza"),
    ("Talha"),
    ("Abbas"),
    ("Bilal");
    
select * from shippers;

select * from products;

INSERT INTO products
		(name,quantity_in_stock,unit_price)
	values
		("Caffe",40,12.2);
	
-- Exercise to insert three row into the product table

INSERT INTO products
		(name,quantity_in_stock,unit_price)
	values
		("Caffe",40,12.2),
        ("Supper",50,12.2),
        ("Gala",60,13.2);