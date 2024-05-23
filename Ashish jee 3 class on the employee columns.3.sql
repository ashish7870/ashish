-- update
USE employee;
select * from employee_details;
-- updae the details in a table e4001
update employee_details
set emp_name = 'parkash  S',emp_age=22
where emp_id = 'E4001'; 
select * from employee_details; 

-------------------------------------------------------------------
-- Alter
-- ADD
alter table employee_details Add emp_experience int;
select * from employee_details;

-- isert data into the new column

update employee_details
set emp_experience=
case
when emp_id="E4001" then 3
when emp_id="E4002" then 4
when emp_id="E4003" then 1
when emp_id="E4004" then 10
else null end
where  emp_id between "E4001" and "E4006";
select * from employee_details;
-- drop 
 alter table employee_details Drop Column  emp_experience;
-- modify
desc employee_details;
alter table employee_details modify emp_name varchar(50);

desc employee_details;

-- Rename 
alter table employee_details rename column emp_id to name_of_id;
select * from employee_details;

-- truncate
truncate table employee_details;
select * from employee_details;





