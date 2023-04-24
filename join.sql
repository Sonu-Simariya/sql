use ls;
show tables;
select * from employee;
select * from subjects;
insert into employee(f_name,l_name) values("ram","patel");

select * from employee right outer join subjects on (employee.id=subjects.subject_id);
select * from employee left outer join subjects on (employee.id=subjects.subject_id);
select * from subjects
full join employee
on (employee.emp_id);