create database school;

use school;

create table teachers (
    sch_id int primary key,
    teacher_name varchar(100),
    salary decimal(10, 2)
);

create table students (
    sch_id int primary key,
    stu_name varchar(100),
    class varchar(50)
);

create table grades (
    subjects varchar(50),
    grades varchar(2)
);

alter table teachers
add column subjects varchar(50),
add column address varchar(255);

drop table grades;

alter table students
change column class class_name varchar(50);


-- G-
insert into teachers (sch_id, teacher_name, salary) values 
(1, 'Mohamed', 50000.00),
(2, 'Mona', 52000.00),
(3, 'Sameh', 53000.00),
(4, 'Amira', 54000.00),
(5, 'Mariam', 55000.00),
(6, 'Tamer', 56000.00);

insert into students (sch_id, stu_name, class_name) values 
(1, 'Mostafa', 'Class 1'),
(2, 'Mai', 'Class 2'),
(3, 'Omar', 'Class 3'),
(4, 'Ayman', 'Class 4'),
(5, 'Salma', 'Class 5'),
(6, 'Hatem', 'Class 6');

-- H-
select * from teachers where teacher_name like ('%M%');

-- I-
delete from students where sch_id = 6;

-- G-
select distinct class_name as class_or_subject from students 
union select distinct subjects as class_or_subject from teachers;

-- H-
select max(salary) as max_salary from teachers where salary >= 5000;
