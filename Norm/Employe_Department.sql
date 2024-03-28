use university;

CREATE TABLE employe(
	EmployeID INT Primary KEY,
    EmployeName VARCHAR(20),
    EmployeDeptartment VARCHAR(20)
);

CREATE TABLE project(
	ProjectID int PRIMARY KEY,
    SuperVision VARCHAR(20)
);

drop table employeProject;
CREATE TABLE employeProject(
	EmployeID INT,
    ProjectID INT,
	FOREIGN KEY (EmployeID) REFERENCES employe(EmployeID),
    FOREIGN KEY (ProjectID) REFERENCES project(ProjectID),
	PRIMARY KEY (EmployeID, ProjectID)
);


INSERT INTO employe
values (1,"Ali","HR"),
		(2,"Omer","IT"),
        (3, "Rehan","Finance" );
        
        
select * from employe;
insert into project 
values  (1,"Faheem"),
		(2,"Sad"),
		(3,"abbas");

insert into employEproject 
values	(1,1),
		(2,3),
        (3,2);
select * from project;
show tables;
select * from employeproject;
Select * from 
	employe
join project
where EmployeID = ProjectID;