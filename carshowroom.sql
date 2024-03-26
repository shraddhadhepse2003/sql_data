-- case--
use carshowroom;
create table case1(id int,department varchar(20),name varchar(20),marks float);
insert into case1 values(1,'abc','uuu',80),(2,'abd','yyy',50),(3,'abo','lll',60.9),(4,'opc','ppp',79),(5,'auu','sss',90);
select * from case1;
select id,department,name,marks,
case when marks>=35 and marks<60 then 'third class'
     when marks>=60 and marks<80 then 'second class'
     when marks>=80 and marks<=100 then 'first class'
	end as result from case1 order by marks desc;








