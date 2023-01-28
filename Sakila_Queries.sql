use sakila;

show tables;

select * from actor;
select * from actor_info;
select * from address;
select * from category;
select * from city;
select * from country;

use bala;

show tables;

select * from emp;

create table customers (
	ID INT not null,
    NAME varchar(50),
    AGE INT not null,
    ADDRESS CHAR(25),
    SALARY decimal(20,2),
    primary key(ID)
);

drop table customers;

insert into customers values
	(1, 'Arul', 24, 'Gandhi nagar', 138000),
    (2, 'Arun', 25, 'Indira Nagar', 177000),
     (3, 'Anish', 25, 'Indira Nagar', 67000),
      (4, 'Akilesh', 25, 'Indira Nagar', 17000),
       (5, 'Anirudh', 25, 'Indira Nagar', 16000);

select * from customers;

create table Persons(
	ID INT not null AUTO_INCREMENT,
    FirstName varchar(30),
    LastName varchar(30) not null,
    OrderedDate date,
    primary key(ID)
);

insert into Persons (FirstName, LastName)
		values
        ('Bala', 'Arul'),
        ('Mike', 'Tison');
        
select * from Persons;

update Persons set OrderedDate = '2008-11-01';

update Persons set sex = 'M';

alter table Persons
add column MiddleName varchar(30) unique;

alter table persons 
add column sex varchar(1) not null;

#drop table Persons;

create view ArulName as 
select FirstName, LastName
from Persons
where Sex = 'M';

select * from ArulName;

create or replace view ArulName as 
select FirstName, LastName
from Persons
where Sex = 'M';
