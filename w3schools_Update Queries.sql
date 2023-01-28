select * from Customers where PostalCode IS NULL;

Update Customers set ContactName = 'Bala' where PostalCode is null;

select * from customers where ContactName = 'Bala';

Update Customers set Address = 'Gandhi Nagar' where Address is NULL;

select * from Customers where PostalCode is NULL;

delete from customers where contactName = 'Bala';

select * from Customers Order by City ASC limit 10;

select * from customers where City regexp 'lin$';

select count(PostalCode) from Customers;

select PostalCode from Customers where PostalCode regexp '^[0-9]' Order By Postalcode desc;
select PostalCode from Customers where PostalCode not regexp '^[a-z]';

select sqrt(postalCode) as sqrtofvalue from Customers Order by PostalCode ASC;










