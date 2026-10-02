show databases;
create database full_stack_test;
use full_stack_test;
create table full_stack_test_table;
show tables;
create table students(
snumber int,
sname varchar(20));

show tables;
desc students;

alter table students add gender varchar(1);
desc students;

alter table students drop gender;
alter table students modify sname varchar(30);
alter table students rename column sname to students_name ;

alter table students add email varchar(20) not null;
 desc students;
 
 select * from information_schema.table_constraints where
table_schema='full_stack_test' and table_name='students';

select * from information_schema.key_column_usage where
table_schema='full_stack_test' and table_name='students';


 
 alter table students add unique(students_name);
 
 show index from students;
 
 create table students1(
snumber int,
sname varchar(20));

 alter table students1 add primary key(sname);
 
  alter table students add foreign key(students_name) references students1(sname);
  alter table students1 modify sname varchar(30) unique;
  
  desc students1
  
  select * from employees;
  
  select * from employees where salary>5000;
  select * from employees where DOJ>'2024-05-20';
  
  
  select * from employess where salary>5000 and DOJ>'2024-0520';
  
 select * from employess where salary>5000 or DOJ>'2024-0520';
 
 
 create table employee (
eid int,
ename varchar(30),
doj date,
salary float,
did int
);



create table department (
did int primary key,
dname varchar(30)
);

insert into 



insert into employee values(1,'Anil','2024-01-28',59000,101);
insert into employee values(2,'Karthik','2025-03-28',59000,102);
insert into employee values(3,'Ali','2023-01-28',59000,102);
insert into employee values(4,'Suhas','2024-01-28',59000,101);
insert into employee values(5,'Mohamad','2020-01-28',79000,102);


alter table employee add pid int;

use full_stack_test

create table project(pid int primary key, pname varchar(20));

alter table employee add pid int;
alter table employee add foreign key(pid) references project(pid);

desc pid;


select * from project;
select * from department;


insert into project values(201,'Banking');
insert into project values(202,'Insurance');
insert into project values(203,'Banking');

insert into department values(101,'ORCALL');
insert into department values(102,'ENG');


alter table employee add foreign key(did) references department(did);
alter table employee add foreign key(pid) references project(pid);


select * from employee 
where 
pid in (select pid from project where pname='Banking')
and 
did in (select did from department where dname='ORCALL');



create table country ( cid int primary key, cname varchar(10));
create table state(sid int primary key, sname varchar(10), 
cid int, foreign key(cid) references country(cid));


insert into country values(1,'India');
insert into country values(2,'Srilanka');
insert into country values(3,'Bangladesh');
insert into country values(4,'Australia');


insert into state values(101,'UP',1);
insert into state values(102,'columbia',2);
insert into state values(103,'Dhaka',3);
insert into state values(104,'New york',null);
insert into state values(105,'Kerala',1);


update employee set pid = '201' where eid = '1' ;
update employee set pid = '202' where eid = '2' ;
update employee set pid = '202' where eid = '3' ;
update employee set pid = '203' where eid = '4' ;
update employee set pid = '201' where eid = '5' ;




set sql_safe_updates =0;


select * from employee;

desc department1; 

desc employee;

select * from employee order by salary desc limit 2;

select * from employee;

select ename from employee where ename like '__i%';



insert into department (did,dname) values (101,banking);


select max(salary) from employee where salary <
(select max(salary) from employee);

select min(salary) as MIN_Salary from (select salary from employee order by salary desc limit 3) as res;

select salary from (select salary from employee order by salary desc limit 3) as res;

select * from employee where salary in (select min(salary) from (select distinct salary from employee order by salary desc limit 3) as res);


select * from employee where salary in (select max(salary) from (select distinct salary from employee order by salary asc limit 3) as res);

select min(salary) as MIN_Salary from (select salary, name from employee order by salary desc limit 3) as res;

select salary, ename from employee order by salary desc limit 3;


select 


select salary from employee order by salary desc limit 3;



select * from country;
select * from state;
# inner join
select * from state s inner join country c where s.cid=c.cid;
#left join     left table          right table
select * from state s left join country c ON s.cid=c.cid; 

#right join 
select * from state s right join country c ON s.cid=c.cid; 

#full outer join 

select * from state s left join country c ON s.cid=c.cid
Union 
select * from state s right join country c ON s.cid=c.cid; 


select order_id , 

use glvcjunedb;

create table Customers(
customer_id int primary key,
name varchar(50),
email varchar(100),
created_at date
);


create table Orders(
order_id int primary key,
customer_id int,
order_date date,
amount float,
status varchar(10),
foreign key (customer_id) references customers(customer_id)
);

create table Payments(
payment_id int primary key,
order_id int,
payment_date date,
payment_mode varchar(20),
amount_paid float,
foreign key (order_id) references orders(order_id)
);


INSERT INTO Customers VALUES
(1, 'John Doe', 'john@example.com', '2023-01-01'),
(2, 'Jane Smith', 'jane@example.com', '2023-01-10'),
(3, 'Alice Brown', 'alice@example.com', '2023-02-01'),
(4, 'Bob Lee', 'bob@example.com', '2023-02-15'),
(5, 'Tom Hanks', 'tom@example.com', '2023-03-05'),
(6, 'Ellen Page', 'ellen@example.com', '2023-03-10'),
(7, 'Nancy Drew', 'nancy@example.com', '2023-04-01'),
(8, 'Steve Jobs', 'steve@example.com', '2023-04-15'),
(9, 'Bill Gates', 'bill@example.com', '2023-05-01'),
(10, 'Elon Musk', 'elon@example.com', '2023-05-10'),
(11, 'Satya Nadella', 'satya@example.com', '2023-06-01'),
(12, 'Sundar Pichai', 'sundar@example.com', '2023-06-10'),
(13, 'Mark Zuck', 'mark@example.com', '2023-07-01'),
(14, 'Jeff Bezos', 'jeff@example.com', '2023-07-15'),
(15, 'Larry Page', 'larry@example.com', '2023-08-01'),
(16, 'Sergey Brin', 'sergey@example.com', '2023-08-10'),
(17, 'Tim Cook', 'tim@example.com', '2023-09-01'),
(18, 'Oprah Winfrey', 'oprah@example.com', '2023-09-10'),
(19, 'Sheryl Sandberg', 'sheryl@example.com', '2023-10-01'),
(20, 'Jack Ma', 'jack@example.com', '2023-10-10');




INSERT INTO Orders VALUES
(101, 1, '2023-01-05', 250.00, 'Completed'),
(102, 2, '2023-01-15', 150.00, 'Pending'),
(103, 3, '2023-02-05', 300.00, 'Completed'),
(104, 4, '2023-02-20', 120.00, 'Completed'),
(105, 5, '2023-03-06', 200.00, 'Cancelled'),
(106, 6, '2023-03-15', 180.00, 'Completed'),
(107, 7, '2023-04-05', 210.00, 'Completed'),
(108, 8, '2023-04-20', 400.00, 'Pending'),
(109, 9, '2023-05-03', 220.00, 'Completed'),
(110, 10, '2023-05-12', 175.00, 'Completed'),
(111, 11, '2023-06-02', 130.00, 'Completed'),
(112, 12, '2023-06-12', 145.00, 'Pending'),
(113, 13, '2023-07-02', 155.00, 'Completed'),
(114, 14, '2023-07-18', 310.00, 'Completed'),
(115, 15, '2023-08-02', 275.00, 'Cancelled'),
(116, 16, '2023-08-15', 185.00, 'Completed'),
(117, 17, '2023-09-02', 205.00, 'Pending'),
(118, 18, '2023-09-12', 250.00, 'Completed'),
(119, 19, '2023-10-05', 300.00, 'Completed'),
(120, 20, '2023-10-12', 260.00, 'Completed');

INSERT INTO Orders VALUES
(121, 1, '2023-010-05', 255.00, 'Completed');

INSERT INTO Payments VALUES
(201, 101, '2023-01-06', 'Credit Card', 250.00),
(202, 103, '2023-02-06', 'PayPal', 300.00),
(203, 104, '2023-02-21', 'Debit Card', 120.00),
(204, 106, '2023-03-16', 'Credit Card', 180.00),
(205, 107, '2023-04-06', 'UPI', 210.00),
(206, 109, '2023-05-04', 'Credit Card', 220.00),
(207, 110, '2023-05-13', 'PayPal', 175.00),
(208, 111, '2023-06-03', 'Credit Card', 130.00),
(209, 113, '2023-07-03', 'Debit Card', 155.00),
(210, 114, '2023-07-19', 'UPI', 310.00),
(211, 116, '2023-08-16', 'Credit Card', 185.00),
(212, 118, '2023-09-13', 'PayPal', 250.00),
(213, 119, '2023-10-06', 'Debit Card', 300.00),
(214, 120, '2023-10-13', 'UPI', 260.00),
(215, 102, '2023-01-16', 'UPI', 150.00),
(216, 112, '2023-06-13', 'PayPal', 145.00),
(217, 105, '2023-03-07', 'Credit Card', 200.00),
(218, 108, '2023-04-21', 'Debit Card', 400.00),
(219, 115, '2023-08-03', 'UPI', 275.00),
(220, 117, '2023-09-03', 'PayPal', 205.00);



select O.order_id, C.name

from Orders as O left join Customers as C on O.customer_id = C.customer_id;

select * from orders where amount>200;

select * from payments where payment_mode in ('Credit Card');

select * from customers where created_at like'%2023%';

select * from orders;
select * from payments;
select * from customers;
select * from payments where payment_mode = 'Credit Card';

select c.name, count(o.order_id) as order_count from customers as c left join orders as o on c.customer_id=o.customer_id group by c.customer_id having order_count>1;

select c.name from customers as c left join orders as o on c.customer_id=o.customer_id ;

select count(customer_id) from orders group by customer_id;


select payment_mode, count(payment_mode) as payment_mode_count from payments group by payment_mode having payment_mode_count >3;

select month(payment_date) as 'month' , sum(amount_paid) from payments group by month(payment_date);

select month(payment_date) as 'month' , count(payment_mode) as 'PaymentMode' from payments group by month(payment_date);

select c.customer_id, sum(p.amount_paid) as Total_amount_apid from customers c join orders o on c.customer_id = o.customer_id join payments p on o.order_id= p.order_id group by c.customer_id having Total_amount_apid > 300;

select payment_mode, count(payment_mode) as payment_mode_count from payments group by payment_mode order by payment_mode_count desc limit 1; 


select status, count(*) as status_count from orders group by status having status_count >2;

select max(amount_paid) as max_amount_paid, payment_mode, min(amount_paid) as min_amount_paid from payments group by payment_mode;


select * from orders;
select * from payments;
select * from customers;

select c.customer_id from customers c join orders o on c.customer_id=o.customer_id join payments p on o.order_id=p.order_id group by c.customer_id having count(distinct(p.payment_mode))>1;


select c.customer_id, count(o.order_id) from customers c left join orders o on c.customer_id=o.customer_id  group by customer_id;


select * from customers c left join orders o On c.customer_id=o.customer_id left join payments p On o.order_id=p.order_id where p.payment_id is NULL;

select month(order_date) from orders;

select * from orders o left join payments p on o.order_id=p.order_id where month(o.Order_date) = '5' and year(o.Order_date) = '2023'; 