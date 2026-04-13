create database college;
use college;
create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);
insert into student values
(1,"kushal",69,"B","ktm"),
(2,"kusal",79,"A","bkt"),
(3,"mikesh",78,"C","ktm");
select name,marks from student;
select distinct city from student;
select * from student
where marks>78 and city = "ktm";
select *
from student where marks>75
limit 2;
select *from student
order by grade asc;
select count(marks) from student;
select max(marks) from student;
select min(marks) from student;
select sum(marks) from student;
select avg(marks) from student;
select city ,avg(marks) 
from student
group by city;
select city,avg(marks) 
from student
group by city
order by avg(marks);
select grade,count(name) from student
group by grade;
select city,count(name) from student
group by city
having max(marks)>70;
set sql_safe_updates = 0;
update student
set grade = "O"
where grade = "A";
select * from student;
update student
set marks = 82
where  rollno = 3;
select * from student;
update student
set marks = marks+5;
select * from student;
delete from student
where marks<30;