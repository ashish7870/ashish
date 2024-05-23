 
 create database joins;
 use joins;
 
 -- create employw and departmenttable
 create table employee
 (empid varchar(10) unique,
 empname varchar(50),
 salary int,
 deptid varchar(10) primary key);
 
 insert into employee values
 ('E1', 'john', 45000,'D1'),
 ('E2', 'marry', 72000,'D2'),
 ('E3', 'steve', 85000,'D3'),
 ('E4', 'halen', 60000,'D4'),
 ('E5', 'joe', 35000,'D5');
 select * from employee;
 
 -- Department table
 create table department
 
 (deptid varchar(10) primary key,
 deptname varchar(10));

 insert into department values
 ('D1','HR'),
 ('D2','Admin'),
 ('D3','Sales'),
 ('D4','IT'),
 ('D5','HR');
 select * from department;
 
 -- inner join
 select e.empid,e.empname,e.salary,e.deptid,d.deptname
 from employee as e INNER JOIN department as d
 on e.deptid=d.deptid;
 
 -- left  join 
  select e.empid,e.empname,e.salary,e.deptid,d.deptname
 from employee as e LEFT JOIN department as d
 on e.deptid=d.deptid;
 
 -- right join
 select e.empid,e.empname,e.salary,e.deptid,d.deptname
 from employee as e Right JOIN department as d
 on e.deptid=d.deptid;
 
 -- full outer join 
 
 select e.empid,e.empname,e.salary,e.deptid,d.deptname
 from employee as e LEFT JOIN department as d
 on e.deptid=d.deptid
 UNION
 select e.empid,e.empname,e.salary,e.deptid,d.deptname
 from employee as e Right JOIN department as d
 on e.deptid=d.deptid;
 
 
 -- cross 
 select e.empid, d.deptname from employee as e
  cross join department as d;
 



 
 
 
 
 
 
 