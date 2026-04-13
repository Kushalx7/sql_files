CREATE DATABASE shop;
USE shop;

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_name VARCHAR(50),
product VARCHAR(50),
amount INT,
city VARCHAR(50)
);

INSERT INTO orders VALUES
(1, "Aarav", "Laptop", 80000, "Kathmandu"),
(2, "Sita", "Mobile", 30000, "Pokhara"),
(3, "Ram", "Laptop", 85000, "Kathmandu"),
(4, "Gita", "Tablet", 20000, "Lalitpur"),
(5, "Hari", "Mobile", 25000, "Kathmandu"),
(6, "Asha", "Laptop", 90000, "Pokhara"),
(7, "Kiran", "Tablet", 22000, "Kathmandu"),
(8, "Bina", "Mobile", 28000, "Lalitpur");
 select product,count(order_id) from orders
 group by product;
 select count(city) from orders;
 select product,count(order_id)
 from orders
 where city In ("Kathmandu", "Pokhara")
 group by product
 having  count(order_id)>2
 order by count(order_id)desc;
 select city, count(order_id)from orders
 group by city
 having count(order_id)>2;