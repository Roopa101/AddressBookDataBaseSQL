﻿create database AddressBookService
select name from sys.databases

use AddressBookService

create Table AddressBook1
(
id int identity (1,1) primary key,
Firstname varchar(20), 
Lastname varchar (20),
address varchar(20), 
City varchar (27), 
State varchar (15),
Zip varchar (6), 
PhoneNumber varchar(15),
Email varchar(35)
);


select * from AddressBook1


