1select distinct a.seat_id
2from cinema a
3inner join cinema b
4on a.seat_id = b.seat_id+1 
5or a.seat_id = b.seat_id-1 
6where a.free=1 and b.free=1
7