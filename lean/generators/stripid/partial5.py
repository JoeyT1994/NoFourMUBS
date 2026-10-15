exec(open('partial2.py').read().split("quart=[v for")[0])
Q4={(2,2),(-2,-2),(4,-2),(-4,2),(-2,4),(2,-4)}
q18=[v for i,(ms,v) in enumerate(T) if any(p in Q4 for p in ms) and i not in (0,22)]
print('q18',len(q18),size(q18),flush=True)
