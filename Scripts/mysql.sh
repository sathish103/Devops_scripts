sudo su -
yum install mysql -y
mysql -h <rds endponit> -u <username> -p
create database student;
show databases;
use student;
CREATE TABLE Register(
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
SHOW TABLES;
insert into values Register(1,'sathish','Reddy','rct','kadapa');
select * from Register;
drop table Register;
