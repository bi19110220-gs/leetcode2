1select 
2    id,
3    month,
4    sum(salary)over(partition by id order by month range between 2 preceding and current row)
5as salary
6from employee
7where(id,month) not in 
8(
9    select id,max(month) as month
10    from employee
11    group by id
12)
13order by id asc,month desc