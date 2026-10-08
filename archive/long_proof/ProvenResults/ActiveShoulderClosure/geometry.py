"""Exact rational geometry. No binary64 comparison authorizes containment."""
from fractions import Fraction as F
from itertools import product
from functools import lru_cache
from pathlib import Path
import gzip,json,math
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]

def rational(x):
    if isinstance(x,bool) or not isinstance(x,(int,float,F)):raise ValueError('int, Fraction or finite binary64 required')
    if isinstance(x,float) and not math.isfinite(x):raise ValueError('nonfinite input')
    return F(x)

@lru_cache(None)
def pi_bounds():
    def atan_bounds(q,n=80):
        s=sum((F((-1)**k,(2*k+1)*q**(2*k+1)) for k in range(n)),F(0))
        t=s+F((-1)**n,(2*n+1)*q**(2*n+1))
        return min(s,t),max(s,t)
    a,b=atan_bounds(5);c,d=atan_bounds(239)
    return 16*a-4*d,16*b-4*c

@lru_cache(None)
def pilot_radius():
    # Rational outward radius, less than 2^-80 above the exact obligation.
    h=pi_bounds()[1]/8192+F(1,2**40)
    return F((h*2**80).__floor__()+1,2**80)

def pilot_rows():
    # Bundled exact byte copy, so the additive module can replay in either
    # the standalone checkout or the existing repository layout.
    path=HERE/'data/shoulder_boxes_pilot_full.txt.gz'
    with gzip.open(path,'rt') as f:
        index=0
        for line in f:
            if not line.strip() or line.startswith('#'):continue
            a=line.split()
            if len(a)!=9 or int(a[0])!=13:raise ValueError('pilot format')
            c=[F(float(x)) for x in a[1:5]]
            yield dict(id=index,level=13,centers=c,code=a[5],seed=a[6],family=a[7],line=line.rstrip('\n'))
            index+=1

def grid_keys(c,r,grid):
    return list(product(*[range(((x-h)*grid).__floor__(),((x+h)*grid).__floor__()+1) for x,h in zip(c,r)]))

def build_region(grid=256):
    keys=set();count=0
    for row in pilot_rows():
        keys.update(grid_keys(row['centers'],[pilot_radius()]*4,grid));count+=1
    return dict(format=1,grid=grid,roots=[list(x) for x in sorted(keys)],pilot_count=count,pilot_radius=str(pilot_radius()),status='UNRESOLVED')

def root_box(key,grid,path=''):
    c=[F(2*k+1,2*grid) for k in key];r=[F(1,2*grid)]*4
    for d,b in enumerate(path):
        if b not in '01':raise ValueError('binary path required')
        j=d%4;r[j]/=2;c[j]+=(1 if b=='1' else -1)*r[j]
    return c,r

def path_audit(paths):
    paths=list(paths)
    if not paths or len(paths)!=len(set(paths)):raise ValueError('empty or duplicate partition')
    ss=set(paths)
    for p in paths:
        if any(b not in '01' for b in p):raise ValueError('invalid path')
        if any(p[:i] in ss for i in range(len(p))):raise ValueError('non-prefix-free partition')
    if sum((F(1,2**len(p)) for p in paths),F(0))!=1:raise ValueError('partition Kraft sum')
    return True

def contains(oc,orr,ic,ir):return all(abs(a-b)+h<=r for a,r,b,h in zip(oc,orr,ic,ir))

def intersection(c,r,key,grid):
    lows=[max(x-h,F(k,grid)) for x,h,k in zip(c,r,key)]
    highs=[min(x+h,F(k+1,grid)) for x,h,k in zip(c,r,key)]
    if any(a>b for a,b in zip(lows,highs)):return None
    return [(a+b)/2 for a,b in zip(lows,highs)],[(b-a)/2 for a,b in zip(lows,highs)]

if __name__=='__main__':
    region=build_region();(HERE/'data/region.json').write_text(json.dumps(region,indent=2)+'\n')
    print(len(region['roots']),'rational grid roots; pilot boxes',region['pilot_count'])
