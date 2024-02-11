use university;
create table personal(
	ID INT NOT NULL UNIQUE,
    NAME VARCHAR(30) NOT NULL,
    Gender VARCHAR(6) NOT NULL,
    City VARCHAR(50) NOT NULL DEFAULT 'LAHORE'
);

SELECT * FROM personal;

INSERT INTO personal()
VALUES 
	(1,"Omer","Male","Lahore"),
    (2, "Aysha","Femal",default);
;