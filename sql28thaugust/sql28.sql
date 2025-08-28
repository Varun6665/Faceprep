use org123;
show tables;
select * from worker;

select department,first_name from worker where department = 'HR'
order by first_name asc;

select Last_name,department from worker where department = 'Admin'
order by Last_name desc;

select sum(salary),department from worker 
group by department;

select count(worker_id),department from worker
group by department;

SELECT department, AVG(salary),first_name AS avg_salary
FROM worker
WHERE last_name LIKE '%a%'
GROUP BY department;


select* from worker;

-- 1. Count employees not in HR or Admin.
select count(*) as employees from worker where department not in ('Admin','HR');



-- 2. Find the highest salary in each department.

select max(salary),department as maximum from worker
group by department;

#trim
insert into worker values(
12,"   veeru  ","  a ",1000000,'2014-05-20 09:12:00',"Management");
select worker_id,ltrim(first_name) as cleaned_first_name from worker;
SELECT WORKER_ID, RTRIM(FIRST_NAME) AS cleaned_first_name
FROM worker;
select trim(first_name) as cleaned_first_name from worker;
delete from worker where worker_id = 12;

#upper and lower case
select first_name,last_name,upper(first_name),upper(last_name) from worker;
select first_name,last_name,lower(first_name),lower(last_name) from worker;
SELECT CONCAT(UPPER(FIRST_NAME), ' ', UPPER(LAST_NAME)) AS full_upper,
       CONCAT(LOWER(FIRST_NAME), ' ', LOWER(LAST_NAME)) AS full_lower
FROM worker;
select concat(upper(substring(first_name,1,1)),lower(substring(first_name,2))) as proper_first_name,
concat(upper(substring(last_name,1,1)),lower(substring(last_name,2))) as proper_last_name from worker;


#offset-limit
select * from worker order by worker_id limit 5;
select * from worker order by worker_id 
limit 7 offset 1;
select * from worker order by worker_id 
limit 1 offset 3;
SELECT *
FROM worker
ORDER BY worker_id DESC
LIMIT 3;

select * from(
	select *,row_number() over (order by worker_id) as  rn 
    from worker
) as temp
where rn>5;