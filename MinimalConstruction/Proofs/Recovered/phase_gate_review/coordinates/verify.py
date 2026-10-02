"""Independent checks reconstructed from the supplied barycentric note.

No accompanying implementation or verification script was supplied or used.
The global flatness/coverage step is a proof review, not established by the
random floating-point tests below.
"""
import json
from pathlib import Path
from itertools import permutations
import sympy as sp
import numpy as np

ROOT=Path(__file__).resolve().parent
s,S,t,T,r,R,u,z=sp.symbols('s S t T r R u z')
sharp=lambda expr:sp.sympify(expr).xreplace({s:S,S:s,t:T,T:t,r:R,R:r})
delta=r*R-t*T
eta=9-s*S-t*T-r*R+s*r*T+S*R*t
P=r*s*s+R*t*t+(3-r*R)*s*t
Q=t*S*S+r*r*T+(3-t*T)*r*S
f=sharp(P)*Q
rho=P*sharp(P)+Q*sharp(Q)-delta**2*eta
quad=f*u*u-rho*u+sharp(f)
q=z**3-s*z*z+u*S*z-u
N=delta*t*z*z+(P-Q*u)*z+delta*u*r
M=delta*R*z*z+(u*sharp(P)-sharp(Q))*z+delta*u*T
assert sp.rem(sp.expand(N*M-delta**2*z*sp.diff(q,z)**2+quad*z*z),q,z)==0
assert sp.expand((P-Q*u)*(u*sharp(P)-sharp(Q))-delta**2*u*eta+quad)==0
print('Exact barycentric remainder and circle equation: PASS',flush=True)

oldA=[0,2*s*delta,-(s*S+3)*delta,2*S*delta]
oldB=[-R*R*t+R*s*t*T-3*R*s-s*s*T,
      r*R*R-r*R*s*T+R*R*S*t-R*s*S*t*T+3*R*s*S-R*t*T+s*s*S*T+s*t*T*T,
      -r*R*R*S+r*R*s*S*T+r*R*T-r*s*T*T-R*s*S*S+R*S*t*T-3*s*S*T-t*T*T,
      -r*R*S*T+r*T*T+R*S*S+3*S*T]
c6=oldA[3]*sharp(oldA[0])-oldB[3]*sharp(oldB[0])
c3=sum(a*sharp(a)-b*sharp(b) for a,b in zip(oldA,oldB))
assert sp.expand(c6-f)==0
assert sp.expand(c3+(1+s*S)*rho)==0
print('Exact product coefficients: PASS',flush=True)
X,Y,Z=s*S,t*T,r*R
J=s*r*T+S*R*t
p=X+Y+Z;W=X*Y+X*Z+Y*Z-X*Y*Z;g=27-3*p+J
L=2*p*p+W-45*p+243
Dsym=4*g*g*eta-(L+(p-15)*g)**2
assert sp.expand(4*f*sharp(f)-rho*rho-delta*delta*Dsym)==0
print('Exact symmetric discriminant: PASS',flush=True)

E=sp.Matrix([[1,1,1],[1,-1,-1],[1,-1,sp.I]])
G=6*sp.eye(3)-E*E.H
xs=[1,sp.I,-sp.I]
qq=z**3-z*z+z-1
ys=[sp.simplify((-sp.I*x*x+(-2+sp.I))/sp.diff(qq,z).subs(z,x)) for x in xs]
B=sp.Matrix([[1]*3,xs,ys]);C=B.T
D=sp.simplify(-C*E.H*G.inv()*B)
H=E.row_join(B).col_join(C.row_join(D))
Hcross=sp.Matrix([[1,1,1,1,1,1],[1,-1,1,sp.I,-1,-sp.I],
                 [1,-1,-1,-sp.I,sp.I,1],[1,sp.I,-sp.I,-1,-sp.I,sp.I],
                 [1,1,sp.I,-sp.I,-1,-1],[1,-sp.I,-1,sp.I,1,-1]])
assert H==Hcross.extract([0,1,2,4,3,5],[0,1,4,2,3,5])
assert sp.simplify(H*H.H)==6*sp.eye(6)
assert E.det()==-2-2*sp.I and G.det()==4
assert G.is_positive_definite
assert ys==[-1,-sp.I,1]
print('Exact H_cross construction and permutation: PASS',flush=True)


def scalar_data(a,b,c,d):
    s,t,r=-(1+a+b),-(1+c+d),-(1+c/a+d/b)
    delta=abs(r)**2-abs(t)**2
    eta=9-abs(s)**2-abs(t)**2-abs(r)**2+2*(s*r*t.conjugate()).real
    P=r*s*s+r.conjugate()*t*t+(3-abs(r)**2)*s*t
    Q=t*s.conjugate()**2+r*r*t.conjugate()+(3-abs(t)**2)*r*s.conjugate()
    f=P.conjugate()*Q
    rho=abs(P)**2+abs(Q)**2-delta*delta*eta
    if abs(delta)<1e-5 or abs(f)<1e-5:return None
    discr=(4*abs(f)**2-rho*rho)/(delta*delta)
    return dict(s=s,t=t,r=r,delta=delta,eta=eta,P=P,Q=Q,f=f,rho=rho,discr=discr)


def side(data,product):
    s,t,r=[data[k] for k in ('s','t','r')]
    roots=np.roots([1,-s,product*s.conjugate(),-product])
    k=(data['P']-data['Q']*product)/data['delta']
    y=(t*roots**2+k*roots+product*r)/(3*roots**2-2*s*roots+product*s.conjugate())
    return np.array([np.ones(3),roots,y])


rng=np.random.default_rng(2026092009);records=[];trials=0;worst_shared=0
while len(records)<100 and trials<30000:
    trials+=1
    a,b,c,d=np.exp(1j*rng.uniform(-np.pi,np.pi,4))
    E=np.array([[1,1,1],[1,a,b],[1,c,d]])
    G=6*np.eye(3)-E@E.conj().T
    if np.linalg.eigvalsh(G)[0]<1e-3 or abs(np.linalg.det(E))<1e-5:continue
    h=scalar_data(a,b,c,d);v=scalar_data(a,c,b,d)
    if h is None or v is None:continue
    worst_shared=max(worst_shared,abs(h['discr']-v['discr'])/(1+abs(h['discr'])))
    if h['discr']<1e-6:continue
    w=np.sqrt(h['discr']);errs=[]
    for sign in (-1,1):
        u=(h['rho']+1j*sign*h['delta']*w)/(2*h['f'])
        m=(v['rho']-1j*sign*v['delta']*w)/(2*v['f'])
        B=side(h,u);C=side(v,m).T
        D=-C@E.conj().T@np.linalg.solve(G,B)
        H=np.block([[E,B],[C,D]])
        errs.append(dict(modulus=float(np.max(abs(abs(H)-1))),
                         orthogonality=float(np.max(abs(H@H.conj().T-6*np.eye(6))))))
    records.append(dict(seed_angles=np.angle([a,b,c,d]).tolist(),errors=errs))
report=dict(scope='Independent exact identities plus floating-point samples, not a new global classification proof.',
            symbolic_barycentric_remainder=True,symbolic_circle_equation=True,
            symbolic_original_coefficients=True,symbolic_symmetric_discriminant=True,
            exact_hcross_matrix_and_equivalence=True,
            numerical_seed_count=len(records),numerical_matrix_count=2*len(records),trials=trials,
            worst_shared_discriminant_relative_error=worst_shared,
            max_modulus_error=max(e['modulus'] for r in records for e in r['errors']),
            max_orthogonality_error=max(e['orthogonality'] for r in records for e in r['errors']),records=records)
(ROOT/'AUDIT.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='records'},indent=2))
