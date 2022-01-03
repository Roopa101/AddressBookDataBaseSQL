--------uc1------
create database AddressBookService
select name from sys.databases

use AddressBookService

-----uc2-----
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

----uc3----
select * from AddressBook1

----uc4-----
insert into AddressBook1 values('Shradha','Jadhav','Pune','Pune','Maharshtra','567439','9689519187','shradha@gmail.com')

create procedure [dbo].[SpEditContact]
(
@FirstName varchar(255),
@LastName varchar(255),
@address varchar(255),
@city varchar(255),
@State varchar(255),
@Zip varchar(255),
@PhoneNumber varchar(255),
@Email varchar(255)
)
as
begin
update AddressBook1 set LastName=@LastName,address=@address,city=@city,State=@State,Zip=@Zip,PhoneNumber=@PhoneNumber,Email=@Email
where FirstName=@FirstName 
end


Update AddressBook1 set Lastname = 'Vishwakarma' where Firstname = 'Roopa';
Update AddressBook1 set address = 'Aland' where Firstname = 'Roopa';

select * from AddressBook1

insert into AddressBook1 values('Shradha','Jadhav','Pune','Pune','Maharshtra','567439','9689519187','shradha@gmail.com')
---uc5----
create procedure [dbo].[SpDeleteContacts]
(
@FirstName varchar(255),
@LastName varchar(255),
@Address varchar(255),
@City varchar(255),
@State varchar(255),
@Zip varchar(255),
@PhoneNumber varchar(255),
@Email varchar(255)
)
as
begin
delete from AddressBook1
where FirstName=@FirstName 
end


Delete From AddressBook1 where Firstname = 'shradha'
select * from AddressBook1

insert into AddressBook1 values('Ganesh','Bhosale','Pune','Pune','Maharshtra','567384','7020866219','ganesh@gmail.com')

----uc6---
Select City From AddressBook1 Where Firstname = 'Roopa'
Select State From AddressBook1 Where Firstname = 'Ganesh'

-----uc7-----


Select COUNT (*) State From AddressBook1
Select COUNT(*) City From AddressBook1
select * from AddressBook1


-----uc8-----

Select * From AddressBook1 Where City = 'Kalaburagi' Order By Firstname