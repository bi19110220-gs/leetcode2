1# Write your MySQL query statement below
2with cte as
3(
4select requester_id as id
5from RequestAccepted 
6union all
7select accepter_id as id
8from RequestAccepted 
9)
10
11select id,count(*)as num
12from cte
13group by id
14order by num desc
15limit 1