create database assignment;
use assignment;




create table employee
(
e_id int not null,
e_name varchar(100),
e_dob date,
e_salary float,
primary key(e_id),
d_id int,
 FOREIGN KEY (d_id) REFERENCES departments(d_id)
)

select * from employee;

insert into employee values(12	,'Suryansh','1998-05-30',10000,1);
insert into employee values(100	,'Sandy','1996-05-30',30000,2);
insert into employee values(200	,'harsh','1997-05-30',20000,2);
insert into employee values(300	,'Amar','1998-05-30',60000,4);
insert into employee values(400	,'Amit','2000-06-30',34000,2);
insert into employee values(500	,'dev','1997-01-03',25000,3);
insert into employee values(600	,'mandavi','1999-06-11',28000,4);
insert into employee values(700	,'prajkta','1998-05-05',31000,2);
insert into employee values(800	,'lokesh','2001-11-23',29000,3);
insert into employee values(900	,'Ashish','1999-08-10',36000,4);
insert into employee values(101,'sreepriya','2000-03-21',30000,5);
insert into employee values(102,'abhilash','1997-05-30',20000,5);
insert into employee values(103,'prajjwal','1998-05-30',60000,4);
insert into employee values(104,'pooja','1996-05-30',30000,1);
insert into employee values(105,'kavita','1997-05-30',20000,2);
insert into employee values(106,'krishna','1998-05-30',60000,4);
insert into employee values(107	,'Shubham','1996-05-30',30000,1);
insert into employee values(108	,'Bapu','1997-05-30',20000,2);
insert into employee values(109	,'Govind','1998-05-30',60000,5);
insert into employee values(110	,'nitin','1996-05-30',30000,2);


create table departments
(
d_id int not null,
d_name varchar(100),
primary key(d_id)
)

select * from departments;

insert into departments values(1,'HR');
insert into departments values(3,'testing');
insert into departments values(2,'delivery');
insert into departments values(4,'development');
insert into departments values(5,'Admin');
 
 select count(*) as count,departments.d_name from employee inner join departments
 on employee.d_id=departments.d_id group by departments.d_name order by
 count(*) desc limit 1;