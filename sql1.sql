create database payment;
use payment;
create table info(
customer_id int primary key,
customer varchar(50),
mode varchar(20),
city varchar(35));
insert into info values(101,"Olivia Barrett","Netbanking","Portland"),
(102,"Ethan Sinclair","Credit Card","Miami"),
(103,"Maya Hernandez","Credit Card","Seattle"),
(104,"Liam Donovan","Netbanking","Denver"),
(105,"Sophia Nguyen","Credit Card","New Orleans"),
(106,"Caleb Foster","Debit Card","Minneapolis"),
(107,"Ava Patel","Debit Card","Phoenix"),
(108,"Lucas Carter","Netbanking","Boston"),
(109,"Isabella","Netbanking","Nashville"),
(110,"Jackson Brooks","Credit Card","Boston");
select mode, count(customer) from info
group by mode;
select city,customer,count(mode) from info
group by city,customer;
select city,count(customer) from info
group by city;
select * from info
where city is null;
select * from info
where city is not null;
select customer from info
where customer_id>101;
select mode,count(customer) from info
group by mode;

select mode, count(customer_id) As total_customers
from info
group by mode
having count(customer_id)>2 
order by total_customers Desc ;

select city,count(customer_id) as total_customers from info
where mode = "Credit Card"
group by city
having count(customer_id)>1
order by total_customers desc;
SELECT mode, COUNT(customer_id) AS total_customers
FROM info
WHERE city LIKE 'B%'
GROUP BY mode
ORDER BY total_customers DESC;
