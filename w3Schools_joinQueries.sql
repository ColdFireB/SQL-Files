
select * from customers;

select * from Orders;

select Customers.CustomerID, Orders.OrderID, Customers.CustomerName from Orders inner join Customers
on Orders.CustomerID = Customers.CustomerID;

select Customers.CustomerID, Orders.OrderID, Customers.CustomerName from Orders left join Customers on Orders.CustomerID = Customers.CustomerID;

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
right JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;
