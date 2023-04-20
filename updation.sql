use ls;
drop table subjects;
create table subjects(subject_id int auto_increment,primary key(subject_id),subject_name varchar(30));
insert into subjects(subject_name) values('physics'),('maths'),('chemistry'),('maths');

select * from subjects;


drop table employee;
create table employee(emp_id int not null, primary key(emp_id), f_name varchar(30),l_name varchar(30),id int,
foreign key (id) references subjects(subject_id));

insert into employee(emp_id,f_name,l_name,id) values(101,'akash','subodh',2),
(104,'jcnjrr','jdjd',3),(103,'bhdhcba','jnvfirj',1);
select * from employee;



update subjects set subject_name='english' where subject_id=3;
update subjects set subject_name='maths 2' where subject_id=2;



select subject_name,subject_id from subjects where subject_name='maths';