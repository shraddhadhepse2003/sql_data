-- similar entry group=groupby(always come with aggregate function) and having
-- aggregate function  max(),min(),sum(),avg(),count()

-- aggregate function
use practice;
select * from student_data;
select max(marks) from student_data;
select min(marks) from student_data;

select count(id),department from student_data group by department;

select * from student_data where marks not in(90);
select count(id),department from student_data where marks not in (90) group by department;

select count(id),department from student_data where id not in(4,6) group by department having count(id)>1; 
-- In built function
-- string function
select lower('shRaDDha');
select upper('shraddha');
select concat('shraddha',' dhepse');
select replace('welcome to goa','goa','mumbai');
select length('my name is khan');
select length('      abc      ');
select('     abc    ');
select trim('      abc     ');
select substr('my name is khan');

select * from student_data;
select upper(department),upper(name) from student_data;
select upper(department) from student_data;

select length('abc  abc');

-- math method
select abs(-11);
select abs(-23.5);
select ceil(23.5);
select ceil(12.0);
select ceil(34.1);
select round(13.4);
select round(13.7);
select truncate(12.1111111,3);
select mod(10,4);
select mod(5,2);
select mod(25,5);
select floor(10/4);
select floor(5/2);
select pow(3,3);
select sqrt(7);

select * from student_data;
select department,name, round(marks) from student_data;
select department,name, truncate(marks,5) from student_data;
select department,name, mod(marks,10) from student_data;
select department,name sqrt(marks) from student_data where id=5;

-- date function
-- show current /todays date
select curdate();
-- show date and time
select now();
-- show system date and time
select sysdate();
-- last day of month
select last_day(curdate());
select last_day('2023-2-14');
-- difference between dates....always write highest date to first
select datediff('2024-3-24','2024-3-14');

select date_format(curdate(),'%d-%c-%Y');
select date_format(curdate(),'%d-%c-%y');
select date_format(curdate(),'%D-%M-%y');
select date_format(curdate(),'%D-%m-%y');
select date_format(curdate(),'%D-%b-%y');
select date_format(curdate(),'%a,%D-%b-%y');
select date_format(curdate(),'%W,%D-%b-%y');

-- datetime
select date_format(now(),'%W,%D-%b-%Y','%h:%i:%s');


-- date and check 
use practice;
create table abc (id int primary key,dob date not null,age int check(age>=18));
desc abc;
insert into abc values(1,'2024-02-02',18);
select * from abc;
select id,date_format(dob,'%W,%D-%M-%Y') as DOB,age from abc;
select * from abc;


select date_format('2024-08-18','%W');



