create database subquery;
use subquery;
CREATE TABLE students (
id INT,
name VARCHAR(20),
marks INT
);
INSERT INTO students VALUES
(1, 'Aarav', 60),
(2, 'Bina', 75),
(3, 'Chetan', 80),
(4, 'Diya', 55),
(5, 'Eshan', 90),
(6, 'Farah', 70);
select name,avg(marks) from students
where marks>(select avg(marks) from students)
group by name;


select name,id from students
where id in (select id from students
where id %2 = 0);
create view kushal as
select name from students;
select * from kushal
where name like ("A%");