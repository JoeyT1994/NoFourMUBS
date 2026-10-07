"""Exact general strip sum in Gram invariants X,Y,Z,J.

Exploratory: quadratic extensions r, h_plus, h_minus are reduced at every
operation. h_plus**2=-R_plus, h_minus**2=-R_minus. No R=0 substitution.
"""
from pathlib import Path
import sys,time,json
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE.parents[1]/'MinimalConstruction/Proofs'))
from exact_rational import F,CTX,common_sum
from critical_moment_core import newton_moments,squared_corner_moment_coefficients

X,Y,Z,J=[F(v) for v in CTX.gens()]
p=X+Y+Z;W=X*Y+X*Z+Y*Z-X*Y*Z
def invariants(sign):
    g=27-3*p+sign*J;eta=9-p+sign*J
    chi=W-(p-9)*(p-18)+(p-15)*sign*J
    return g,eta,chi,4*g*g*eta-chi*chi
GP,EP,CP,RP=invariants(1);GM,EM,CM,RM=invariants(-1)
REDUCE={1:[(0,-X*Z/Y),(1,J/Y)],2:[(0,-RP)],4:[(0,-RM)]}

class A:
    def __init__(self,v=0,terms=None):
        if isinstance(v,A):self.d=v.d;return
        self.d={k:F(c) for k,c in (terms if terms is not None else {0:v}).items() if F(c).n}
    def __add__(self,b):
        b=A(b);out=self.d.copy()
        for k,c in b.d.items():out[k]=out.get(k,F(0))+c
        return A(terms=out)
    __radd__=__add__
    def __neg__(self):return A(terms={k:-v for k,v in self.d.items()})
    def __sub__(self,b):return self+-A(b)
    def __rsub__(self,b):return A(b)+-self
    def __mul__(self,b):
        b=A(b);out={}
        for k,c in self.d.items():
            for l,d in b.d.items():
                terms=[(k^l,c*d)]
                for bit in [1,2,4]:
                    if k&l&bit:terms=[(m|n,x*y) for m,x in terms for n,y in REDUCE[bit]]
                for m,x in terms:out[m]=out.get(m,F(0))+x
        return A(terms=out)
    __rmul__=__mul__
    def __pow__(self,n):
        assert n>=0;out=A(1)
        for _ in range(n):out=out*self
        return out
    def __truediv__(self,b):
        b=A(b);assert set(b.d)<={0,1}
        aa=b.d.get(0,F(0));bb=b.d.get(1,F(0))
        # The conjugate of r is J/Y-r for its scalar minimal polynomial.
        norm=aa*aa+aa*bb*J/Y+bb*bb*X*Z/Y
        inverse=A(terms={0:(aa+bb*J/Y)/norm,1:-bb/norm})
        return self*inverse

def side(sign):
    s,S,t,T,r,Q=[A(v) for v in [1,X,1,Y,0,0]]
    r=A(terms={1:1});Q=(A(J)-r*Y)/X
    s,S,t,T,r,Q=[sign*v for v in [s,S,t,T,r,Q]]
    g,eta,chi,R=invariants(sign);h=A(terms={2 if sign==1 else 4:1})
    P=[r*s*s+Q*t*t+s*t*(3-Z),
       t*S*S+r*r*T+r*S*(3-Y),
       s*T*T+Q*Q*S+Q*T*(3-X)]
    PB=[Q*S*S+r*T*T+S*T*(3-Z),
        T*s*s+Q*Q*t+Q*s*(3-Y),
        S*t*t+r*r*s+r*t*(3-X)]
    k=[9-Z,9-Y,9-X]
    def num(i,j,sg):return A(2*g*g+2*k[i]*k[j]*eta+(k[i]+k[j])*chi)+h*(sg*(k[j]-k[i]))
    u=num(0,1,1)/(2*PB[0]*P[1]);U=num(0,1,-1)/(2*P[0]*PB[1])
    v=num(0,2,1)/(2*PB[0]*P[2]);V=num(0,2,-1)/(2*P[0]*PB[2])
    w=num(2,1,1)/(2*PB[2]*P[1]);wb=num(2,1,-1)/(2*P[2]*PB[1])
    pi=(A(chi+2*k[0]*eta)+h)/(2*PB[0]);PI=(A(chi+2*k[0]*eta)-h)/(2*P[0])
    up=(A(chi+2*k[1]*eta)-h)/(2*P[1]);UP=(A(chi+2*k[1]*eta)+h)/(2*PB[1])
    vp=(A(chi+2*k[2]*eta)-h)/(2*P[2]);VP=(A(chi+2*k[2]*eta)+h)/(2*PB[2])
    return newton_moments(s,S,t,T,r,Q,u,v,w,U,V,wb,pi,PI,up,vp,UP,VP)

def run():
    started=time.monotonic();plus=side(1);print('plus ready',time.monotonic()-started,flush=True)
    minus=side(-1);print('minus ready',time.monotonic()-started,flush=True)
    moments={k:A(plus[k])+minus[k] for k in plus};terms=[]
    for n,(key,c) in enumerate(squared_corner_moment_coefficients().items()):
        term=A(int(c.p))/int(c.q)
        for power in key:term*=moments[power]
        terms.append(term)
        if n%10==0:print('terms',n,time.monotonic()-started,flush=True)
    out={}
    for k in range(8):
        value=common_sum([t.d.get(k,F(0)) for t in terms])
        out[str(k)]=value.record()
        print('coefficient',k,len(value.n),len(value.d),time.monotonic()-started,flush=True)
        (HERE/'strip_scalar_exact.json').write_text(json.dumps(dict(variable_order=['X','Y','Z','J'],coefficients=out,complete=k==7,seconds=time.monotonic()-started),indent=2)+'\n')

if __name__=='__main__':run()
