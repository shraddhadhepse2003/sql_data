use shraddha;
create table user(uid int,uname varchar(20),primary key(uid));
desc user;
create table order12(oid int primary key,pname varchar(20),uid int,foreign key(uid) references user(uid));
desc order12;
insert into user values(1,'aaa'),(2,'bbb'),(3,'ccc');
select * from user;
insert into order12 values(1,'milk',2),(2,'bread',2),(3,'butter',1);
select * from order12;
select user.uname,order12.pname from order12 inner join user on user.uid=order12.uid;
select * from order12 inner join user on user.uid=order12.uid;

select * from order12 where uid is null;
select * from order12 where uid is  not null;

create table product123(pid int primary key,pname varchar(20));
create table order1234(oid int primary key,foreign key(uid) references user(uid),foreign key(pid) references product123(pid));

create table payment(pay_id int primary key,oid int,foreign key(oid) references order1234(oid));
insert into product123 values(420,'bike'),(421,'laptop'),(422,'mobile');
insert into order1234 values ()
