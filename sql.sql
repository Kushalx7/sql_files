create database joins;
use joins;
create table students(
id int primary key,
name varchar(20));
create table course(
id int primary key,
course varchar(20)
);
insert into students values(101,"Bobby"),(102,"Milley"),(103,"Brown");
insert into course values(102,"english"),(103,"Maths"),(105,"homework");
select * from students as s
inner join course AS c
on s.id = c.id;
select * from course
left join students
on course.id=students.id
where students.id is null;
select * from course
right join students
on course.id=students.id
where course.id is null;
select *from students as s
left join course as c
on s.id=c.id
union
select *from students as s
right join course as c
on s.id=c.id;
select * from students as s
left join course AS c
on s.id = c.id
where c.id is null;
select * from students as s
right join course AS c
on s.id = c.id
where s.id is null;
select name from students
union
select course from course;