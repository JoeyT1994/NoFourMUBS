"""Independent outward quadratic implicit charts and Lipschitz completions.
Numerical roots, inverse matrices, and Taylor predictors only propose.
Acceptance is by interval residuals, contraction, orbit separation, and
fixed-inverse completion bounds. This is not a quartet-cover verifier.
"""
import math,itertools
import numpy as np
import sys
from pathlib import Path
try:
    from ..SymmetricSignedCornerPrune.interval_core import *
except ImportError:
    sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'SymmetricSignedCornerPrune'))
    from interval_core import *
PAIRS=list(itertools.combinations_with_replacement(range(4),2));N=15

def moments_float(q):
    x=q[::2];y=q[1::2]
    return np.array([f(a).sum() for a in (x,y,y-x) for f in (np.cos,np.sin)])
def jac_float(q):
    J=np.zeros((6,6))
    for k in range(3):
        a,b=q[2*k:2*k+2];z=b-a
        J[0,2*k]=-math.sin(a);J[1,2*k]=math.cos(a)
        J[2,2*k+1]=-math.sin(b);J[3,2*k+1]=math.cos(b)
        J[4,2*k]=math.sin(z);J[5,2*k]=-math.cos(z)
        J[4,2*k+1]=-math.sin(z);J[5,2*k+1]=math.cos(z)
    return J

def proposal(theta,sign):
    a,b,c,d=np.exp(1j*np.array(theta,dtype=float));s=-1-a-b;t=-1-c-d;r=-1-c/a-d/b
    X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2;p=X+Y+Z;J=2*(s*r*t.conjugate()).real;W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J;R=4*g*g*eta-chi*chi
    if R<=0:raise ValueError('floating proposal outside R>0')
    z=(chi+sign*1j*np.sqrt(R))/(2*g)
    P=[r*s*s+r.conjugate()*t*t+(3-Z)*s*t,t*s.conjugate()**2+r*r*t.conjugate()+(3-Y)*r*s.conjugate(),s*t.conjugate()**2+r.conjugate()**2*s.conjugate()+(3-X)*r.conjugate()*t.conjugate()]
    la=[(g+k*z.conjugate())/pp.conjugate() for k,pp in zip([9-Z,9-Y,9-X],P)]
    u=la[0]*la[1].conjugate();mu=s/3;nu=t/3;n=1-abs(mu)**2;k=r/3-nu*mu.conjugate();alpha=mu*mu-u*mu.conjugate();gamma=2*mu*nu-z*la[0]/3
    delta=np.sqrt(complex(g/27*la[0]*la[1].conjugate()*la[2].conjugate()))
    df=27/g*(n*gamma-2*alpha*k)*delta.conjugate()
    if df.real<0:delta=-delta;df=-df
    rr=(n+df.real)/2;q=alpha/rr;cp=(k-delta*q.conjugate())/n;cm=(k*q+delta)/n;sig=u+mu*q;xi=sig*sig/rr
    M=np.array([[1,0,0],[mu,sig,q*sig.conjugate()],[nu,cp*sig,cm*sig.conjugate()]])
    w=np.exp(1j*np.angle(xi)/3);om=np.exp(2j*np.pi/3);F=np.array([[om**(j*k) for k in range(3)] for j in range(3)])
    B=M@np.diag([1,w.conjugate(),w])@F
    q=np.angle(B[1:,:].T).flatten();target=np.array([s.real,s.imag,t.real,t.imag,r.real,r.imag])
    for _ in range(7):q=q-np.linalg.solve(jac_float(q),moments_float(q)-target)
    if not np.isfinite(q).all():raise ValueError('nonfinite proposal')
    return q

def trig_float(p,sine):
    f=math.sin(p[0]) if sine else math.cos(p[0]);df=math.cos(p[0]) if sine else -math.sin(p[0]);out=df*p.copy();out[0]=f
    for k,(i,j) in enumerate(PAIRS):out[5+k]-=f*p[1+i]*p[1+j]*(1 if i!=j else .5)
    return out

def moments_poly_float(p):
    xx=p[::2];yy=p[1::2]
    return np.array([sum((trig_float(x,sine) for x in a),np.zeros(N)) for a in (xx,yy,yy-xx) for sine in [False,True]])
def target_poly_float(theta,rho):
    v=np.zeros((4,N));v[:,0]=theta
    for k in range(4):v[k,1+k]=rho
    a,b,c,d=v;out=[]
    for x,y in [(a,b),(c,d),(c-a,d-b)]:
        for sine in [False,True]:
            z=-trig_float(x,sine)-trig_float(y,sine)
            if not sine:z[0]-=1
            out.append(z)
    return np.array(out)

def trig_interval(p,sine):
    f=iv.sin(p[0]) if sine else iv.cos(p[0]);df=iv.cos(p[0]) if sine else -iv.sin(p[0]);out=[df*x for x in p];out[0]=f
    for k,(i,j) in enumerate(PAIRS):out[5+k]-=f*p[1+i]*p[1+j]*(V(1) if i!=j else V(1)/2)
    L=sum(mag(x) for x in p[1:5]);Q=sum(mag(x) for x in p[5:]);D=L+Q
    rem=(D**3/6+L*Q+Q**2/2).b
    return out,rem

def addpoly(polys):
    return [sum(p[0][k] for p in polys) for k in range(N)],sum(p[1] for p in polys).b

def moments_poly_interval(p):
    xx=p[::2];yy=p[1::2];zz=[[b-a for a,b in zip(x,y)] for x,y in zip(xx,yy)]
    return [addpoly([trig_interval(x,sine) for x in group]) for group in [xx,yy,zz] for sine in [False,True]]

def target_poly_interval(theta,rho):
    v=[[V(0) for _ in range(N)] for k in range(4)]
    for k in range(4):v[k][0]=V(theta[k]);v[k][1+k]=V(rho)
    a,b,c,d=v;sub=lambda p,q:[x-y for x,y in zip(p,q)];out=[]
    for x,y in [(a,b),(c,d),(sub(c,a),sub(d,b))]:
        for sine in [False,True]:
            cp,rr=addpoly([trig_interval(x,sine),trig_interval(y,sine)]);cp=[-x for x in cp]
            if not sine:cp[0]-=1
            out.append((cp,rr))
    return out

def jac_interval(q):
    J=[[V(0) for _ in range(6)] for _ in range(6)]
    for k in range(3):
        a,b=q[2*k:2*k+2];z=b-a
        J[0][2*k]=-iv.sin(a);J[1][2*k]=iv.cos(a)
        J[2][2*k+1]=-iv.sin(b);J[3][2*k+1]=iv.cos(b)
        J[4][2*k]=iv.sin(z);J[5][2*k]=-iv.cos(z)
        J[4][2*k+1]=-iv.sin(z);J[5][2*k+1]=iv.cos(z)
    return J

def validated_side(theta,rho,sign):
    q0=proposal(theta,sign);A=np.linalg.inv(jac_float(q0));p=np.zeros((6,N));p[:,0]=q0
    tt=target_poly_float(theta,rho)
    for _ in range(6):p=p-A@(moments_poly_float(p)-tt)
    if not np.isfinite(p).all() or not np.isfinite(A).all():return dict(ok=False,reason='proposal')
    pp=[[V(x) for x in row] for row in p];AA=[[V(x) for x in row] for row in A]
    F=moments_poly_interval(pp);T=target_poly_interval(theta,rho)
    rp=[[F[i][0][k]-T[i][0][k] for k in range(N)] for i in range(6)];rr=[F[i][1]+T[i][1] for i in range(6)]
    eta=[]
    for i in range(6):
        ep=[sum(AA[i][j]*rp[j][k] for j in range(6)) for k in range(N)]
        eta.append((sum(mag(x) for x in ep)+sum(mag(AA[i][j])*rr[j] for j in range(6))).b)
    base=[sum(mag(x) for x in row[1:]).b for row in pp]
    rad=max(1e-14,2*upper_float(max(eta)))
    for _ in range(8):
        Q=[box(p[i,0],base[i]+V(rad)) for i in range(6)];J=jac_interval(Q)
        lam=[sum(mag(V(int(i==j))-sum(AA[i][k]*J[k][j] for k in range(6))) for j in range(6)).b for i in range(6)]
        if all(lam[i]<1 and eta[i]+lam[i]*V(rad)<V(rad) for i in range(6)):
            return dict(ok=True,sign=sign,coefficients=p.tolist(),inverse=A.tolist(),phase_error=rad,phase_ranges=[bounds(x) for x in Q],eta=[upper_float(x) for x in eta],lambda_rows=[upper_float(x) for x in lam])
        rad*=2
    return dict(ok=False,reason='contraction',eta=[upper_float(x) for x in eta],lambda_max=upper_float(max(lam)))

def side_intervals(chart):
    q=[hull(*b) for b in chart['phase_ranges']]
    return [[C(1) for _ in range(3)],[cis(q[2*j]) for j in range(3)],[cis(q[2*j+1]) for j in range(3)]]
def disjoint_orbits(first,second):
    A=side_intervals(first);B=side_intervals(second)
    def separate(z,w):return bool(z.real.b<w.real.a or w.real.b<z.real.a or z.imag.b<w.imag.a or w.imag.b<z.imag.a)
    return all(any(separate(A[i][j],B[i][per[j]]) for i in [1,2] for j in range(3)) for per in itertools.permutations(range(3)))
def cmatrix(a):return [[C(complex(x)) for x in row] for row in a]
def mm(a,b):return [[sum(a[i][k]*b[k][j] for k in range(len(b))) for j in range(len(b[0]))] for i in range(len(a))]
def adj(a):return [[conj(a[j][i]) for j in range(len(a))] for i in range(len(a[0]))]
def side_center(chart):
    q=np.array(chart['coefficients'])[:,0]
    return np.array([[1,1,1],np.exp(1j*q[::2]),np.exp(1j*q[1::2])])

def completion_enclosure(theta,rho,horizontal,vertical):
    a,b,c,d=[cis(box(x,rho)) for x in theta];E=[[C(1)]*3,[C(1),a,b],[C(1),c,d]]
    B=side_intervals(horizontal);Cv=side_intervals(vertical);CC=list(map(list,zip(*Cv)))
    af,bf,cf,df=np.exp(1j*np.array(theta,dtype=float));E0=np.array([[1,1,1],[1,af,bf],[1,cf,df]]);B0=side_center(horizontal);C0=side_center(vertical).T
    Y0=np.linalg.inv(C0.conjugate().T);Y=cmatrix(Y0);D0=-Y0@E0.conjugate().T@B0;DD=cmatrix(D0)
    YC=mm(Y,adj(CC));lam=max(sum(cmag(C(int(i==j))-YC[i][j]) for j in range(3)) for i in range(3)).b
    if not lam<1:return dict(ok=False,reason='completion_conditioning',lambda_bound=upper_float(lam))
    a1=mm(adj(CC),DD);a2=mm(adj(E),B);res=mm(Y,[[a1[i][j]+a2[i][j] for j in range(3)] for i in range(3)])
    er=[max(cmag(res[i][j]) for i in range(3))/(1-lam) for j in range(3)]
    return dict(ok=True,lambda_bound=upper_float(lam),inverse=[[[float(z.real),float(z.imag)] for z in row] for row in Y0],D_centers=[[[float(z.real),float(z.imag)] for z in row] for row in D0],D_column_errors=[upper_float(x) for x in er])

def predicate(theta,rho,details=True):
    check_seed_box(theta,[rho]*4)
    R=seed_R_bound(theta,[rho]*4)
    if not R.a>1:return dict(ok=False,reason='R_guard',R=bounds(R))
    charts=[]
    try:
        for orient in [False,True]:
            th=[theta[i] for i in [0,2,1,3]] if orient else theta
            pair=[validated_side(th,rho,sg) for sg in [1,-1]]
            if not all(x['ok'] for x in pair):return dict(ok=False,reason='side_contraction',orientation=orient,chart_status=pair,R=bounds(R))
            if not disjoint_orbits(*pair):return dict(ok=False,reason='orbit_separation',orientation=orient,R=bounds(R))
            charts.append(pair)
        completions=[completion_enclosure(theta,rho,h,v) for h in charts[0] for v in charts[1]]
        if not all(x['ok'] for x in completions):return dict(ok=False,reason='completion_conditioning',completions=completions,R=bounds(R))
    except (ValueError,ZeroDivisionError,np.linalg.LinAlgError,OverflowError) as ex:return dict(ok=False,reason='proposal_or_interval',error=str(ex),R=bounds(R))
    return dict(ok=True,reason='all_orbit_enclosures',R=bounds(R),charts=charts,completions=completions,
       phase_error_max=max(c['phase_error'] for pair in charts for c in pair),D_error_max=max(max(x['D_column_errors']) for x in completions))

