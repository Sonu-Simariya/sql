use ls;
drop table subjects;
create table subjects(subject_id int auto_increment,
primary key(subject_id),subject_name varchar(30));
insert into subjects(subject_name) values('physics'),('english'),('chemistry'),('maths');

select * from subjects;


drop table employee;
create table employee(emp_id int not null auto_increment ,
primary key(emp_id), f_name varchar(30),l_name varchar(30),id int,
foreign key (id) references subjects(subject_id));

alter table employee auto_increment=100;
alter table employee alter column id set default null;

insert into employee(f_name,l_name,id) values('akash','subodh',2),
('jcnjrr','jdjd',3),('bhdhcba','jnvfirj',3);

INSERT INTO employee(f_name,l_name) values('sonu','simariya');
select * from employee;

select * from employee where f_name='akash';
