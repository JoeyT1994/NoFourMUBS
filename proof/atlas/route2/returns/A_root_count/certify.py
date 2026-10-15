#!/usr/bin/env python3
"""Exact dyadic-interval certificates for 252 roots in each sample parameter box.

All verdicts use Python integer arithmetic (outward rounding on a 2**-120 grid).
Numpy proposes centres, inverse Jacobians and separating witnesses only.
A successful test proves its statements independently of proposal accuracy.
The certified family is the inverse-dual system for every complex matrix A
in a rectangular coefficient box, not an assertion that a rounded A is unitary.
"""
if not __debug__:
    raise RuntimeError('FAIL: certificate checks require assertions; do not use Python -O')

import os
os.environ.setdefault('OPENBLAS_NUM_THREADS','1')
import time,json,argparse,itertools,math
from pathlib import Path
import numpy as np

P=120; S=1<<P
HERE=Path(__file__).resolve().parent

class RI:
    __slots__=('lo','hi')
    def __init__(self,lo,hi=None):self.lo=int(lo);self.hi=int(lo if hi is None else hi)
    @staticmethod
    def exact(x):
        if isinstance(x,RI):return x
        if isinstance(x,int):return RI(x*S)
        n,d=float(x).as_integer_ratio()
        return RI(n*S//d,-((-n*S)//d))
    def __add__(a,b):
        b=RI.exact(b);return RI(a.lo+b.lo,a.hi+b.hi)
    __radd__=__add__
    def __neg__(a):return RI(-a.hi,-a.lo)
    def __sub__(a,b):return a+-RI.exact(b)
    def __rsub__(a,b):return RI.exact(b)+-a
    def __mul__(a,b):
        b=RI.exact(b);p=(a.lo*b.lo,a.lo*b.hi,a.hi*b.lo,a.hi*b.hi)
        return RI(min(p)//S,-((-max(p))//S))
    __rmul__=__mul__
    def bound(a):return max(abs(a.lo),abs(a.hi))
    def excludes_zero(a):return a.lo>0 or a.hi<0

class CI:
    __slots__=('re','im')
    def __init__(self,re=0,im=0):self.re=RI.exact(re);self.im=RI.exact(im)
    @staticmethod
    def exact(z):
        if isinstance(z,CI):return z
        if isinstance(z,(int,float)):return CI(z)
        return CI(z.real,z.imag)
    def __add__(a,b):
        b=CI.exact(b);return CI(a.re+b.re,a.im+b.im)
    __radd__=__add__
    def __neg__(a):return CI(-a.re,-a.im)
    def __sub__(a,b):return a+-CI.exact(b)
    def __rsub__(a,b):return CI.exact(b)+-a
    def __mul__(a,b):
        b=CI.exact(b);return CI(a.re*b.re-a.im*b.im,a.re*b.im+a.im*b.re)
    __rmul__=__mul__
    def conj(a):return CI(a.re,-a.im)
    def excludes_zero(a):return a.re.excludes_zero() or a.im.excludes_zero()
    def bound_l1(a):return a.re.bound()+a.im.bound()
    def bound_max(a):return max(a.re.bound(),a.im.bound())
    def mid(a):return complex((a.re.lo+a.re.hi)/(2*S),(a.im.lo+a.im.hi)/(2*S))

def box(z,r):
    z=CI.exact(z);return CI(RI(z.re.lo-r,z.re.hi+r),RI(z.im.lo-r,z.im.hi+r))

def determinant(M):
    # Leibniz formula: at most 720 terms (we only need sizes <= 3 here).
    n=len(M);ans=CI()
    for p in itertools.permutations(range(n)):
        t=CI(1)
        for i in range(n):t=t*M[i][p[i]]
        inv=sum(p[i]>p[j] for i in range(n) for j in range(i+1,n))
        ans=ans+((-t) if inv%2 else t)
    return ans

def equations(A,x,v):
    a=[sum((A[j][i]*x[i] for i in range(6)),CI()) for j in range(6)]
    y=[sum((A[j][i]*v[j] for j in range(6)),CI()) for i in range(6)]
    c=x[0]*y[0]
    return [x[i]*y[i]-c for i in range(1,6)]+[a[j]*v[j]-c for j in range(5)],a,y

def jacobian(A,x,v,k,l):
    _,a,y=equations(A,x,v)
    ix=[i for i in range(6) if i!=k];iv=[j for j in range(6) if j!=l]
    J=[]
    for i in range(1,6):
        J.append([(y[i] if q==i else CI())-(y[0] if q==0 else CI()) for q in ix]+[x[i]*A[j][i]-x[0]*A[j][0] for j in iv])
    for j in range(5):
        J.append([v[j]*A[j][q]-(y[0] if q==0 else CI()) for q in ix]+[(a[j] if q==j else CI())-x[0]*A[q][0] for q in iv])
    return J

def matmul(A,B):
    return [[sum((A[i][k]*B[k][j] for k in range(len(B))),CI()) for j in range(len(B[0]))] for i in range(len(A))]

def certify_one(Abox,Afloat,w,r):
    x=w[:6].copy(); y=w[6:].copy();v=np.linalg.solve(Afloat.T,y)
    k=int(np.argmax(abs(x)));l=int(np.argmax(abs(v)));x=x/x[k];v=v/v[l]
    x[k]=1.;v[l]=1.
    # Three accurate Newton corrections in this affine chart (proposal only).
    ix=[i for i in range(6) if i!=k];iv=[j for j in range(6) if j!=l]
    Ac=[[CI.exact(z) for z in row] for row in Afloat]
    for _ in range(3):
        xc=[CI.exact(z) for z in x];vc=[CI.exact(z) for z in v]
        ff=equations(Ac,xc,vc)[0];JJ=jacobian(Ac,xc,vc,k,l)
        Jn=np.array([[z.mid() for z in row] for row in JJ]);fn=np.array([z.mid() for z in ff])
        d=np.linalg.solve(Jn,-fn);x[ix]+=d[:5];v[iv]+=d[5:]
    xc=[CI.exact(z) for z in x];vc=[CI.exact(z) for z in v]
    Rn=np.linalg.inv(np.array([[z.mid() for z in row] for row in jacobian(Ac,xc,vc,k,l)]))
    R=[[CI.exact(z) for z in row] for row in Rn]
    X=[box(z,0 if i==k else r) for i,z in enumerate(xc)]
    V=[box(z,0 if j==l else r) for j,z in enumerate(vc)]
    f0=equations(Abox,xc,vc)[0];J=jacobian(Abox,X,V,k,l)
    Rf=matmul(R,[[z] for z in f0]);RJ=matmul(R,J)
    eta=max(z[0].bound_max() for z in Rf)
    q=max(sum((CI(int(i==j))-RJ[i][j]).bound_l1() for j in range(10)) for i in range(10))
    # eta/S + (q/S)*(r/S) < r/S, all via integers.
    contraction=(q<S and eta*S+q*r<r*S)
    _,_,Y=equations(Abox,X,V)
    interior=all(z.excludes_zero() for z in X+Y)
    return {'pass':bool(contraction),'contraction':bool(contraction),'interior':bool(interior),'eta':eta,'q':q,'k':k,'l':l,'X':X,'V':V,'x':x,'v':v,'R':Rn}

def verify_minors(Abox):
    # General (nonunitary) coefficient boxes: certify all 923 nonempty square minors.
    # Complementary minors cannot be inferred without unitarity.
    counts={};bounds={}
    # For k>=4, use exact interval determinant via subset dynamic programming,
    # avoiding 720-term expansion overhead and retaining outward rounding.
    for k in range(1,7):
        least=None;count=0
        for I in itertools.combinations(range(6),k):
            for J in itertools.combinations(range(6),k):
                D=det_dp([[Abox[i][j] for j in J] for i in I])
                assert D.excludes_zero(),f'minor k={k},I={I},J={J} not excluded'
                # lower bound from either real or imaginary interval.
                lb=max(D.re.lo,-D.re.hi,D.im.lo,-D.im.hi,0)
                least=lb if least is None else min(least,lb);count+=1
        counts[str(k)]=count;bounds[str(k)]=least/S
    return counts,bounds

def det_dp(M):
    n=len(M);dp={0:CI(1)}
    for r in range(n):
        new={}
        for mask,t in dp.items():
            for j in range(n):
                if not (mask>>j)&1:
                    # prior selected columns greater than j supply inversions
                    inv=(mask>>(j+1)).bit_count();m=mask|(1<<j)
                    u=t*M[r][j]
                    if inv%2:u=-u
                    new[m]=new.get(m,CI())+u
        dp=new
    return dp[(1<<n)-1]

def run(idx,delta_exp=25,r_exp=13):
    data=np.load(HERE/f'roots_{idx}.npz');A=data['A'];W=data['projective']
    assert len(W)==252,'Requires exactly 252 proposals'
    delta=1<<(P-delta_exp);r=1<<(P-r_exp)
    Abox=[[box(z,delta) for z in row] for row in A]
    start=time.perf_counter();counts,minor_bounds=verify_minors(Abox);minor_seconds=time.perf_counter()-start
    print(f'PASS centre {idx}: all {sum(counts.values())} nonempty square minors nonzero throughout coefficient box',flush=True)
    certs=[];t=time.perf_counter()
    for i,w in enumerate(W):
        c=certify_one(Abox,A,w,r);certs.append(c)
        if not c['pass']:
            print(f"FAIL centre {idx} root {i}: eta/r={c['eta']/r:.6g} q={c['q']/S:.6g} interior={c['interior']}",flush=True)
        # Individual PASS/FAIL per root required by the handoff.
        else:print(f"PASS centre {idx} root {i:03d}: eta/r={c['eta']/r:.6g} q={c['q']/S:.6g}",flush=True)
    root_seconds=time.perf_counter()-t
    t=time.perf_counter();npairs=0;min_sep=None
    for i in range(len(certs)):
        a=certs[i]
        for j in range(i):
            b=certs[j]
            cross=a['x'][:,None]*b['x'][None,:]-b['x'][:,None]*a['x'][None,:]
            p,q=np.unravel_index(np.argmax(abs(cross)),cross.shape)
            D=a['X'][p]*b['X'][q]-b['X'][p]*a['X'][q]
            assert D.excludes_zero(),f'FAIL separating {i},{j}'
            lb=max(D.re.lo,-D.re.hi,D.im.lo,-D.im.hi,0)
            min_sep=lb if min_sep is None else min(min_sep,lb);npairs+=1
    pair_seconds=time.perf_counter()-t
    print(f'PASS centre {idx}: {npairs} pairwise projective-separation witnesses',flush=True)
    passed=all(c['pass'] for c in certs)
    print(('PASS' if passed else 'FAIL')+f' centre {idx}: 252 distinct simple roots uniformly in A box',flush=True)
    summary={'centre':idx,'arithmetic':'integer dyadic intervals, 120 fractional bits','passed':passed,'coefficient_real_imag_halfwidth':2.**-delta_exp,'root_chart_real_imag_halfwidth':2.**-r_exp,'root_boxes':len(certs),'local_coordinate_nonzero_tests_passed':sum(c['interior'] for c in certs),'boundary_exclusion':'global full-spark theorem; local coordinate tests are only diagnostics','passing_roots':sum(c['pass'] for c in certs),'minor_counts':counts,'minor_component_lower_bounds':minor_bounds,'max_eta_over_r':max(c['eta']/r for c in certs),'max_q':max(c['q']/S for c in certs),'max_eta_over_r_plus_q':max(c['eta']/r+c['q']/S for c in certs),'min_projective_separation_component':min_sep/S,'timing_seconds':{'minors':minor_seconds,'root_contractions':root_seconds,'separation':pair_seconds,'total':time.perf_counter()-start}}
    (HERE/f'certificate_{idx}.json').write_text(json.dumps(summary,indent=2)+'\n')
    # Exact IEEE proposals can be replayed without re-running homotopy.
    np.savez(HERE/f'certified_charts_{idx}.npz',A=A,x=np.array([c['x'] for c in certs]),v=np.array([c['v'] for c in certs]),R=np.array([c['R'] for c in certs]),patches=np.array([[c['k'],c['l']] for c in certs]),delta_exp=delta_exp,r_exp=r_exp)
    print(json.dumps(summary,indent=2),flush=True)
    if not passed:raise SystemExit(1)
    return summary

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--centres',type=int,nargs='+',default=[100,2471,5305]);ap.add_argument('--delta-exp',type=int,default=25);ap.add_argument('--radius-exp',type=int,default=13);args=ap.parse_args()
    for i in args.centres:run(i,args.delta_exp,args.radius_exp)
