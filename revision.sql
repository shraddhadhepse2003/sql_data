      -- to create database
create database practice;
      -- show all databases
show databases;
		-- to activate particular database
use practice;
		-- used to create table
create table revision(id int,name varchar(20) not null,contact_no int unique); 
		-- show all tables
show tables;
		-- show structure of the table
desc revision;
		-- used to add column
alter table revision add column age int not null;
		-- used to update datatype and constraints
alter table revision modify column contact_no bigint unique;
		-- rename the table name
alter table revision rename revision1;
alter table revision1 rename revision;
		-- add column in between
alter table revision add column lname varchar(20) not null after name;
		-- rename column name
alter table revision rename column name to fname;
		-- add column to first
alter table revision add column roll_no int first; 
		-- delete particular column
alter table revision drop id;
		-- add primary key
alter table revision add primary key(roll_no);

		-- insert value into column
insert into revision values(1,'shraddha','dhepse',7083768860,21);
		-- used to display all data in table
select * from revision;

       -- used to delete all the data in table
truncate table revision;

insert into revision values(1,'shraddha','dhepse',7083768860,21),(2,'surbhi','chavan',8765478907,22),(3,'anushka','bhasme',8765778907,24),(4,'mandira','malavde',8765478999,23);

		-- update the value into the column
update revision set age=23 where roll_no=2;
		-- to set the default values
alter table revision add column city varchar(20) default 'mumbai';
		-- used for automatically generate id
alter table revision modify roll_no int auto_increment;

-- insert into revision(fname,lname,contact_no,age) values('shraddha','dhepse',7083008860,21);

		-- used for delete table in databse
drop table revision;
		-- delete particular row
delete from revision where roll_no=6;
		-- delete all the values but then starts with next values
delete from revision;
		-- update multiple column
update revision set fname='shalvi',lname='ghadshi' where roll_no=5;


