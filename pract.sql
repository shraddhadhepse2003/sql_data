use practice;
select * from student_data;
select department,count(id) from student_data group by department;
select department,count(id) from student_data group by department having count(id)>3;


