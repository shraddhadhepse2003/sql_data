use practice;
create table customer(cust_id int primary key,name varchar(20),occupation varchar(20),age int);
insert into customer values(101,'peter','engineer',32),(102,'joseph','developer',30),
(103,'john','leader',28),(104,'stephen','scientist',45),(105,'suzi','carpenter',26),
(106,'bob','actor',25),(107,null,null,null);
create table order1(order_id int primary key,cust_id int,foreign key(cust_id) references customer(cust_id),prod_name varchar(20),order_date date);
insert into order1 values(1,101,'laptop','2022-01-10'),(2,103,'desktop','2022-02-11'),
(3,106,'Iphone','2022-03-13'),(4,104,'mobile','2022-03-05'),(5,102,'TV','2022-03-20');

select * from customer where cust_id not in (select cust_id from order1);
select c.name from customer as c inner join order1 as o on c.cust_id=o.cust_id where o.prod_name='laptop';
select c.cust_id,c.name,c.occupation,c.age from customer as c inner join order1 as o on c.cust_id=o.cust_id where o.prod_name='iphone';
select count(cust_id) from customer where cust_id in (select cust_id from order1);
select * from customer  where name is null;
