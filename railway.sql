use shrads;
create table userrail (uid int primary key,uname varchar(30));
create table trains(tid int primary key, tname varchar(30),source varchar(30),destination varchar(30),pf varchar(30));
create table train_detail(did int primary key,available_seat int,booked_seat int,class varchar(30),tid int,foreign key(tid) references trains(tid));
create table payment(pid int primary key,amount float,type varchar(30),tbid int,foreign key(tbid) references tbooked(tbid));
create table tbooked(tbid int primary key,uid int,foreign key(uid) references userrail(uid),did int,foreign key(did) references train_detail(did));
insert into userrail values (1,'shraddha');
insert into trains values (10021,'badlapur express','ghatkopar','patna','pf-3');
insert into train_detail values(101,30,42,'AC',10021);
insert into tbooked values(301,1,101);

