-- create a table , insert data

use employee;

create table employee_details(
emp_id varchar(10) primary key,
emp_name varchar(20) not null,
emp_designation varchar(20),
emp_age int check(emp_age>18)
);
-- insert  into 
insert into employee_details values
("E4001", "Parkash","Hr",23),
("E4002","Pardeep","Manger",28),
("E4003", "Pavan","Asst. Manager",28),
("E4004", "Santosh","Store",25),
("E4005","Thaman", "GM",26);

select * from employee_details;

-- summary
describe employee_details;

-- view  specific columns
select emp_id,emp_name from employee_details;

-- see some specific record
select * from employee_details where emp_id = 'E4003';

-- add one more entry
insert into employee_details values
("E4006","Raj", "Sales head",26);

select * from employee_details;