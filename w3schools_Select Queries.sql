use w3schools;

show tables;
select * from categories;
select * from customers;
select * from employees;
select * from order_details;
select * from orders;
select * from products;
select * from shippers;
select * from suppliers;

select count(distinct Country) as uniq_countries from suppliers;

select * from Customers where Country = 'USA';

select count(*) from customers where CustomerID between 1 and 36;

select * from customers where CustomerID != 36;

select * from customers where CustomerName like '__L%';

select * from customers where city in ('Lille','Cowes', 'Madrid');

select * from customers where city between 'Cowes' and 'Madrid' order by City;

select * from customers where country = 'USA' and ContactName like 'H%';

select * from customers where country = 'USA' or ContactName like 'H%';

select * from customers where not country = 'USA';

select * from customers where country = 'Germany' and (City = 'Berlin'	or Country = 'Mexico');

select * from customers where City = 'Berlin' or Country = 'Mexico';

SELECT count(*) FROM Customers
WHERE country not in ('Germany', 'USA');

Select count(*) from Customers where
NOT Country='Germany' AND NOT Country='USA';

Select * from customers 
where city = 'Berlin' and PostalCode = 12209;

SELECT * FROM Customers
ORDER BY CustomerName,Country;

SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;

select * from Customers where CustomerName = 'Cardinal';

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

Select * from Customers where PostalCode IS NULL and (country = 'Norway' and City like '%ger');

select customerID from customers where PostalCode is null;

select * from customers;