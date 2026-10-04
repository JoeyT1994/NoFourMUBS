"""Exact Q(sqrt(3),i) power series and the archive's polynomial circuit."""
from fractions import Fraction as Q
from math import factorial
class K:
    __slots__=('v',)
    def __init__(self,*v):
        if len(v)==1 and isinstance(v[0],K): self.v=v[0].v
        else: self.v=tuple(Q(x) for x in v)+(Q(0),)*(4-len(v))
    def __bool__(self):return any(self.v)
    def __add__(a,b):
        if not isinstance(b,(int,Q,K)):return NotImplemented
        b=K(b);return K(*(x+y for x,y in zip(a.v,b.v)))
    __radd__=__add__
    def __neg__(a):return K(*(-x for x in a.v))
    def __sub__(a,b):return a+-K(b)
    def __rsub__(a,b):return K(b)+-a
    def __mul__(a,b):
        if not isinstance(b,(int,Q,K)):return NotImplemented
        b=K(b);x=a.v;y=b.v;z=[Q(0)]*4
        for j in range(4):
            if not x[j]:continue
            for k in range(4):
                if not y[k]:continue
                n=j^k;co=(3 if j&k&1 else 1)*(-1 if j&k&2 else 1)
                z[n]+=co*x[j]*y[k]
        return K(*z)
    __rmul__=__mul__
    def __truediv__(a,b):return K(*(v/Q(b) for v in a.v))
    def __pow__(a,k):
        if k<0:raise ValueError('negative field power')
        r=K(1)
        while k:
            if k&1:r=r*a
            a=a*a;k//=2
        return r
    def star(a):return K(a.v[0],a.v[1],-a.v[2],-a.v[3])
    def real(a):return K(a.v[0],a.v[1])
    def __eq__(a,b):return isinstance(b,(int,Q,K)) and a.v==K(b).v
    def __repr__(a):return '['+','.join(map(str,a.v))+']'
    def record(a):return list(map(str,a.v))
I=K(0,0,1);SQ3=K(0,1);OM=K(Q(-1,2),0,0,Q(1,2))
class Jet:
    __slots__=('v','n')
    def __init__(self,v,n):
        self.n=n
        if isinstance(v,(int,Q,K)):v=[K(v)]
        self.v=list(v[:n+1])+[K(0)]*max(0,n+1-len(v))
    def lift(a,b):return b if isinstance(b,Jet) else Jet(b,a.n)
    def __add__(a,b):
        b=a.lift(b);assert a.n==b.n
        return Jet([x+y for x,y in zip(a.v,b.v)],a.n)
    __radd__=__add__
    def __neg__(a):return Jet([-x for x in a.v],a.n)
    def __sub__(a,b):return a+-a.lift(b)
    def __rsub__(a,b):return a.lift(b)+-a
    def __mul__(a,b):
        b=a.lift(b);assert a.n==b.n;v=[K(0)]*(a.n+1)
        for j,x in enumerate(a.v):
            if not x:continue
            for k,y in enumerate(b.v[:a.n-j+1]):
                if y:v[j+k]=v[j+k]+x*y
        return Jet(v,a.n)
    __rmul__=__mul__
    def __truediv__(a,b):return Jet([x/b for x in a.v],a.n)
    def __pow__(a,k):
        if k<0:return a.star()**(-k) # used only for exact unit-phase jets
        r=a.lift(1)
        while k:
            if k&1:r=r*a
            a=a*a;k//=2
        return r
    def star(a):return Jet([x.star() for x in a.v],a.n)
    def real(a):return Jet([x.real() for x in a.v],a.n)
    def valuation(a):return next((k for k,x in enumerate(a.v) if x),None)
    def record(a):return {str(k):x.record() for k,x in enumerate(a.v) if x}
def coefficients(a,c):
    ai=a.star();ci=c.star()
    return [-(a-c)**2*(a+c)*ai**2*ci**2,
            (a-c)*(a+c)*(a*c-1)*ai**2*ci,
            (c-1)**2*(c+1)*ai*ci,
            -(a*a-c)*(c-1)*(c+1)*ai*ci**2,
            (a-1)**2*(a+1)*ai*ci,
            (a-1)*(a+1)*(a-c*c)*ai**2*ci]
def circuit(phases):
    a,b,c,d=phases;s=-1-a-b;t=-1-c-d;r=-1-c*a.star()-d*b.star()
    X=s*s.star();Y=t*t.star();Z=r*r.star();p=X+Y+Z
    J=s*r*t.star()+s.star()*r.star()*t;W=X*Y+X*Z+Y*Z-X*Y*Z
    R=4*J**3+J**2*(-p*p+2*p+27)+J*(2*p**3-24*p*p-2*p*W+54*p+30*W)-p**4+18*p**3+2*p*p*W-81*p*p-54*p*W-W*W+324*W
    Ps=[r*s*s+r.star()*t*t+(3-Z)*s*t,
        t*s.star()**2+r*r*t.star()+(3-Y)*r*s.star(),
        s*t.star()**2+r.star()**2*s.star()+(3-X)*r.star()*t.star()]
    ns=[P*P.star() for P in Ps];delta=ns[0]*ns[1]*ns[2]
    U=[Ps[0]*ns[1]*ns[2]/2,Ps[1].star()*ns[0]*ns[2]/2,Ps[2].star()*ns[0]*ns[1]/2]
    Aj=[W-p*p+9*p-18*z+2*z*p+(p+3-2*z)*J for z in [Z,Y,X]]
    M=[delta*s*t-Aj[0]*U[0],delta*r.star(),delta*s*r.star()-Aj[1]*U[1],delta*t,delta*t*r-Aj[2]*U[2],delta*s]
    Bm=[-I*U[0],a.lift(0),I*U[1],a.lift(0),I*U[2],a.lift(0)]
    xx=[a.lift(1),a,b];yy=[a.lift(1),c,d];pq=[(1,1),(1,-1),(2,-1),(0,1),(-1,2),(1,0)];AB=[]
    for j,k in [(0,1),(0,2),(1,2)]:
        cs=coefficients(xx[k]*xx[j].star(),yy[k]*yy[j].star())
        co=[x*(xx[j]**(-e))*(yy[j]**(-f)) for x,(e,f) in zip(cs,pq)]
        sa=sum((x*y for x,y in zip(co,M)),a.lift(0));sb=sum((x*y for x,y in zip(co,Bm)),a.lift(0))
        AB.append((I*(sa-sa.star()),I*(sb-sb.star())))
    return R,delta,AB

def direction(v,n=18):
    phases=[Jet([w*(I*x)**j/factorial(j) for j in range(n+1)],n) for w,x in zip([OM,OM.star(),OM.star(),OM],v)]
    return circuit(phases)
if __name__=='__main__':
    import sys,time,json
    v=list(map(Q,sys.argv[1:5])) if len(sys.argv)>=5 else [Q(1),Q(2),Q(2),Q(4)]
    st=time.process_time();R,d,AB=direction(v)
    print('direction',v,'R',R.record(),'delta val',d.valuation(),flush=True)
    for A,B in AB:
        aa=Jet(A.v,56);bb=Jet(B.v,56);dd=Jet(d.v,56);rr=Jet(R.v,56)
        C=aa*aa+(bb*bb-9*dd*dd)*rr;T=2*aa*bb;F=C*C-T*T*rr
        print('A',A.valuation(),A.v[A.valuation()] if A.valuation()!=None else None,'B',B.valuation(),B.v[B.valuation()] if B.valuation()!=None else None,'C',C.valuation(),'F',F.valuation(),F.v[F.valuation()] if F.valuation()!=None else None,flush=True)
    print('CPU',time.process_time()-st)
