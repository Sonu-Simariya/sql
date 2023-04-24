use ls;
drop table employee;
create table employee(id int not null auto_increment, primary key(id),
emp_name varchar(30),emp_sal int,emp_age int);
alter table employee auto_increment=100;
insert into employee(emp_name,emp_sal,emp_age) values('arjit',1000,16);
select * from employee;

-- minimum of salary
select * from employee where emp_sal=(select min(emp_sal) from employee);

-- second highest salary
select * from employee where emp_sal=(select max(emp_sal) from employee 
where emp_sal<(select max(emp_sal) from employee));

select * from employee order by emp_name desc;


create table department (dept_id int not null auto_increment,primary key(dept_id),dept_name varchar(30));
insert into department(dept_name) values('CS'),('IT'),('JAVA'),('PHYTON'),('CSS');
select * from department;

select * from employee;
alter table employee add column(dept int,foreign key (dept) references department(dept_id));
update employee set dept=1 where id<102;
update employee set dept=2 where id=105;

select * from employee where emp_sal=(select min(emp_sal) from employee);
select * from employee inner join department on employee.dept=department.dept_id;
