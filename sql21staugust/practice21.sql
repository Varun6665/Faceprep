create database college;
use college;

create table students(
    rollno int primary key,
    name varchar(50),
    branch varchar(10),
    year int
);

insert into students values
(1,'Ravi','CSE',2),
(2,'Anita','ECE',1),
(3,'Kiran','CSE',3),
(4,'Sita','ECE',2),
(5,'Arun','CSE',1);

select * from students;

update students set year=3 where rollno=2;

delete from students where rollno=5;

select * from students where branch='CSE';
