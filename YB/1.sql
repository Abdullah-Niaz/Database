create database university;
use university;

create table personal(
	ID INT ,
    Name varchar(30),
    Birth_Date date,
    Phone Varchar(14),
    Gender Varchar(1)
);

Insert INTO personal 
values 
	(2,"omer","1990-09-09",'034343423',"M"),
	(3,"Ali","1990-09-09",'034343423',"M"),
    (4,"Hamza","1990-09-09",'034343423',"M"),
    (5,"Talha","1990-09-09",'034343423',"M");

select * from personal;