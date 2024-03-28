use university;

create table student(
	Student_ID int primary key,
    Student_Name varchar(30)
);

create table course_n(
	Course_ID int primary key, 
	Course_Name varchar(30)
);


create table student_course(
	Student_ID INT,
    Course_ID INT,
    foreign KEY (Student_ID) REFERENCES student(Student_ID),
    foreign KEY (Course_ID) REFERENCES course_n(Course_ID),
    primary KEY (Student_ID,Course_ID)
);


insert into student 
value 	(1,"Ali"),
		(2,"Omer"),
		(3,"Talha");
        
insert into course_n 
value 	(1,"java"),
		(2,"C"),
        (3,"Python");
        
insert into student_course 
value 	( 1,1), 
		(2,3), 
        (3,2);
        
select * from course_n;

select * from student;

select student.Student_Name as Enroller,
		course_n.Course_Name as Course
from student	
join course_n
where student_ID = course_ID;