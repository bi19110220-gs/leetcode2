1with temp as
2(
3select *,count(activity)over(partition by activity)as cnt
4from friends
5)
6
7select distinct activity
8from temp
9where cnt !=(select max(cnt)from temp) and cnt != (select min(cnt)from temp)