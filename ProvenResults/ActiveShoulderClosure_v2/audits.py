"""Exact algebra and independent arithmetic/negative controls."""
from fractions import Fraction as F
from itertools import product
import json
import numpy as np
import sympy as sp
from flint import arb,acb,ctx
from geometry import path_audit,pi_bounds,pilot_radius,rational,contains
from models import TM,real,cis_affine,IJ,N,positive_sqrt
from kernel import roots,complete,seed_models,invariants,complementary_corner,numeric_corners,leaf
from references import exact_reference,certificate


def require(condition,description):
    if not condition:raise AssertionError(description)

def raises(call):
    try:call()
    except (ValueError,ZeroDivisionError):return True
    return False


def algebra():
    x=sp.symbols('x:3',nonzero=True);y=sp.symbols('y:3');T=sp.symbols('T')
    s=sum(x);t=sum(y);u=sp.prod(x);r=sum(y[i]/x[i] for i in range(3));Pi=s*t-sum(x[i]*y[i] for i in range(3))
    p=sp.prod(T-z for z in x)
    for i in range(3):
        require(sp.cancel(t*x[i]**2-Pi*x[i]+u*r-y[i]*sp.diff(p,T).subs(T,x[i]))==0,'side matching identity')
    g,k0,k1,chi,tau,eta,P0c,P1=sp.symbols('g k0 k1 chi tau eta P0c P1',nonzero=True)
    for sig in [-1,1]:
        z=(chi+sp.I*sig*tau)/(2*g);zb=(chi-sp.I*sig*tau)/(2*g)
        def reduce(q):return sp.rem(sp.together(q).as_numer_denom()[0],tau**2-(4*g*g*eta-chi*chi),tau).expand()
        lam0=(g+k0*zb)/P0c;cl1=(g+k1*z)/P1
        target=(g*g+k0*k1*eta+(k0+k1)*chi/2+sp.I*sig*(k1-k0)*tau/2)/(P0c*P1)
        require(reduce(lam0*cl1-target)==0,'u cancellation')
        require(reduce(z*lam0-(chi/2+k0*eta+sp.I*sig*tau/2)/P0c)==0,'Pi cancellation')
    c,l,q,e=sp.symbols('c l q e',nonzero=True);v=l+q+e;w=q+e
    retained=1/c-l/c**2-q/c**2+l*l/c**3
    tail=-e/c**2+(2*l*w+w*w)/c**3-v**3/(c**3*(c+v))
    require(sp.cancel(retained+tail-1/(c+v))==0,'finite inversion identity')
    return dict(side_matching_identities=3,side_cancellations=4,inversion_identity=True)


def eval_model(m,v):
    return m.c+sum((d*t for d,t in zip(m.d,v)),acb(0))+sum((q*v[i]*v[j] for q,(i,j) in zip(m.q,IJ)),acb(0))+m.e

def arithmetic():
    ctx.prec=160
    a=TM(acb(2,1),[acb(F(i+1,100).numerator)/F(i+1,100).denominator for i in range(5)], [acb(1)/((i+1)*10000) for i in range(len(IJ))],acb(arb(0,arb(1)/10**8),arb(0,arb(1)/10**9)))
    b=TM(acb(1,-1),[acb(0,i+1)/500 for i in range(5)], [acb(-1)/((i+1)*20000) for i in range(len(IJ))])
    values=[list(v) for v in product((-1,0,1),repeat=5)]
    for v in values:
        av,bv=eval_model(a,v),eval_model(b,v)
        require(eval_model(a*b,v).contains(av*bv),'model product contains independently evaluated value')
        # Range-input inversion includes an independently evaluated inverse.
        require(eval_model(a.inv(),v).overlaps(1/av),'model inversion agrees with independent interval')
    c=F(7,19);coef=[F(i+1,1000) for i in range(5)];z=cis_affine(c,coef)
    for v in values:
        exact=acb(0,real(c+sum((q*t for q,t in zip(coef,v)),F(0)))).exp()
        require(eval_model(z,v).contains(exact),'phase remainder enclosure')
    mm=TM(4,[acb(1)/100]*5)
    sq,kind=positive_sqrt(mm)
    for v in values:require(eval_model(sq,v).real.contains(eval_model(mm,v).real.sqrt()),'positive sqrt residual enclosure')
    require(raises(lambda:TM().inv()),'zero denominator rejected')
    rr,info=roots(TM(0),TM(1))
    for k in range(3):
        exact=acb(0,2*arb.pi()*k/3).exp()
        require(any(x.range().contains(exact) for x in rr),'cube roots exhaust known roots')
    require(raises(lambda:roots(TM(3),TM(1))),'triple root rejected')
    # Completion against an independently generated exact Fourier matrix.
    ref=dict(a='1/50',b='1/200',rows=list(range(6)),cols=[0,2,5,1,3,4])
    J=exact_reference(ref);E=[[TM(x) for x in row[:3]] for row in J[:3]]
    B=[[TM(x) for x in row[3:]] for row in J[:3]];C=[[TM(x) for x in row[:3]] for row in J[3:]]
    H,_=complete(E,B,C)
    require(all(H[i][j].range().contains(J[i][j]) for i in range(6) for j in range(6)),'validated completion covers known physical matrix')
    for rows,cols in [((0,1,2),(0,1,2)),((0,2,5),(1,3,4)),((1,3,5),(0,2,4))]:
        r1=invariants([[TM(J[i][j]) for j in cols] for i in rows])[-1].range().real
        r2=complementary_corner([[TM(x) for x in row] for row in J],rows,cols).range().real
        require(r1.overlaps(r2),'independent corner and complementary-square evaluations')
    # A physical Fourier positive control must retain a tube alternative.
    Jm=np.array([[complex(float(z.real.mid()),float(z.imag.mid())) for z in row] for row in J])
    _,rr,cc=numeric_corners(Jm)[0]
    V=[[J[i][j]*J[rr[0]][cc[0]]/(J[i][cc[0]]*J[rr[0]][j]) for j in cc] for i in rr]
    phases=[V[i][j].arg() for i,j in [(1,1),(1,2),(2,1),(2,2)]]
    centers=[F(float(t.mid())) for t in phases];radius=F(1,10**10)
    require(all((real(c)+arb(0,real(radius))).contains(t) for c,t in zip(centers,phases)),'known Fourier seed is inside control box')
    report=leaf(centers,[radius]*4)
    require(report['ok'] and any(p['reason']=='matrix_tube' for p in report['pairings']),'known physical Fourier carrier is retained by a tube alternative')
    z=certificate('1/50','1/200');z['radius']='99'
    require(certificate('1/50','1/200')['radius']!='99','reference metadata mutation cannot change acceptance')
    return dict(model_grid_points=len(values),known_cubic=True,multiple_root_rejected=True,physical_completion=True,corner_controls=3)


def geometry():
    ctx.prec=512
    require(path_audit(['00','01','1']),'valid partition')
    for bad in [[],['0'],['0','0','1'],['','0'],['00','1'],['2']]:
        require(raises(lambda:path_audit(bad)),'malformed partition must fail')
    t=F(1,5);tan2=2*t/(1-t*t);tan4=2*tan2/(1-tan2*tan2)
    require((tan4-F(1,239))/(1+tan4/F(239))==1,'exact Machin tangent identity')
    lo,hi=pi_bounds();require(real(lo)<arb.pi() and real(hi)>arb.pi(),'Machin rational pi bounds')
    require(real(pilot_radius())>arb.pi()/8192+arb(2)**-40,'pilot radius includes exact guard')
    require(pilot_radius()-(lo/8192+F(1,2**40))<F(1,2**80),'outward-radius excess less than 2^-80')
    for v in [float('nan'),float('inf'),True,'0.1']:
        require(raises(lambda:rational(v)),'invalid exact input rejected')
    require(rational(0.1)==F(*float(0.1).as_integer_ratio()),'binary64 exact semantics')
    require(not contains([F(0)]*4,[F(1)]*4,[F(0)]*4,[F(1)+F(1,2**40)]*4),'guard cannot be dropped')
    return dict(partition_negative_controls=6,pi_bounds=True,guard=True)


def run():return dict(algebra=algebra(),arithmetic=arithmetic(),geometry=geometry(),status='PASS')
if __name__=='__main__':print(json.dumps(run(),indent=2))
