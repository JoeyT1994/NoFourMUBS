exec(open('partial2.py').read().split("quart=[v for")[0])
groups={'(-4,2)':[1,2,3],'(2,2)':[10,32,55],'(-2,-2)':[23,24,25],'(4,-2)':[26,30,36],'(2,-4)':[15,45,59],'(-2,4)':[50,51,52]}
for k,g in groups.items():
    print(k,size([T[i][1] for i in g]),flush=True)
import itertools
keys=list(groups)
for a,b in itertools.combinations(keys,2):
    print(a,b,size([T[i][1] for i in groups[a]+groups[b]]),flush=True)
