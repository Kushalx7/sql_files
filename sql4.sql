create database fk;
use fk;
create table dept(
id int primary key,
name varchar(50)
);
create table teacher(
id int primary key,
name varchar (50),
dept_id Int,
foreign key (dept_id) references dept(id)
on update cascade
on delete cascade
);
insert into dept values (101,"english"),
(102,"Nepali"),
(103,"Maths");
insert into teacher values(101,"Manikala",101),
(102,"Bomm",103);
select * from teacherss;
update dept 
set id = 109
where id = 103;
alter table teacher
add column salary int default 30000 ;
alter table teacher
drop column salary;
alter table teacher
rename to teacherss;
alter table teacherss
change column name fullname varchar(50);
