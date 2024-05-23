-- drop, update, delete , describe

create database superstore;
use superstore;
create table product(
product_name varchar(15) not null ,
pice int,
exp_date Date);


insert into product values
("chips",20,"2026-02-08"),
("chocolate",5,"2026-08-08"),
("milk",26,"2024-01-05");
select * from product;
-- drop
alter table product drop column pice;
select * from product;
-- Rename
rename table product to product_details;




-- rename the  column
alter table product_details
rename  column exp_date to date_of_exp;

-- drop table
drop table product_details;

---------------------------------------------------------------------------
show variables like 'log_bin';

