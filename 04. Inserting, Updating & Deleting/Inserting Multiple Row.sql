INSERT INTO shippers ( name ) 
values 
	('Sahbaz'),
	('Hamza'),
    ('Talha'),
    ('Omer');

SELECT * FROM shippers;

-- insert into products 
INSERT INTO products
	(product_id,name,quantity_in_stock,unit_price)
VALUES
	(default,'Omer',80,2.3),
    (default,'Hamza',90,3.3),
    (default,'Talha',95,4.3);
    
select * from products;