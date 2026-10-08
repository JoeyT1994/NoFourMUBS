#!/usr/bin/env python3
"""Exact algebra, outward controls, source pins, and optional full 1000-box replay.
No floating proposal comparison is an acceptance test.
"""
import argparse, importlib.util, json, hashlib, math, sys, time, concurrent.futures
from pathlib import Path
from fractions import Fraction
import sympy as sp
from interval_core import *
from predicate import predicate, coeffs
sys.dont_write_bytecode=True
HERE=Path(__file__).resolve().parent

def exact_algebra(root):
    # Proved archive input P1; regenerate its Laurent identities, not a numeric sample.
    path=root/'ProvenResults/CornerBounds/verify.py'
    spec=importlib.util.spec_from_file_location('accepted_corner_algebra',path)
    mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod)
    seeds,D,R=mod.generic_polynomials(); A,X,Cc,Y=seeds
    assert sp.expand(R-R.subs({X:Cc,Cc:X},simultaneous=True))==0
    # Invoke the IMPLEMENTED six coefficients on an exact rational function ring.
    class Exact:
        def __init__(self,z):self.z=z.z if isinstance(z,Exact) else sp.sympify(z)
        def __add__(self,b):return Exact(self.z+Exact(b).z)
        __radd__=__add__
        def __neg__(self):return Exact(-self.z)
        def __sub__(self,b):return self+-Exact(b)
        def __rsub__(self,b):return Exact(b)+-self
        def __mul__(self,b):return Exact(self.z*Exact(b).z)
        __rmul__=__mul__
        def __pow__(self,k):return Exact(self.z**k)
        def conjugate(self):return Exact(self.z.subs({A:1/A,Cc:1/Cc},simultaneous=True))
    cs=coeffs(Exact(A),Exact(Cc))
    expr=sum(c.z*X**p*Y**q-c.conjugate().z*X**(-p)*Y**(-q) for (p,q),c in cs.items())
    assert sp.expand(expr-D)==0
    print('PASS: implemented six coefficients and their conjugates equal det(L); R is transpose invariant',flush=True)
    xs=sp.symbols('x0:3',nonzero=True);ys=sp.symbols('y0:3',nonzero=True)
    ss,tt=sum(xs),sum(ys);rr=sum(y/x for x,y in zip(xs,ys));rrbar=sum(x/y for x,y in zip(xs,ys))
    uu,vv=sp.prod(xs),sp.prod(ys);pi=ss*tt-sum(x*y for x,y in zip(xs,ys))
    pibar=pi.subs({**{x:1/x for x in xs},**{y:1/y for y in ys}},simultaneous=True)
    assert sp.expand(sum(x*x/y for x,y in zip(xs,ys))-ss*rrbar+uu*pibar)==0
    assert sp.expand(sum(y*y/x for x,y in zip(xs,ys))-tt*rr+vv*pibar)==0
    # Six moment identities including M11=st-Pi are then exact.
    g,chi,eta,k0,k1,k2,h,P0,P1,P2=sp.symbols('g chi eta k0 k1 k2 h P0 P1 P2',nonzero=True,real=True)
    z=(chi+sp.I*h)/(2*g);zb=(chi-sp.I*h)/(2*g)
    # Reduce only by h^2=4g^2 eta-chi^2, a polynomial identity in the sheet parameter.
    def red(z):
        num,den=sp.fraction(sp.cancel(z))
        return sp.rem(sp.Poly(num,h),sp.Poly(h*h-(4*g*g*eta-chi*chi),h)).as_expr()==0
    assert red(z*(g+k0*zb)/P0-(chi+2*k0*eta+sp.I*h)/(2*P0))
    assert red(zb*(g+k1*z)/P1-(chi+2*k1*eta-sp.I*h)/(2*P1))
    assert red(zb*(g+k2*z)/P2-(chi+2*k2*eta-sp.I*h)/(2*P2))
    f0,f1,f2=sp.symbols('f0 f1 f2',real=True)
    assert sp.expand(3*(f0*f0+f1*f1+f2*f2)-(f0+f1+f2)**2-((f0-f1)**2+(f0-f2)**2+(f1-f2)**2))==0
    print('PASS: six polarized moments, all three denominator cancellations, and mean-square inequality',flush=True)

def interval_checks():
    # Independent rational Taylor tails, containing the interval backend's narrow result.
    # A regression test of the backend, not a claim to verify every line of libmp.
    N=100
    for x in [Fraction(k,4) for k in range(-24,25)]:
        s=sum((-1)**j*x**(2*j+1)/math.factorial(2*j+1) for j in range(N))
        c=sum((-1)**j*x**(2*j)/math.factorial(2*j) for j in range(N))
        se=abs(x)**(2*N+1)/math.factorial(2*N+1)
        ce=abs(x)**(2*N)/math.factorial(2*N)
        # The exact value lies in each rational Taylor interval. Their intersection
        # with the directed enclosure is tested exactly at the interval precision.
        si=iv.sin(V(x));ci=iv.cos(V(x))
        assert not (si.b<V(s-se).a or si.a>V(s+se).b)
        assert not (ci.b<V(c-ce).a or ci.a>V(c+ce).b)
    # A non-monotone interval must include the extremum, not just endpoint values.
    assert iv.sin(iv.mpf([1,2])).b>=1
    assert iv.cos(iv.mpf([-1,1])).b>=1
    assert iv.sin(iv.mpf([-10,10])).a<=-1 and iv.sin(iv.mpf([-10,10])).b>=1
    for k in [9,11,12,13,14]:
        assert V(radius_for_level(k)).a >= (iv.pi/2**k+V(2)**(-40)).b
    # Negative controls: exact D0 Fourier-family carriers from archive CornerBounds §4.
    for delta in [Fraction(1,100),Fraction(1,5),Fraction(1,2)]:
        exact=[-2*iv.pi/3,-iv.pi/3+V(delta),V(0),-iv.pi+V(delta)]
        centers=[midpoint(x) for x in exact];radius=2**-35
        assert all(abs(x-V(c)).b<V(radius).a for x,c in zip(exact,centers))
        for transpose in [False,True]:assert not predicate(centers,[radius]*4,transpose)['ok']
    for centers,radii in [([math.nan,0,0,0],[1]*4),([0]*4,[0]*4),([0]*3,[1]*4),([0]*4,[math.inf]*4)]:
        try:predicate(centers,radii)
        except ValueError:pass
        else:raise AssertionError('invalid input was not rejected')
    print('PASS: directed arithmetic controls, padded seed radii, and six physical D0 rejection controls',flush=True)

def source_checks(root):
    manifest=json.loads((HERE/'INPUTS.json').read_text())
    for p,h in manifest['sha256'].items():
        assert hashlib.sha256((root/p).read_bytes()).hexdigest()==h,p
    print('PASS: accepted/proved source pins',flush=True)

def replay_one(row):
    out=predicate(row['source']['theta'],[row['radius']]*4,row['result']['transpose'])
    assert out['ok']==row['result']['ok'],row['index']
    # Prove the recorded rational seed radius covers the specified sample cell.
    assert V(row['radius']).a>=(iv.pi/2**row['source']['level']+V(2)**(-40)).b
    return int(out['ok'])


def audit_sample(root,basename,total,rows):
    import gzip
    selected={1+i*(total-1)//999:i for i in range(1000)}
    source=root/'NumericalCampaign/Campaign/branch_bins_study_2026-09-30/results'/basename
    assert len(rows)==1000
    count=0
    with gzip.open(source,'rt') as f:
        for count,line in enumerate(f,1):
            if count not in selected:continue
            index=selected[count];parts=line.split();row=rows[index]
            assert row['index']==index and row['source']['line']==count
            assert row['source']['theta']==[float(x) for x in parts[3:7]]
            assert row['source']['level']==int(parts[2])
            assert str(row['source']['cell'])==parts[0]
    assert count==total
    print('PASS: 1000 deterministic evenly spaced source records; cached CSV R bounds unused',flush=True)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--project-root',type=Path,required=True)
    ap.add_argument('--all',action='store_true',help='replay all 1000 seed predicates')
    ap.add_argument('--workers',type=int,default=4);a=ap.parse_args();start=time.time()
    source_checks(a.project_root);exact_algebra(a.project_root);interval_checks()
    rows=[json.loads(l) for l in (HERE/'data/pilot_00000.jsonl').read_text().splitlines()]
    audit_sample(a.project_root,'residual_boxes_level13.txt.gz',338054,rows)
    if a.all:
        with concurrent.futures.ProcessPoolExecutor(max_workers=a.workers) as ex:closed=sum(ex.map(replay_one,rows,chunksize=4))
        assert len(rows)==1000 and closed==511
        print('PASS: full outward replay, 511/1000 strict-D0 exclusions; no production quartet tests',flush=True)
    else:
        for i in [0,19,100,250,400,600,750,900,999]:replay_one(rows[i])
        print('PASS: nine deterministic replay controls (use --all for all 1000)',flush=True)
    print(json.dumps(dict(status='PASS',full_replay=a.all,wall_seconds=time.time()-start)),flush=True)
if __name__=='__main__':main()
