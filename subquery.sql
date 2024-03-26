create database shrads;
use shrads;
create table student_info(sid int primary key auto_increment,name varchar(20) not null,dept varchar(20) not null,percentage float not null);
insert into student_info(name,dept,percentage) values('Harry','IT',95.26),('Mac','CS',98.45),('Rox','Mechanical',75.69),
    ('Shree','IT',85.65),('Ramesh','CS',89.45);
select * from student_info;
select * from student_info where percentage=(select max(percentage) from student_info) ;
select * from student_info where percentage=(select max(percentage) from student_info 
 where percentage < (select max(percentage) from student_info));
 
select * from student_info where sid > some (select sid from student_info where sid between 1 and 3);
-- some means (1 or 2 or 3)
select * from student_info where sid > any (select sid from student_info where sid between 1 and 3);
select * from student_info where sid > all (select sid from student_info where sid between 1 and 3);


select * from student_info where percentage in (select percentage from student_info where percentage>80);

create table robot1(id1 int primary key,name1 varchar(20));
create table robot2(id2 int primary key,name2 varchar(20),id1 int,foreign key(id1) references robot1(id1) on update cascade);
insert into robot1 values(1,'shraddha'),(2,'surbhi'),(3,'anushka');
insert into robot2 values(1,'shraddha',2);
update robot1 set name1='shalvi' where id1=2;
select * from robot1;
delete from robot1 where id1=2;
update robot1 set name1='shalvi' where id1=3;
