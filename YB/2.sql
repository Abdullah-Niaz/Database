use university;
drop table personal;
create table personal(
	ID INT NOT NULL UNIQUE,
    NAME VARCHAR(30) NOT NULL,
    Gender VARCHAR(6) NOT NULL,
    City VARCHAR(50) NOT NULL DEFAULT 'LAHORE'
);

SELECT * FROM personal;

INSERT INTO personal(ID,Name,Gender,City)
VALUES 
	(6,"Omer","M",default);
    
update personal
set ID = 1 and City = "Multan"
where ID = 6;

SELECT * FROM personal;
select count(Gender)
from personal;
