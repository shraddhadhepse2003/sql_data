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





