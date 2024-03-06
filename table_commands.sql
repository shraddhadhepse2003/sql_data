use shraddha;
select * from employee;

use shraddha;
use revision;
select * from student;
alter table student drop grade;

use shraddha;
drop table employee;
show tables;

use shraddha;
create table student(roll_no int not null,fname varchar(50),lname varchar(50),contact int unique);
desc student;
alter table student add primary key(roll_no);

insert into student values(1,'shraddha','dhepse',9475848399);
alter table student modify contact bigint unique;
desc student;
select * from student;
insert into student values(2,'surbhi','chavan',6489330765);
insert into student values(3,'anushka','bhasme',6578449037);
insert into student values(4,'mandira','malavde',9047836736);
insert into student values(5,'rohit','khetri',8589456789);
insert into student values(6,'yash','yadav',8567995647);
insert into student values(7,'shalvi','ghadshi',9058945630);
insert into student values(8,'gauri',',mane',9058945630);
insert into student values(9,'hrishita','mane',9058945687);
insert into student values(10,'priyanka','jadhav',9077945630);
insert into student values(11,'khushi','londhe',9087654354),(12,'harshada','londhe',8976590769);

truncate table student;
update student set fname='shraddha' where roll_no=4;
update student set fname='mandira',lname='dhepse' where roll_no=4;
update student set fname='mandira',lname='malavde' where roll_no=4;

alter table student add column city varchar(20) default 'mumbai';
alter table student modify roll_no int auto_increment;
insert into student(fname,lname,contact) values ('shraddha','dhepse',8695048976);
alter table student auto_increment=100;
insert into student(fname,lname,contact) values ('shraddha','dhepse',8695048999);








