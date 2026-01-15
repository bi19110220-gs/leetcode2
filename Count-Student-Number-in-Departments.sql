1select d.dept_name,count(s.student_id)as student_number 
2from Department d
3left join Student s
4on d.dept_id = s.dept_id
5group by d.dept_id
6order by student_number desc,d.dept_name 