create database org123;
use org123;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
		(007, 'Satish', 'Kumar', 75000,  '2014-01-20 09:00:00', 'Account'),
		(008, 'Geetika','Chauhan', 90000,  '2014-04-11 09:00:00', 'Admin');

-- Arithmetic Operators
select Salary+5000 as UpdatedSalary from Worker;
select Salary/2 as HalfSalary from Worker;

-- Comparison Operators
select * from Worker where Salary > 200000;
select * from Worker where Department = 'Admin';

-- Logical Operators
select * from Worker where Salary > 200000 and Department = 'Admin';
select * from Worker where Salary > 200000 or Department = 'Admin';

-- LIKE Operator
select * from Worker where First_Name like 'V%';
select * from Worker where First_Name like '%a%';

-- BETWEEN Operator
select * from Worker where Joining_Date between '2014-03-01' and '2014-11-27';
select * from Worker where Salary between 80000 and 200000;

-- IN Operator
select * from Worker where First_Name in ('Vivek','Niharika');
select * from Worker where Department in ('HR','Account');

-- NOT Operator
select * from Worker where Department != 'Admin';
select * from Worker where Salary not between 100000 and 300000;

select* from worker;

-- more operations
select* from worker Where Salary>200000 and Department = 'Admin';
 select* from worker Where Salary>200000 or Department = 'Admin'; 
 select * from worker where first_name like '%a%' or Salary<300000; 
 select * from worker where joining_date > '2014-03-01' and Worker_id > 1; 
 select * from worker where joining_date between '2014-03-01' and '2014-11-27'; 
 select * from worker where first_name in ('Vivek','Niharika');
 select Salary from worker where Department != 'Admin';
 
 -- questions
 select * from worker where department not in ('Admin','HR') and Salary between 70000 and 300000;
 select * from worker where first_name like 'V%' and Salary >= 200000;
 select * from worker where department not in ('Admin') and Salary < 10000;
 
 
 -- aggregation functions
 SELECT COUNT(Worker_id) AS total_workers FROM worker;
 Select sum(Salary) as total_salary from worker;
 Select avg(Salary) as avg_salary from worker where department = 'Admin';
 select max(joining_Date) as latest_date from worker;
 select min(Salary) as least_salary from worker;
 
select min(Salary) as hrmin_salary from worker where department = 'HR';
  
  
  -- Questions
  select avg(Salary) as avgsalaryadmin from worker where department = 'Admin';
  select sum(Salary) as sumof_salary from worker where department in ('hr','Admin');
select count(*) as totalnames from worker where first_name like 'V%';
select sum(Salary) as wholesalary from worker where salary between 50000 and 200000;

-- condition logic
SELECT worker_id,
       first_name,
       salary,
       CASE
           WHEN salary >= 80000 THEN 'High Salary'
           WHEN salary BETWEEN 40000 AND 79999 THEN 'Medium Salary'
           ELSE 'Low Salary'
       END AS salary_level
FROM worker;
