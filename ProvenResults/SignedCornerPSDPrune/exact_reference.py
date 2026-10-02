"""Independent exact-rational evaluation of the coefficient identities.

This is a verifier only. It never accepts a seed box. Coefficients are computed
without jets using rational complex arithmetic and the formulas in PROOF.md.
"""
from fractions import Fraction as F

class Q:
    __slots__=('re','im')
    def __init__(self,re=0,im=0):
        if isinstance(re,Q): self.re,self.im=re.re,re.im
        else:self.re,self.im=F(re),F(im)
    def __add__(self,b):
        b=Q(b);return Q(self.re+b.re,self.im+b.im)
    __radd__=__add__
    def __neg__(self):return Q(-self.re,-self.im)
    def __sub__(self,b):return self+-Q(b)
    def __rsub__(self,b):return Q(b)+-self
    def __mul__(self,b):
        if isinstance(b,L):return b*self
        b=Q(b);return Q(self.re*b.re-self.im*b.im,self.re*b.im+self.im*b.re)
    __rmul__=__mul__
    def conj(self):return Q(self.re,-self.im)
    def __truediv__(self,b):
        b=Q(b);n=b.re*b.re+b.im*b.im
        return self*Q(b.re/n,-b.im/n)
    def __rtruediv__(self,b):return Q(b)/self
    def __pow__(self,n):
        if n<0:return (1/self)**(-n)
        out=Q(1)
        for _ in range(n):out=out*self
        return out
    def __repr__(self):return f'Q({self.re!r},{self.im!r})'

class L:
    __slots__=('a','b')
    def __init__(self,a=0,b=0):
        if isinstance(a,L):self.a,self.b=a.a,a.b
        else:self.a,self.b=Q(a),Q(b)
    def __add__(self,c):
        c=L(c);return L(self.a+c.a,self.b+c.b)
    __radd__=__add__
    def __neg__(self):return L(-self.a,-self.b)
    def __sub__(self,c):return self+-L(c)
    def __rsub__(self,c):return L(c)+-self
    def __mul__(self,c):return L(self.a*Q(c),self.b*Q(c))
    __rmul__=__mul__
    def conj(self):return L(self.a.conj(),self.b.conj())
    def product(self,c,R):
        return L(self.a*c.a+self.b*c.b*R,self.a*c.b+self.b*c.a)
    def real(self):return L(self.a.re,self.b.re)

I=Q(0,1)

def reference(phase,terms,cleared=False,paired=False):
    a,b,c,d=phase
    s,t,r=-1-a-b,-1-c-d,-1-c/a-d/b
    norm=lambda z:z.re*z.re+z.im*z.im
    X,Y,Z=map(norm,(s,t,r));p=X+Y+Z
    J=2*(s*r*t.conj()).re;W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
    R=4*g*g*eta-chi*chi
    P=[r*s*s+r.conj()*t*t+(3-Z)*s*t,
       t*s.conj()**2+r*r*t.conj()+(3-Y)*r*s.conj(),
       s*t.conj()**2+r.conj()**2*s.conj()+(3-X)*r.conj()*t.conj()]
    k=[9-Z,9-Y,9-X]
    def product_formula(i,j):
        return L(2*g*g+2*k[i]*k[j]*eta+(k[i]+k[j])*chi,I*(k[j]-k[i]))*(1/(2*P[i].conj()*P[j]))
    u,v,w=product_formula(0,1),product_formula(0,2),product_formula(2,1)
    Pi=L(chi+2*k[0]*eta,I)*(1/(2*P[0].conj()))
    C1=L(chi+2*k[1]*eta,-I)*(1/(2*P[1]))
    C2=L(chi+2*k[2]*eta,-I)*(1/(2*P[2]))
    M={}
    def put(p,q,z):
        z=L(z);M[p,q]=z;M[-p,-q]=z.conj()
    put(0,0,3);put(1,0,s);put(0,1,t);put(1,-1,r.conj())
    put(2,0,L(s*s)-u*(2*s.conj()));put(0,2,L(t*t)-v*(2*t.conj()))
    put(1,1,L(s*t)-Pi);put(2,-1,L(s*r.conj())-C1);put(-1,2,L(t*r)-C2)
    put(2,1,M[1,1]*s-u*(s.conj()*t-r));put(1,2,M[1,1]*t-v*(t.conj()*s-r.conj()))
    put(2,-2,L(r.conj()**2)-w*(2*r))
    put(3,-1,M[2,-1]*s+u*(t.conj()-s.conj()*r.conj()))
    put(-1,3,M[-1,2]*t+v*(s.conj()-t.conj()*r))
    put(3,-2,M[2,-1]*r.conj()+w*(t-r*s))
    put(-2,3,M[-1,2]*r+w.conj()*(s-r.conj()*t))
    assert len(M)==31
    xx,yy=[Q(1),a,b],[Q(1),c,d]
    weights=[(0,0),(1,0),(0,1),(-1,1)]
    exponents=[(1,1),(1,-1),(2,-1),(0,1),(-1,2),(1,0)]
    nf=[]
    if not paired:
        for j,k2 in [(0,1),(0,2),(1,2)]:
            A,C=xx[k2]/xx[j],yy[k2]/yy[j]
            cs=[-(A-C)**2*(A+C)/(A*A*C*C),
                (A-C)*(A+C)*(A*C-1)/(A*A*C),
                (C-1)**2*(C+1)/(A*C),
                -(A*A-C)*(C-1)*(C+1)/(A*C*C),
                (A-1)**2*(A+1)/(A*C),
                (A-1)*(A+1)*(A-C*C)/(A*A*C)]
            ds=[co*xx[j]**(-p)*yy[j]**(-q) for co,(p,q) in zip(cs,exponents)]
            row=[]
            for m,n in weights:
                total=L()
                for co,(p,q) in zip(ds,exponents):
                    total+=M[p+m,q+n]*co-M[-p+m,-q+n]*co.conj()
                total=total*I
                row.append(total.real() if (m,n)==(0,0) else total)
            nf.append(row)
    else:
        for j in range(3):
            S=L();incidence=[L(),L(),L()]
            for coeff,(p,q,r0,s0) in terms:
                co=coeff*xx[j]**(-p-q)*yy[j]**(-r0-s0)
                S+=M[p,r0].product(M[q,s0],R)*co
                for k2,(m,n) in enumerate(weights[1:]):
                    incidence[k2]+=M[p+m,r0+n].product(M[q,s0],R)*co
            S=S*(I/2)
            nf.append([S.real()]+[S*raw-z*I for raw,z in zip([s,t,r],incidence)])
    Delta=norm(P[0])*norm(P[1])*norm(P[2])
    scale=Delta**(2 if paired else 1) if cleared else F(1)
    out=[F(R),F(scale)]
    def append(z):out.extend([z.re,z.im])
    for z in [s,t,r]:append(z*scale)
    for row in nf:
        for z in row:append(z.a*scale);append(z.b*scale)
    assert len(out)==56
    return out
