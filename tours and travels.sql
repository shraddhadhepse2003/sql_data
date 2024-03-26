create database tours;
use tours;
create table admin(username varchar(20),password varchar(20));

-- create table customer --
create table customer(cust_id int primary key,cust_name varchar(20) not null,cust_email varchar(50) not null,cust_dob date not null,
cust_gender varchar(20),cust_address varchar(20) not null,cust_contno bigint not null);

-- create table tourpackage --
create table tourpackage(tourpack_id int primary key,Tourpack_name varchar(50) not null,Tourpack_country varchar(20) not null,
Tourpack_state varchar(50) not null,Tour_days int not null,Tour_amount float not null,Cust_id int,
foreign key(cust_id) references customer(cust_id));

-- create table transport --
create table transport(transport_id int primary key,Transport_type varchar(20) not null,Trans_Dateofdeparture date not null,
Trans_DestinationFrom varchar(50) not null,Trans_DestinationTo varchar(50) not null,Trasport_type varchar(20) not null,
Transport_preference varchar(20) not null,Transport_Pricerange float not null,Cust_id int,foreign key(cust_id) references customer(cust_id));



-- create table hotel --
create table hotel(Hotel_id int primary key,Hotel_name varchar(50) not null, Hotel_location varchar(50) not null,
Hotel_category varchar(50) not null,Hotel_contactno bigint not null,Cust_id int,foreign key(cust_id) references customer(cust_id));

-- create table booking --
create table booking(Booking_id int primary key,
Cust_id int,foreign key(cust_id) references customer(cust_id),
Tourpack_id int,foreign key(Tourpack_id) references tourpackage(Tourpack_id),
Transport_id int,foreign key(Transport_id) references transport(Transport_id),
Hotel_id int,foreign key(Hotel_id) references hotel(Hotel_id),
Payment_mode varchar(20) not null,Book_date date not null);


-- insert into customer --
insert into customer values(1,'shraddha dhepse','shraddhadhepse3@gmail.com','2003-01-03','female','ratnagiri','7098675467'),
						   (2,'surbhi chavan','surbhichavan67@gmail.com','2002-05-25','female','chiplun','9878675467'),
                           (3,'rohit khetri','rohitkhetri18@gmail.com','2002-05-18','male','ratnagiri','9437675467'),
                           (4,'yash yadav','yashyadav@gmail.com','2001-07-25','male','sangmeshwar','7098676798'),
                           (5,'anushka bhasme','anushkabhasme@gmail.com','2002-09-16','female','malvan','8083775467'),
                           (6,'shalvi ghadshi','shalvighadshi@gmail.com','2000-12-04','female','devrukh','9865175467'),
                           (7,'arjun sawant','arjunsawant@gmail.com','2001-11-20','male','nashik','9345775467'),
                           (8,'mandira malavde','mandiramalavde44@gmail.com','2002-04-16','female','dapoli','7098689765'),
                           (9,'rasika tambe','rasikatambe76@gmail.com','2000-08-27','female','ratnagiri','8745639876'),
                           (10,'roshann more','roshanmore1@gmail.com','2003-01-25','male','nagpur','9678456310');
  
-- insert into tourpackage --
insert into tourpackage values(1,'family','india','karnataka',7,36000,3),(2,'honeymoon','india','kashmir',6,50000,7),
                              (3,'family','india','Himachal Pradesh',8,37000,6),(4,'womens special','india','Rajasthan',15,36000,1),
                              (5,'womens special','india','Madhya Pradesh',10,34000,10),(6,'seniors special','india','gujarat',7,30000,8),
                              (7,'honeymoon','india','arunachal pradesh',5,100000,2),(8,'group tour','india','punjab',8,50000,9),
                              (9,'road trip','india','meghalay',5,30000,4),(10,'group tour','india','karnataka',7,70000,5);
                              
insert into transport values
(1,'2024-03-26','mumbai','karnatak','air','morning',15000-20000,3),(2,'2024-03-28','mumbai','kashmir','air','morning',20000-25000,7),
(3,'2024-07-18','delhi','Himachal Pradesh','air','night',10000-20000,6),(4,'2024-04-26','pune','rajasthan','train','afternoon',20000-25000,1),
(5,'2024-05-13','mumbai','Madhya Pradesh','train','night',20000-25000,10),(6,'2024-12-16','pune','gujarat','air','morning',30000-35000,8),
(7,'2024-07-18','delhi','arunachal pradesh','train','morning',15000-20000,2),(8,'2024-11-22','pune','punjab','air','morning',30000-35000,9),
(9,'2024-08-28','mumbai','meghalay','train','afternoon',10000-15000,4),(10,'2024-10-13','pune','karnataka','air','morning',30000-35000,5);
                              
insert into hotel values(1,'Ocean Heaven Hotel','karnatak','Deluxe Hotel rooms','9076895678',3),
                        (2,'High-Sky Abode','kashmir','Double room','9076896987',7),
						(3,'Getaway Mansion','Himachal Pradesh','Deluxe Hotel rooms','8976896987',6),
                        (4,'Sun City Cottages','Rajasthan','Standard room','9067896987',1),
                        (5,'Summertime Palaces','Madhya Pradesh','Standard room','8712396987',10),
                        (6,'Mountain Dreamers Lodge','gujarat','Standard room','9567384765',8),
                        (7,'Tropical Melody Villas','arunachal pradesh','Standard room','9567384889',2),
                        (8,'Waterfront Refuges','punjab','Deluxe Hotel rooms','8677384889',9),
                        (9,'Coastal Sunrise Havens','meghalay','Deluxe Hotel rooms','9567957789',4),
                        (10,'Moonlit Riverside Cottages','karnataka','Standard room','8674007564',5);
                        
insert into booking values(1,3,1,1,1,'cheque','2024-03-26'),(2,7,2,2,2,'cheque','2024-03-28'),
                          (3,6,3,3,3,'cheque','2024-07-18'),(4,1,4,4,4,'cheque','2024-04-26'),
                          (5,10,5,5,5,'cheque','2024-05-13'),(6,8,6,6,6,'cheque','2024-12-16'),
                          (7,2,7,7,7,'cheque','2024-07-18'),(8,9,8,8,8,'cheque','2024-11-22'),
                          (9,4,9,9,9,'cheque','2024-08-28'),(10,5,10,10,10,'cheque','2024-10-13');

select c.cust_name,c.cust_contno,t.Tourpack_name,t.Tour_amount,tr.Transport_id,b.Payment_mode from customer as c inner join tourpackage as t on c.cust_id=t.cust_id
inner join transport as tr on c.cust_id=tr.cust_id 
inner join booking as b  on c.cust_id=b.cust_id;


select c.cust_name,p.Tourpack_name from customer as c inner join booking as b on c.cust_id=b.cust_id
inner join tourpackage as p on p.tourpack_id=b.tourpack_id;

                        
