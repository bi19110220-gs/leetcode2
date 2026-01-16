1-- id_diff = 1, 1 → 2 consecutive rows
2-- id_diff = 2, 2, 2, 2 → 4 consecutive rows
3with q1 as
4(
5select *,row_number()over() as row_id,id - row_number()over()as id_diff
6from stadium
7where people > 99
8)
9
10select id,visit_date,people
11from q1
12where id_diff in 
13(
14    select id_diff
15    from q1 
16    group by id_diff
17    having count(*)>2
18)
19order by visit_date