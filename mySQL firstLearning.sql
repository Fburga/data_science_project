create database booking_system;
show databases;
use booking_system;

create table sales_table(
staff_name varchar(50),
staff_id int primary key,
age int,
gender varchar(10)
);
select *from sales_table;
insert into sales_table values("james samuel", 1, 30, "male");
rename table sales_table to booking_table; -- we renamed the table here
alter table booking_table
add phone_number int;

select *from booking_table;
alter table booking_table
modify column phone_number varchar(15); -- i changed the data type in this place
update booking_table 
set phone_number ="08049383245"
where staff_id = 1;

select *from booking_table;
 
insert into booking_table values
("Aisha james", 2, 58, "female", "09034367687"),
("Bola Tinubu", 3, 80, "male", "07023214565");

select *from booking_table;
alter table booking_table
modify staff_name varchar(50)
after staff_id; -- i changed the position of the column

select *from booking_table;

select *from booking_table
where age < 50
limit 1;

select staff_name as Employee_name from booking_table;

select staff_name as Employee_name, upper(staff_name) as Capital_staff_name 
from booking_table;

select staff_name as Employee_name, lower(staff_name) as Lower_staff_name 
from booking_table;

select *from booking_table;
