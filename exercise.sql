use ls;
select * from user_details;
select count(status) as value,status from user_details group by status;
create table depart(dept_id int,primary key(dept_id),gender varchar(10),dept_name varchar(30));
insert into depart(dept_id,gender,dept_name) values(1,'MALE','CSS'),(2,'FEMALE','PYTHON');
select * from depart;
alter table user_details add column(subject_id int,foreign key (subject_id) references depart(dept_id));
update user_details set subject_id=1 where gender='male';
update user_details set subject_id=2 where gender='female';
select user_id,user_details.gender,dept_name from user_details,depart 
where user_details.subject_id=depart.dept_id;