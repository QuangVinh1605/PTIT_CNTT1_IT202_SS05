create database if not exists bai1;
use bai1;

create table product(
product_id int ,
product_name varchar(225),
price decimal(10,2),
stock int,
status enum('active','inactive'),
sold_quantity int
);

select*from product;
select*from product where status= 'active';
select*from product where price >1000000;
select*from product where status ='active'order by price ASC;
select*from product order by sold_quantity DESC limit 10;
select*from product order by sold_quantity DESC limit 5 offset 10;
 select*from product where price >2000000 order by sold_quantity DESC;

create table customers(
customer_id int,
full_name varchar(255),
email varchar(255),
city varchar(255),
status enum('active','inactive')
);

select*from customers;
select*from customers where city='TP.HCM';
select*from customers where status='active' and city='HN';
select*from customers order by full_name ASC;
select*from customers limit 10 offset 10;

create table orders(
order_id int,
customer_id int,
total_amount decimal(10,2),
order_date date,
status enum('pending','completed','cancelled')
);

select * from orders where status='completed';
select*from orders where total_amount>5000000;
select*from orders order by order_id DESC limit 5;
select*from orders where status='completed' order by total_amount DESC;


SELECT * FROM product WHERE status = 'active' 
AND price BETWEEN 1000000 AND 3000000
ORDER BY price ASC LIMIT 10 OFFSET 0;


SELECT * FROM product WHERE status = 'active' 
AND price BETWEEN 1000000 AND 3000000
ORDER BY price ASC LIMIT 10 OFFSET 10;


