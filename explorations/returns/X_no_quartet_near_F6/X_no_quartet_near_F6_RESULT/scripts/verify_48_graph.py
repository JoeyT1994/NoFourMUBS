#!/usr/bin/env python3
"""Exact 48-ray robust graph and phase-center certificate.

Only standard library. Algebraic field R=Q[b]/(b^4-3/4), with the positive
embedding b=sqrt(sqrt(3)/2), and adjoining i. All graph decisions use exact
rational enclosures. Quantized phase indices are proposed witnesses only;
their angular closeness is proved independently with Taylor remainders.
"""

if not __debug__:
    raise SystemExit("Verification requires assertions; do not use python -O.")

from fractions import Fraction as F
from pathlib import Path
from functools import lru_cache
import math,json,hashlib

Z=(F(0),)*4;ONE=(F(1),F(0),F(0),F(0));BB=(F(0),F(1),F(0),F(0));B2=(F(0),F(0),F(1),F(0))
def ra(a,b):return tuple(x+y for x,y in zip(a,b))
def rn(a):return tuple(-x for x in a)
def rs(a,c):return tuple(x*c for x in a)
def rm(a,b):
    out=[F(0)]*7
    for i,x in enumerate(a):
        for j,y in enumerate(b):out[i+j]+=x*y
    for i in range(6,3,-1):out[i-4]+=F(3,4)*out[i]
    return tuple(out[:4])
def ca(a,b):return (ra(a[0],b[0]),ra(a[1],b[1]))
def cn(a):return (rn(a[0]),rn(a[1]))
def cj(a):return (a[0],rn(a[1]))
def cm(a,b):return (ra(rm(a[0],b[0]),rn(rm(a[1],b[1]))),ra(rm(a[0],b[1]),rm(a[1],b[0])))
def cp(a,k):
    out=(ONE,Z)
    for _ in range(k):out=cm(out,a)
    return out
CONE=(ONE,Z);CZERO=(Z,Z);CI=(Z,ONE)
def abs2(a):
    out=cm(a,cj(a));assert out[1]==Z
    return out[0]
def inner(a,b):
    out=CZERO
    for x,y in zip(a,b):out=ca(out,cm(cj(x),y))
    return out

q12=(B2,rs(ONE,F(1,2)))
q6=(rs(ONE,F(1,2)),B2)
assert cp(q12,12)==CONE and cp(q6,6)==CONE
assert abs2(q12)==ONE and abs2(q6)==ONE
D=(ra(rs(ONE,F(1,2)),rn(B2)),BB)
assert abs2(D)==ONE
bj=(CONE,cm(CI,D),cn(D),cn(CI),cn(cj(D)),cm(CI,cj(D)))
g=tuple(cp(q12,j*j%12) for j in range(6))
rays=[];labels=[]
for label,seed in [('gauss',g),('gauss_conjugate',tuple(cj(x) for x in g)),('bjork',bj)]:
    for shift in range(6):
        for mod in range(6):
            v=tuple(cm(seed[(j-shift)%6],cp(q6,mod*j%6)) for j in range(6))
            v=tuple(cm(x,cj(v[0])) for x in v)
            if v not in rays:rays.append(v);labels.append([label,shift,mod])
assert len(rays)==48
for v in rays:
    assert v[0]==CONE and all(abs2(x)==ONE for x in v)
    for k in range(6):
        total=CZERO
        for j in range(6):total=ca(total,cm(v[j],cp(q6,(-k*j)%6)))
        assert abs2(total)==rs(ONE,6)

# Positive embedding of b, isolated without any floating-point arithmetic.
bits=80; bn=math.isqrt(math.isqrt(3*(1<<(4*bits-2))))
blo=F(bn,1<<bits);bhi=F(bn+1,1<<bits)
assert blo**4<F(3,4)<bhi**4

def ia(a,b):return (a[0]+b[0],a[1]+b[1])
def im(a,b):
    z=[x*y for x in a for y in b];return (min(z),max(z))
def isc(a,c):return (a[0]*c,a[1]*c) if c>=0 else (a[1]*c,a[0]*c)
def iev(a):
    out=(F(0),F(0))
    for c in reversed(a):out=ia(im(out,(blo,bhi)),(c,c))
    return out

t=F(9,25)  # Also certify the uniform .36-radian graph.
radii=[F(2,5)]*12+[F(3,10)]*36
uniform_threshold=24*t*t
O=[];zero=[];norms=[]
for i,a in enumerate(rays):
    oi=zi=0;row=[]
    for j,b in enumerate(rays):
        value=abs2(inner(a,b));lo,hi=iev(value);row.append(value)
        if value==Z:zi|=1<<j
        if i==j:continue
        # No interval ambiguity is permitted by the certificate.
        Othreshold=6*(radii[i]+radii[j])**2
        assert hi<Othreshold or lo>Othreshold,(i,j,lo,hi)
        assert hi<uniform_threshold or lo>uniform_threshold,(i,j,lo,hi)
        assert (hi<Othreshold)==(hi<uniform_threshold)
        if hi<Othreshold:oi|=1<<j
    O.append(oi);zero.append(zi);norms.append(row)

cliques=[]
def enumerate_cliques(a,p):
    if len(a)==6:cliques.append(a);return
    if len(a)+p.bit_count()<6:return
    while p:
        j=(p&-p).bit_length()-1;p&=p-1
        enumerate_cliques(a+[j],p&O[j])
enumerate_cliques([], (1<<48)-1)
assert len(cliques)==16
orthogonal_witnesses=[]
for a in cliques:
    assert all(norms[i][j]==Z for i in a for j in a if i!=j)
    w=[]
    for j in range(48):
        choices=[i for i in a if norms[i][j]==Z]
        assert choices
        w.append(choices[0])
    orthogonal_witnesses.append(w)
assert 2*max(radii)<1  # A perturbed orthogonal pair cannot become unbiased.
robust_probability_bound=(2*max(radii))**2/F(6)
assert robust_probability_bound==F(8,75)
assert F(1,6)-robust_probability_bound==F(3,50)
# One label cannot hold two orthogonal vectors: 6>2sqrt(6)*max(radius).
assert 36>24*max(radii)**2

# Machin's formula and alternating rational series certify a compact pi interval.
def atan_bounds(q,N):
    s=sum(F((-1)**k,(2*k+1)*q**(2*k+1)) for k in range(N))
    nxt=s+F((-1)**N,(2*N+1)*q**(2*N+1))
    return min(s,nxt),max(s,nxt)
a=atan_bounds(5,32);b=atan_bounds(239,10)
pi_interval=(16*a[0]-4*b[1],16*a[1]-4*b[0])
pi_lo=F(314159265358979323846,10**20);pi_hi=pi_lo+F(1,10**20)
assert pi_lo<pi_interval[0] and pi_interval[1]<pi_hi

@lru_cache(None)
def trig_interval(k,Q):
    k=k%Q
    if k>Q//2:k-=Q
    factor=F(2*k,Q)
    angle=isc((pi_lo,pi_hi),factor)
    x=(angle[0]+angle[1])/2;rounding=(angle[1]-angle[0])/2
    re=F(0);imv=F(0);term=F(1)
    for n in range(41):
        if n:
            term*=x/F(n)
        if n%4==0:re+=term
        elif n%4==1:imv+=term
        elif n%4==2:re-=term
        else:imv-=term
    rem=abs(x)**41/F(math.factorial(41))+rounding
    return ((re-rem,re+rem),(imv-rem,imv+rem))

def interval_absmax(a):return max(abs(a[0]),abs(a[1]))
file=Path(__file__).resolve().parents[1]/'data'/'quantized48.json'
quant=json.loads(file.read_text());Q=quant['denominator'];centers=quant['phase_indices']
assert Q==12288 and len(centers)==48
phasebound=F(1,3000)
# If chord<2 sin(phasebound/2), circular angular error<phasebound.
chord_lower=phasebound-phasebound**3/F(24)
max_chord2=F(0)
for v,ks in zip(rays,centers):
    assert len(ks)==6 and ks[0]==0
    for x,k in zip(v,ks):
        assert isinstance(k,int) and 0<=k<Q
        c,s=trig_interval(k,Q)
        r=iev(x[0]);imv=iev(x[1])
        dr=(r[0]-c[1],r[1]-c[0]);di=(imv[0]-s[1],imv[1]-s[0])
        chord2=interval_absmax(dr)**2+interval_absmax(di)**2
        assert chord2<chord_lower**2
        max_chord2=max(max_chord2,chord2)
# The first phase error is zero. Centering cannot increase norm.
assert 5*phasebound**2<F(1,1000)**2

receipt={
 'status':'CERTIFIED',
 'ray_count':48,'ray_labels':labels,
 'all_rays_exactly_biunimodular':True,
 'uniform_exact_ray_phase_radius':'9/25',
 'variable_exact_ray_phase_radii':{'gaussian_0_through_11':'2/5','bjork_12_through_47':'3/10'},
 'uniform_and_variable_orthogonality_graphs_identical':True,
 'uniform_minimum_overlap_probability_upper':'8/75',
 'uniform_gap_below_unbiased_probability':'3/50',
 'orthogonality_edge_count':sum(x.bit_count() for x in O)//2,
 'orthogonality_6_cliques':cliques,
 'orthogonal_witness_for_each_candidate_label':orthogonal_witnesses,
 'quantized_denominator':Q,
 'quantized_center_meanfree_phase_error_upper':'1/1000',
 'quantized_center_per_entry_phase_error_upper':'1/3000',
 'input_quantized_sha256':hashlib.sha256(file.read_bytes()).hexdigest(),
 'proof_outcome':'No orthonormal 6-clique plus one ray unbiased to it can lie in these 48 balls.'
}
(Path(__file__).resolve().parents[1]/'certificates'/'graph.json').write_text(json.dumps(receipt,indent=2))
print(json.dumps(receipt,indent=2))
