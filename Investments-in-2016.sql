1select round(sum(tiv_2016),2) as tiv_2016
2from insurance
3where tiv_2015 in
4(
5    select tiv_2015
6    from Insurance
7    group by tiv_2015
8    having count(*)>1
9)
10and
11-- (lat, lon) attribute pairs must be unique
12(lat,lon) in 
13(
14    select lat,lon
15    from Insurance
16    group by lat,lon
17    having count(*)=1
18)