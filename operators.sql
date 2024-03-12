use practice;
create table student_data(id int primary key auto_increment,name varchar(20) not null,department varchar(20)not null,marks float not null,paid_fees int,attendance int);
desc student_data;
insert into student_data(name,department,marks,paid_fees,attendance) values ('shraddha','IT',90,25000,80),('surbhi','mechanical',87.2,30000,70),('anushka','electronics',85,35000,75),('mandira','electronics',78,30000,92),('shalvi','mechanical',78.5,20000,88),('riya','IT',79,40000,70),('dik','electronics',70,45000,84),('purva','mechanical',90,25000,80),('sejal','IT',90,25000,80);
select * from student_data;
insert into student_data(name,department,marks,paid_fees,attendance) values ('bhumi','IT',86.2,35000,88);
select * from student_data where name like 's%';
select * from student_data where name like '%s';
select * from student_data where name like '%a';
select * from student_data where name like 's%a';
select * from student_data where name like '_a%';
select * from student_data where name like '%h_';
select * from student_data where name like '%r_';
select * from student_data where name like 's______a';
select * from student_data where name like 's%i';

-- limit
select * from student_data limit 3;
-- we have found first high amount from table
select * from student_data order by paid_fees desc;
select * from student_data order by paid_fees desc limit 3;
select distinct paid_fees from student_data order by paid_fees desc limit 1;
select distinct paid_fees from student_data order by paid_fees desc limit 1,1;
select distinct paid_fees from student_data order by paid_fees desc limit 2,1;

select distinct paid_fees from student_data order by paid_fees limit 1;

select * from student_data where id in (2,5,7);

update student_data set paid_fees =paid_fees+((paid_fees*1.5)*100) where id in(3,7);

select * from student_data where id not in(2,5);
select * from student_data where id between 3 and 8;
select * from student_data where paid_fees between 20000 and 25000;
select * from student_data where paid_fees=20000 and paid_fees<=25000;

-- set operator
create table table1(id int,name varchar(20));
create table table2(id int,name varchar(20));
insert into table1 values (1,'shraddha'),(2,'surbhi'),(3,'anushka'),(4,'shalvi'),(5,'mandira');
insert into table2 values(1,'anushka'),(2,'surbhi'),(3,'hrishita'),(4,'purva'),(5,'mandira');
select * from table1;
select * from table2;

select * from table1 union select * from table2;
select * from table1 union all select * from table2;
select * from table1 intersect select * from table2;
select * from table1 except select * from table2;

select id from table1 union select id from table2;




