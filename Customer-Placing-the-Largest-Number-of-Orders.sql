1select customer_number
2from orders
3group by customer_number
4order by count(*) desc
5limit 1