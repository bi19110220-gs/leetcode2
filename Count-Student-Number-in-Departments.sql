1-- select dept_id,count(student_id)as student_number 
2-- from Student 
3-- group by dept_id
4
5select d.dept_name,count(s.student_id)as student_number 
6from Department d
7left join Student s
8on d.dept_id = s.dept_id
9group by d.dept_id
10