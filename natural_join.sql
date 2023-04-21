-- Natural join 
use ls;
select * from employee;
select * from subjects;
select f_name,l_name,subject_id,subject_name,emp_id from employee,subjects 
where subjects.subject_id = employee.id; 


update employee set f_name='sonu',l_name='simariya' where emp_id=101;
update employee set f_name='lalit',l_name='jsai' where emp_id=102;
update employee set id=1 where f_name='sonu';
