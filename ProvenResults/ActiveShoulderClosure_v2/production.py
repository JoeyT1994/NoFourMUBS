"""Exact production census and cube-isometric transport; no numerical acceptance."""
from itertools import permutations,product
from fractions import Fraction as F
from pathlib import Path
import json
from geometry import HERE,pi_bounds


def frames():
    """Derive every linear phase map from row/column permutations explicitly."""
    result=[]
    for tr,rr,cc,sign in product((0,1),permutations(range(3)),permutations(range(3)),(1,-1)):
        cols=[]
        for k in range(4):
            P=[[0]*3 for _ in range(3)];P[1+k//2][1+k%2]=1
            if tr:P=list(map(list,zip(*P)))
            Q=[[P[i][j] for j in cc] for i in rr]
            cols.append([sign*(Q[i][j]-Q[i][0]-Q[0][j]+Q[0][0]) for i,j in ((1,1),(1,2),(2,1),(2,2))])
        M=list(map(list,zip(*cols)));result.append(dict(matrix=M,rows=list(rr),cols=list(cc),transpose=bool(tr),conjugate=sign==-1))
    return result

def apply(M,q):return tuple(sum(a*x for a,x in zip(row,q)) for row in M)

def isometry(M):
    return all(sum(abs(a) for a in row)==1 for row in M) and all(sum(abs(a) for a in col)==1 for col in zip(*M))

def build():
    ff=frames();iso=[f for f in ff if isometry(f['matrix'])];seeds=[];representatives=set();counts={}
    for base,expected in [((1,2,2,4),18),((4,5,0,3),72)]:
        orbit=sorted({tuple(v%6 for v in apply(f['matrix'],base)) for f in ff})
        if len(orbit)!=expected:raise ValueError('production class census')
        counts[str(base)]=len(orbit)
        for q in orbit:
            rep,f=min(((tuple(v%6 for v in apply(f['matrix'],q)),f) for f in iso),key=lambda x:x[0])
            raw=apply(f['matrix'],q);shifts=[(a-b)//6 for a,b in zip(raw,rep)]
            if tuple(a-6*b for a,b in zip(raw,shifts))!=rep:raise ValueError('transport')
            seeds.append(dict(seed=list(q),representative=list(rep),frame=f,period_shifts=shifts));representatives.add(rep)
    reps=sorted(representatives);lo,hi=pi_bounds();pc=(lo+hi)/2;pr=(hi-lo)/2
    h=hi/512+F(1,2**40);root=[]
    for q in reps:
        # Exact rational outward enclosure of each symbolic centre/cube.
        root.append(dict(seed=list(q),centers=[str(F(k,3)*pc) for k in q],radii=[str(h+F(abs(k),3)*pr) for k in q]))
    return dict(format=2,kind='production_cubes',units='radians',half_width='pi/512 + 2^-40',class_counts=counts,seeds=seeds,roots=root)

if __name__=='__main__':
    p=HERE/'data/production_region.json';p.write_text(json.dumps(build(),indent=2,sort_keys=True)+'\n');print(p)
