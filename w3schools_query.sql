use w3schools;

select c.customerName as cus_cus_Name, c.contactName as cus_contactName, o.customerID as ord_ID, o.EmployeeID as ord_empID from Customers as c, Orders as o;

select * from Customers, Orders, employees;

select * from Orders;

select * from Employees;

SELECT 
    o.OrderDate,
    o.ShipperID,
    o.employeeid,
    emp.employeeid,
    emp.LastName,
    emp.birthdate
FROM
    Orders AS o
        LEFT JOIN
    Employees AS emp ON o.employeeid = emp.employeeID where lastName like 'King%'
UNION
    SELECT 
    o.OrderDate,
    o.ShipperID,
    o.employeeid,
    emp.employeeid,
    emp.LastName,
    emp.birthdate
FROM
    Orders AS o
        RIGHT JOIN
    Employees AS emp ON o.employeeid = emp.employeeID where lastName like 'King%';

count(*) as count,

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

SELECT A.CustomerID, A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
Order by CustomerID ASC;


SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;

select * from Customers;

Insert into Employees values (11, 'Bala', 'Arul', '1991-04-29', 'EMPID11.pic', 'Interesting person') 

Insert into Employees values (12, 'Super', 'Person', '1992-05-30', 'EMPID12.pic', 'Interesting person number 2')

Insert into Employees values (13, 'Mingle', 'Person', '1993-05-30', 'EMPID13.pic', 'Interesting person number 3')

Insert into Employees values (14, 'Bala', 'Vairamuthu', '1991-04-29', 'EMPID14.pic', 'Interesting person number 4') 

Insert into Employees values (null, 'Akshita', 'Bala', '2020-05-06', 'EMPID15.pic', 'Interesting person number 5') 

select * from Employees as A, Employees as B
where A.FirstName = B.LastName;

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID);

select distinct(City) from customers order by City ASC;

select count(*) as Count, City from Customers Group by City order by count DESC;

select * from Customers where City = 'London';

select * from orders;
select * from customers;

select * from employees;

SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;


select count(*) from Orders;
select count(*) from  orders where shipperID = 1;
select count(*) from  orders where shipperID = 2;
select count(*) from  orders where shipperID = 3;


select * from Shippers;

select distinct ShipperID from Orders;
select min(OrderID), ShipperID from Orders group by shipperID;
select max(OrderID), ShipperID from Orders group by shipperID;
select count(OrderID) from Orders group by shipperID;
select * from Orders;
select * from shippers;

select count(*) as count, s.shipperName, o.shipperID, o.OrderID from Orders as o inner join Shippers as s on o.shipperID = s.shipperID where o.shipperid = 1;
select count(*) as count, s.shipperName, o.shipperID, o.OrderID from Orders as o inner join Shippers as s on o.shipperID = s.shipperID where o.shipperid = 2;
select count(*) as count, s.shipperName, o.shipperID, o.OrderID from Orders as o inner join Shippers as s on o.shipperID = s.shipperID where o.shipperid = 3;

SELECT 
    s.shipperName, o.shipperID, count(o.OrderID) as count
FROM
    Orders AS o
        INNER JOIN
    Shippers AS s ON o.shipperID = s.shipperID
group by ShipperID order by count asc;

SELECT COUNT(CustomerID) as count, Country
FROM Customers
GROUP BY Country
HAVING count > 5 order by count asc;

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' or LastName = 'Fuller'
GROUP BY LastName
HAVING NumberOfOrders <> 25;

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY LastName
HAVING NumberOfOrders <> 25;

select * from Products;
select * from suppliers;

select count(P.ProductName) as count, S.SupplierName from Products as P inner join Suppliers as S on P.SupplierID = S.SupplierID GROUP BY S.SupplierName Order by count DESC;

SELECT count(*), SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 40);

SELECT count(*) as count, SupplierName
FROM Suppliers
group by SupplierName
having count =1;

SELECT ProductName, Products.SupplierID, Suppliers.supplierID FROM Products, Suppliers WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20;

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price = 22);

SELECT ProductName FROM Products, Suppliers WHERE Products.SupplierID = Suppliers.supplierID AND Price = 21.35 or Price = 22;

select * from Suppliers;
select supplierid from suppliers;

select *
from Suppliers
where exists(select * from Products WHERE price <22 order by Price);

select * from Products P inner join Suppliers S 
on P.SupplierID = S.supplierID
where P.price<22;

select *
from Suppliers
where exists(select * from Products WHERE Products.SupplierID = Suppliers.supplierID AND price <22 order by Price);

select count(SupplierID) from Products where price <=22 order by SupplierID;


