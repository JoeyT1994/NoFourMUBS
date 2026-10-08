"""Small sparse-rational-polynomial checker, including physical controls.
No symbolic-algebra package or floating point is used.
"""
from fractions import Fraction as F
from itertools import permutations, combinations
from collections import Counter

class Poly:
    def __init__(self,n,terms=None):
        self.n=n; self.d={e:F(v) for e,v in (terms or {}).items() if v}
    def lift(self,x):return x if isinstance(x,Poly) else Poly(self.n,{(0,)*self.n:F(x)})
    def __add__(a,b):
        b=a.lift(b);assert a.n==b.n
        d=dict(a.d)
        for e,v in b.d.items():d[e]=d.get(e,0)+v
        return Poly(a.n,d)
    __radd__=__add__
    def __neg__(a):return Poly(a.n,{e:-v for e,v in a.d.items()})
    def __sub__(a,b):return a+-a.lift(b)
    def __rsub__(a,b):return a.lift(b)+-a
    def __mul__(a,b):
        b=a.lift(b);assert a.n==b.n;d={}
        for e,v in a.d.items():
            for f,w in b.d.items():
                g=tuple(x+y for x,y in zip(e,f));d[g]=d.get(g,0)+v*w
        return Poly(a.n,d)
    __rmul__=__mul__
    def __truediv__(a,b):return a*F(1,b)
    def __pow__(a,k):
        if k<0:
            if len(a.d)!=1:raise ValueError('negative power needs monomial')
            e,v=next(iter(a.d.items()));return Poly(a.n,{tuple(k*x for x in e):v**k})
        z=a.lift(1)
        while k:
            if k%2:z=z*a
            a=a*a;k//=2
        return z
    def star(a):return Poly(a.n,{tuple(-x for x in e):v for e,v in a.d.items()})
    def __eq__(a,b):return a.d==a.lift(b).d

def variables(n):return [Poly(n,{tuple(int(i==j) for j in range(n)):1}) for i in range(n)]

def radical_identity():
    t,R,b0,b1,b2,eps=variables(6)
    e=t*t-R;cap=1-R
    minor=-(b0+eps)*(1-t)**2-2*(b1+eps)*t*(1-t)-(b2+eps)*t*t
    lhs=-(1+t)**2*minor-eps
    positive=b0*cap**2+2*b1*t*(1+t)*cap+b2*t*t*(1+t)**2+eps*t*(2+t)
    ideal=e*(b0*(e-2*cap)-2*b1*t*(1+t))
    assert lhs==positive+ideal,'master polynomial identity'
    assert lhs!=positive,'dropping radical equation was not detected'
    assert lhs!=positive-ideal,'wrong radical multiplier sign was not detected'
    return {'master_identity':True,'drop_ideal_rejected':True,'wrong_ideal_sign_rejected':True}

def corner_algebra():
    a,b,c,d=variables(4)
    s,t,r=-1-a-b,-1-c-d,-1-c*a**-1-d*b**-1
    X,Y,Z=s*s.star(),t*t.star(),r*r.star();p=X+Y+Z
    J=s*r*t.star()+s.star()*r.star()*t;W=X*Y+X*Z+Y*Z-X*Y*Z
    def R(sign):
        g=27-3*p+sign*J;eta=9-p+sign*J
        chi=W-(p-9)*(p-18)+(p-15)*sign*J
        return 4*g*g*eta-chi*chi
    cols=[]
    for x,y in [(a.lift(1),a.lift(1)),(a,c),(b,d)]:
        z=y*x**-1
        cols.extend([[x,-x**-1,0,0,-z,z**-1],[0,0,y,-y**-1,z,-z**-1]])
    D=a.lift(0)
    for perm in permutations(range(6)):
        term=a.lift((-1)**sum(perm[i]>perm[j] for i in range(6) for j in range(i+1,6)))
        for i,j in enumerate(perm):term=term*cols[j][i]
        D+=term
    assert len(D.d)==48 and D.star()==-D and R(-1)==-D*D
    cs=[-(a-c)**2*(a+c)*a**-2*c**-2,
        (a-c)*(a+c)*(a*c-1)*a**-2*c**-1,
        (c-1)**2*(c+1)*a**-1*c**-1,
        -(a*a-c)*(c-1)*(c+1)*a**-1*c**-2,
        (a-1)**2*(a+1)*a**-1*c**-1,
        (a-1)*(a+1)*(a-c*c)*a**-2*c**-1]
    DD=a.lift(0)
    for co,(p0,q0) in zip(cs,[(1,1),(1,-1),(2,-1),(0,1),(-1,2),(1,0)]):
        v=co*b**p0*d**q0;DD+=v-v.star()
    assert DD==D,'six determinant coefficient functions'
    # Strict denominator norm identities are polynomial, not sampling tests.
    g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
    Ps=[r*s*s+r.star()*t*t+(3-Z)*s*t,
        t*s.star()**2+r*r*t.star()+(3-Y)*r*s.star(),
        s*t.star()**2+r.star()**2*s.star()+(3-X)*r.star()*t.star()]
    for P,k in zip(Ps,[9-Z,9-Y,9-X]):
        assert P*P.star()==g*g+k*chi+k*k*eta
    RR=R(1)
    assert RR==Poly(4,{(e[0],e[2],e[1],e[3]):v for e,v in RR.d.items()}), "R transpose invariance"
    return D,RR

def moment_algebra():
    x=variables(6);xs=x[:3];ys=x[3:]
    def actual(p,q):return sum((a**p*b**q for a,b in zip(xs,ys)),xs[0].lift(0))
    s,t,r=actual(1,0),actual(0,1),actual(-1,1)
    u=xs[0]*xs[1]*xs[2];v=ys[0]*ys[1]*ys[2];w=u*v.star()
    pi=s*t-actual(1,1);c1=u*pi.star();c2=v*pi.star()
    M={}
    def put(p,q,z):
        z=xs[0].lift(z);M[p,q]=z;M[-p,-q]=z.star()
    put(0,0,3);put(1,0,s);put(0,1,t);put(1,-1,r.star())
    put(2,0,s*s-2*u*s.star());put(0,2,t*t-2*v*t.star())
    put(1,1,s*t-pi);put(2,-1,s*r.star()-c1);put(-1,2,t*r-c2)
    put(2,1,s*M[1,1]-u*(s.star()*t-r))
    put(1,2,t*M[1,1]-v*(t.star()*s-r.star()))
    put(2,-2,r.star()**2-2*w*r)
    put(3,-1,s*M[2,-1]+u*(t.star()-s.star()*r.star()))
    put(-1,3,t*M[-1,2]+v*(s.star()-t.star()*r))
    put(3,-2,r.star()*M[2,-1]+w*(t-r*s))
    put(-2,3,r*M[-1,2]+w.star()*(s-r.star()*t))
    assert len(M)==31
    for (p,q),z in M.items():assert z==actual(p,q),(p,q)
    return len(M)

def physical_controls(D,R):
    # Coefficients A+B*zeta_6, zeta_6^2=zeta_6-1.
    roots=((1,0),(0,1),(-1,1),(-1,0),(0,-1),(1,-1))
    entries=tuple(tuple((int(i>=3 and j%3==1),(2*(i%3)*(j%3)+3*int(i>=3 and j>=3))%6)
                        for j in range(6)) for i in range(6))
    def collect(terms):
        out={}
        for power,root,coef in terms:
            a,b=out.get(power,(0,0));c,d=roots[root%6]
            out[power]=(a+coef*c,b+coef*d)
        return tuple(sorted((p,ab) for p,ab in out.items() if ab!=(0,0)))
    # Exact HH*=6I over the Laurent cyclotomic ring.
    for i in range(6):
        for j in range(6):
            row=collect((entries[i][k][0]-entries[j][k][0],entries[i][k][1]-entries[j][k][1],1) for k in range(6))
            assert row==(((0,(6,0)),) if i==j else ())
    def seed(rows,cols):
        first=entries[rows[0]][cols[0]]
        return tuple((entries[i][j][0]+first[0]-entries[i][cols[0]][0]-entries[rows[0]][j][0],
                      entries[i][j][1]+first[1]-entries[i][cols[0]][1]-entries[rows[0]][j][1])
                     for i in rows[1:] for j in cols[1:])
    def evaluate(poly,coords):
        return collect((sum(e*x[0] for e,x in zip(ex,coords)),sum(e*x[1] for e,x in zip(ex,coords)),co)
                       for ex,co in poly.d.items())
    def negsq(poly):
        out={}
        for p,(a,b) in poly:
            for q,(c,d) in poly:
                x,y=out.get(p+q,(0,0));out[p+q]=(x-a*c+b*d,y-a*d-b*c-b*d)
        return tuple(sorted((p,ab) for p,ab in out.items() if ab!=(0,0)))
    z,=variables(1)
    forms=[z.lift(0),3*(z-1)**3*(z+1)*z**-2,-3*(z-1)*(z+1)*(z*z+1)*z**-2,3*(z-1)*(z+1)**3*z**-2]
    def key(p):return tuple(sorted((e[0],(v,F(0))) for e,v in p.d.items()))
    expected=Counter({key(-forms[1]**2):36,key(-forms[2]**2):72,key(-forms[3]**2):36,():256})
    seen=Counter()
    for rows in combinations(range(6),3):
        for cols in combinations(range(6),3):
            comp=tuple(j for j in range(6) if j not in cols)
            val=evaluate(R,seed(rows,cols))
            assert val==negsq(evaluate(D,seed(rows,comp)))
            seen[val]+=1
    assert seen==expected
    # In this row ordering the leading maximal seed is omega^2,-omega/z,1,-1/z.
    coords=seed((3,1,0),(0,2,4))
    assert tuple((p,r%6) for p,r in coords)==((0,4),(-1,5),(0,0),(-1,3))
    assert evaluate(R,coords)==key(-forms[3]**2)
    # Substitute z=(1-iv)/(1+iv): numerator identities in Q(i)[v].
    # The explicit ratios 0,v^4,(1-v^2)^2/4,1 are checked below using pairs.
    def cm(a,b):return (a[0]*b[0]-a[1]*b[1],a[0]*b[1]+a[1]*b[0])
    def cp(a,n):
        out=(a[0].lift(1),a[0].lift(0))
        for _ in range(n):out=cm(out,a)
        return out
    v,=variables(1);one=v.lift(1);zero=v.lift(0)
    zn=(one,-v);zd=(one,v)
    rs=[zero,v**4,(1-v*v)**2/4,one]
    for form,ratio in zip(forms,rs):
        pol=-form*form;num=(zero,zero)
        for (power,),coef in pol.d.items():
            term=cm(cp(zn,power+4),cp(zd,4-power))
            num=(num[0]+coef*term[0],num[1]+coef*term[1])
        assert num==(2304*v*v*ratio,zero)
    return {'Hadamard_Laurent_Gram':True,'corners':400,'multiplicities':[256,36,72,36],
            'strict_maximal_Fourier_curve':True}

def run():
    out=radical_identity();D,R=corner_algebra();out['Laurent_determinant_terms']=len(D.d)
    out['moments']=moment_algebra();out['physical_control']=physical_controls(D,R)
    return out

if __name__=='__main__':
    import json,time
    t=__import__('time').perf_counter();print(json.dumps(run(),indent=2));print('seconds',time.perf_counter()-t)
