1select 
2    id,
3    month,
4    sum(salary)over(partition by id order by month range between preceding 2 and current row)
5as salary
6from employee