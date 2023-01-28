select * from products;

select * from order_details;
SELECT 
    count(OrderID), OrderID, SUM(Quantity) AS Sum_Qua
FROM
    order_details
GROUP BY OrderID;

SELECT 
    OrderID, SUM(Quantity) AS Sum_Qua
FROM
    order_details
GROUP BY OrderID
HAVING Sum_Qua < 100;

SELECT 
    OrderID, SUM(Quantity) AS Sum_Qua
FROM
    order_details
GROUP BY OrderID
HAVING Sum_Qua between 10 and 30
order by Sum_Qua;

SELECT count(ProductName)
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM Order_Details
  WHERE Quantity = 10);
  
  SELECT count(ProductName)
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM Order_Details
  WHERE Quantity = 10);
  
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM Order_Details
  WHERE Quantity < 99);
  
  select ProductName, ProductID from Products;
  SELECT count(DISTINCT(ProductID))  FROM Order_Details
  WHERE Quantity = 10
  Order by ProductID ASC;
  
  SELECT *
  FROM Order_Details
  WHERE Quantity = 10
  order by ProductID asc;
  
  SELECT count(ProductName)
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID  FROM Order_Details
  WHERE Quantity < 1000);
  
  SELECT count(DISTINCT(ProductID))
  FROM Order_Details
  WHERE Quantity < 1000;
  
  SELECT ALL ProductName
FROM Products;

select user();

SHOW VARIABLES WHERE Variable_name = 'hostname';

  SELECT ProductName
FROM Products
WHERE TRUE;

SELECT ProductName FROM Products
WHERE ProductID = ALL
  (SELECT ProductID
  FROM Order_Details
  WHERE Quantity = 0);
  
  SET profiling = 1;
  
  SELECT ProductID, Quantity
  FROM Order_Details
  WHERE Quantity < 0;
  
  use sakila;
  show tables;