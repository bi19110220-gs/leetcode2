1select class
2from courses
3group by class
4having count(student)>=5