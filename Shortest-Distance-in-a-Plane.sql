1select round(min(sqrt((pow(p1.x-p2.x,2) + pow(p1.y-p2.y,2)))),2) as shortest
2from
3Point2D p1
4join 
5Point2D p2
6on p1.x <>p2.x or p1.y<>p2.y