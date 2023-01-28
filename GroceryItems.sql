use groceryitems;

create table Products(
id int,
category varchar(144),
name varchar(144),
inStock boolean
);

create table ProductDetails(
id int,
category varchar(144),
name varchar(144),
manufacturer varchar(144),
price double,
current_stock int,
inStock boolean
)



select * from Products; 
select * from productDetails;



INSERT into Products values 
(2585, 'fresh-produce', 'Green Cabbage Organic', true),
(3674, 'fresh-produce', '20V Max Cordless Drill Combo Kit', true),
(5851, 'fresh-produce', 'Cucumber Organic', true),
(8739, 'fresh-produce', 'Fresh Spinach Organic', true),
(2177, 'meat-seafood', 'Cosco Three Step Steel Platform', true),
(1709, 'meat-seafood', 'Beef Choice Angus Ribeye Steak', true),
(1709, 'meat-seafood', 'Angus Steak Burgers', true),
(7395, 'meat-seafood', 'Boneless Skinless Chicken Breasts', true),
(8554, 'candy', 'Kinder Joy Eggs', true),
(6483, 'candy', 'Cadbury Milk Chocolate', true),
(5774, 'candy', 'HERSHEY, Milk Chocolate Almond', true),
(8753, 'dairy', 'Reduced Fat Milk', true),
(9482, 'dairy', 'Whole Milk', true),
(5477, 'dairy', 'Cream Cheese', true),
(5478, 'dairy', 'Low Fat Vanilla Yogurt', true),
(4875, 'bread-bakery', '2800 Watt Inverter Generator', true);