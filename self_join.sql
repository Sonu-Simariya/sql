use ls;
drop table course;
create table course(c_id int not null auto_increment,primary key(c_id),c_name varchar(30));
alter table course auto_increment=100;
insert into course(c_name) values('physics'),('chemistry'),('maths'),('computer');
select * from course;

drop table student;
create table student(s_id int auto_increment, primary key(s_id),
f_name varchar(30),l_name varchar(30),
age numeric(3));
alter table student auto_increment=1;
insert into student(f_name,l_name,age) values('sonu','simariya',21),('lalit','simariya',23),
('prakhar','jain',43),('akash','joshi',31);
select * from student;

drop table enroll;
create table enroll(s_id int,c_id int, foreign key (s_id) references student(s_id),
foreign key (c_id) references course(c_id), since numeric(4) default null);
insert into enroll(s_id,c_id,since) values(1,102,2015),(1,101,2011),(3,103,2020);
select * from enroll;


select e1.s_id ,e1.since from enroll as e1,enroll as e2 where e1.s_id=e2.s_id and e1.c_id != e2.c_id;