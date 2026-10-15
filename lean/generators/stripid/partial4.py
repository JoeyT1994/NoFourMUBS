exec(open('partial2.py').read().split("quart=[v for")[0])
rest=[core.Quad(1728)]+[v for i,(ms,v) in enumerate(T) if i not in (0,22)]
print('rest(no 0,22)',size(rest),flush=True)
print('T0+T22',size([T[0][1],T[22][1]]),flush=True)
