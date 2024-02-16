create table person(
	PersonID int not null auto_increment,
	LastName varchar(30) not null,
    FirstName varchar(30) not null,
    Age int not null,
    primary key(PersonID)
);

INSERT INTO person
values (1,"omer","Ali",20),(2,"Talha","Azhar",23),(3,"Hamza","Tariq",24);

select * from person;

create table Order_table(
	OrderID int not null,
    OrderNumber int not null,
    PersonID int,
    primary key(PersonID),
    foreign key(PersonID) references person(PersonID)
);

insert into Order_table
values (234,2431,1),(235,2431,2);

select * from Order_table;

-- if table is already created then follow up this method
ALTER TABLE Orders
ADD CONSTRAINT FK_PersonOrder
FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);