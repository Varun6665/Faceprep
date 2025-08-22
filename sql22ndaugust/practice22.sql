show databases;
create database faceprep;
use faceprep;
create table ace(
sid int default 0,
sname varchar(30) default 'newuser',
smarks int,
sroll int,
spos varchar(15)
);
show tables from faceprep;
desc ece;
select * from ece;
alter table ece
drop column sid;
show tables from faceprep;
use faceprep;
insert into ce (smarks,sname)
values(1,'Varun');
desc ce;
select * from ce;
insert into ce values (2,'Veeru',3,10,'manager')
insert into ce values (3,'Vijay',7,17,'CEO')
update ce
set sname='Vijaya'
where smarks=7;
select distinct sroll from ce;
select * from ace
order by sroll asc;

delete from ce
where sroll = 12;

insert into ace values(2,'Vijaya',28,11,'acting director');
insert into ace values(3,'Viyaan',13,13,'sub manager');
insert into ace values(4,'Veeru',38,14,'propreiter');
alter table ace
drop column smarks;
show databases
show tables;
select * from oce;
alter table ace
add column mobileno int4;
update ace 
set mobileno = 98765
where sname ='Varun';
alter table oce rename column
sroll to rollno;
update oce
set rollno = 21
where sid = 3;
update oce 
set mobileno=12456
where sid>0;
update oce set sid = sid+1;
show databases
use faceprep
delete from oce
where sid = 3;
select * from oce

CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,   -- Auto-increment ID
    emp_name VARCHAR(50) NOT NULL,           -- Employee name
    emp_role VARCHAR(30) DEFAULT 'Intern',   -- Default value
    salary DECIMAL(10,2)                     -- Salary
);


INSERT INTO employees (emp_name, salary) VALUES ('Varun', 30000); -- role = 'Intern' by default
INSERT INTO employees (emp_name, emp_role, salary) VALUES ('Rahul', 'Developer', 50000);
INSERT INTO employees (emp_name, salary) VALUES ('Priya', 40000);

SELECT * FROM employees;

UPDATE employees
SET salary = 60000
WHERE emp_name = 'Rahul';


DELETE FROM employees
WHERE emp_name = 'Priya';

START TRANSACTION;

INSERT INTO employees (emp_name, salary) VALUES ('Anita', 35000);
INSERT INTO employees (emp_name, emp_role, salary) VALUES ('Kiran', 'Manager', 75000);

SAVEPOINT sp1;
INSERT INTO employees (emp_name, salary) VALUES ('Ravi', 28000);

ROLLBACK TO sp1;

COMMIT;


SELECT * FROM employees;
Delete  from employees 
where emp_name ='Ravi';

SET autocommit = 0;




