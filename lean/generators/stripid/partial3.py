import re
exec(open('partial2.py').read().split("quart=[v for")[0])
Q4={(2,2),(-2,-2),(4,-2),(-4,2),(-2,4),(2,-4)}
qt=[(i,ms,v) for i,(ms,v) in enumerate(T) if any(p in Q4 for p in ms)]
for i,ms,v in qt: print(i,ms,size([v]))
