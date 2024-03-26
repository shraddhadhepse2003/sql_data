use carshowroom ;
create table college(cid int primary key,c_name varchar(20),location varchar(20));
create table student1(sid int primary key,s_name varchar(20),s_age int,s_city varchar(20),cid int,foreign key(cid) references college(cid));
desc college;
desc student1;
insert into college values(1,'abc','mumbai'),(2,'def','pune'),(3,'hij','mumbai'),(4,'klm','pune');
insert into student1 values(1,'shraddha',20,'ratnagiri',1),(2,'surbhi',22,'sangmeshwar',2),
(3,'mandira',25,'ratnagiri',3),
(4,'anushka',20,'nashik',4),(5,'shalvi',22,'devrukh',3),(6,'hrishita',23,'ratnagiri',2),(7,'anushka',27,'lanja',4),
(8,'gauri',22,'nagpur',null),(9,'purva',23,'nanded',1),(10,'mitali',23,'ratnagiri',null);
select * from student1;
select * from college;
select student1.s_name,student1.s_city as student1_address,college.c_name as college_name,college.location as college_address from college 
inner join student1 on student1.cid = college.cid;
select * from college inner join student1 on  student1.cid=college.cid;
select * from student1 natural join college;

                   -- 20-03-2024--
select * from college left join student1 on student1.cid=college.cid;
select * from student1 left join college on student1.cid=college.cid;
select * from college right join student1 on student1.cid=college.cid;
select * from student1 right join college on student1.cid=college.cid;

select * from college left join student1 on student1.cid=college.cid
union
select * from college right join student1 on student1.cid=college.cid;

-- self join--
create table emp1 (eid int primary key ,ename varchar(20),designation varchar(20),mid int);
insert into emp1 values(1,'shraddha','dev',5),(2,'anushka','HR',4),(3,'shalvi','dev',5),(4,'mandira','CEO',0),(5,'riya','manager',4);
drop table emp1;
select * from emp1;
select e.ename as employee_name,e.designation,m.ename as manager_name,m.designation from emp1 as e 
inner join emp1 as m on m.eid=e.mid;

select e.ename as employee_name,e.designation,m.ename as manager_name,m.designation from emp1 as e, 
emp1 as m where e.mid=m.eid;

-- cross join --
select student1.s_name,college.c_name from student1 cross join college;
select student1.s_name,college.c_name from student1,college;

-- 21-03-2025--
select * from student1;
select sid from student1 where s_age between 20 and 23;
select* from student1 where sid>all(select sid from student1 where s_age between 20 and 23);
select* from student1 where sid>some(select sid from student1 where sid between 1 and 3);









-- i havr created,why created,strength,weakness--
reverse engineering