"""Bounded exact check of a proposed universal matched fourth-moment identity.

Only a successful zero exit accompanied by the final PASS is acceptance.
A timeout, memory error, or unresolved computation is NOT a certificate.
Arithmetic is exact over Q(a,b,c,d), using FLINT multivariate polynomials.
Derived from the supplied exploratory rational-arithmetic helper, with the
residual computation replaced: no matched-flatness identity is assumed.
"""
import argparse,json,signal,time
from pathlib import Path
from flint import fmpq_mpoly_ctx
from flint.utils.flint_exceptions import DomainError

CTX=fmpq_mpoly_ctx.get(['a','b','c','d'])
ZERO=CTX.constant(0);ONE=CTX.constant(1)


class F:
    def __init__(self,n=0,d=1,reduce=True):
        if isinstance(n,F): self.n,self.d=n.n,n.d;return
        self.n=n if hasattr(n,'terms') else CTX.constant(n)
        self.d=d if hasattr(d,'terms') else CTX.constant(d)
        assert self.d
        if not self.n:self.d=ONE;return
        if reduce:
            g=self.n.gcd(self.d)
            self.n=self.n/g;self.d=self.d/g
        lead=self.d.leading_coefficient()
        self.n=self.n/lead;self.d=self.d/lead
    def __add__(a,b):
        b=F(b)
        if not a.n:return b
        if not b.n:return a
        g=a.d.gcd(b.d);ad=a.d/g;bd=b.d/g
        n=a.n*bd+b.n*ad
        h=n.gcd(g)
        return F(n/h,ad*(b.d/h),False)
    __radd__=__add__
    def __neg__(a):return F(-a.n,a.d,False)
    def __sub__(a,b):return a+-F(b)
    def __rsub__(a,b):return F(b)+-a
    def __mul__(a,b):
        b=F(b)
        if not a.n or not b.n:return F(0)
        g=a.n.gcd(b.d);h=b.n.gcd(a.d)
        return F((a.n/g)*(b.n/h),(a.d/h)*(b.d/g),False)
    __rmul__=__mul__
    def __truediv__(a,b):
        b=F(b);return a*F(b.d,b.n,False)
    def __rtruediv__(a,b):return F(b)/a
    def __pow__(a,k):
        if k<0:return F(a.d,a.n,False)**(-k)
        return F(a.n**k,a.d**k,False)
    def star(a):
        if not a.n:return a
        def reverse(p):
            deg=p.degrees()
            return CTX.from_dict({tuple(d-e for d,e in zip(deg,ex)):co for ex,co in p.terms()}),CTX.from_dict({deg:1})
        nn,nm=reverse(a.n);dd,dm=reverse(a.d)
        return F(nn*dm,dd*nm)
    def record(a):return dict(numerator=str(a.n),denominator=str(a.d),numerator_terms=len(a.n),denominator_terms=len(a.d))


def tr(M):return [list(x) for x in zip(*M)]
def adj(M):return [[x.star() for x in row] for row in tr(M)]
def mul(A,B):return [[sum(x*y for x,y in zip(row,col)) for col in tr(B)] for row in A]
def common_sum(values):
    """Clear a single common denominator before the final cancellation."""
    den=ONE
    for v in values:den=den*(v.d/den.gcd(v.d))
    num=sum((v.n*(den/v.d) for v in values),ZERO)
    return F(num,den)


def main():
    start=time.process_time()
    def mark(s):print(f'{time.process_time()-start:.2f}s {s}',flush=True)
    a,b,c,d=[F(x) for x in CTX.gens()]
    E=[[F(1)]*3,[F(1),a,b],[F(1),c,d]]
    Gh=mul(E,adj(E));Gv=mul(tr(E),adj(tr(E)))
    Gh=[[6*(i==j)-v for j,v in enumerate(row)] for i,row in enumerate(Gh)]
    Gv=[[6*(i==j)-v for j,v in enumerate(row)] for i,row in enumerate(Gv)]
    pairs=[(0,0),(0,1),(0,2),(1,1),(1,2),(2,2)]
    exps=[(0,0),(1,0),(0,1),(2,0),(1,1),(0,2)]
    def side(G):
        s,t,r=G[1][0],G[2][0],G[2][1]
        S,T,Q=s.star(),t.star(),r.star()
        X,Y,Z=s*S,t*T,r*Q;p=X+Y+Z;J=s*r*T+S*Q*t
        g=27-3*p+J;eta=9-p+J
        chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
        h=chi/g
        P0=r*s*s+Q*t*t+(3-Z)*s*t
        P1=t*S*S+r*r*T+(3-Y)*r*S
        P2=s*T*T+Q*Q*S+(3-X)*Q*T
        c0,c1,c2=9-Z,9-Y,9-X
        def ratio(ci,cj,Pi,Pj):
            den=Pj*Pi.star()
            return ((g*g+ci*cj*eta+ci*chi)/den,g*(cj-ci)/den)
        u=ratio(c0,c1,P0,P1);v=ratio(c0,c2,P0,P2)
        uv=ratio(c2,c1,P2,P1)
        pi=(c0*eta/P0.star(),g/P0.star())
        m={(0,0):(F(3),F(0)),(1,0):(s,F(0)),(0,1):(t,F(0)),(1,-1):(Q,F(0)),
           (2,0):(s*s-2*S*u[0],-2*S*u[1]),(0,2):(t*t-2*T*v[0],-2*T*v[1]),
           (1,1):(s*t-pi[0],-pi[1]),
           (2,-1):(s*Q-(chi+c1*eta)/P1,g/P1),
           (-1,2):(t*r-(chi+c2*eta)/P2,g/P2),
           (2,-2):(Q*Q-2*r*uv[0],-2*r*uv[1])}
        m.update({(-i,-j):(v0.star()+v1.star()*h,-v1.star()) for (i,j),(v0,v1) in list(m.items())})
        ans=[[[m[(p[0]-q[0],p[1]-q[1])][k] for q in exps] for p in exps] for k in (0,1)]
        return ans,(g,eta,chi)
    Th,(g,eta,chi)=side(Gh);mark('horizontal moment coefficients')
    Tv,_=side(Gv);mark('vertical moment coefficients')
    # Invert Gh by cofactors, with its already known determinant g.
    inverse=[]
    for i in range(3):
        row=[]
        for j in range(3):
            rs=[k for k in range(3) if k!=j];cs=[k for k in range(3) if k!=i]
            co=Gh[rs[0]][cs[0]]*Gh[rs[1]][cs[1]]-Gh[rs[0]][cs[1]]*Gh[rs[1]][cs[0]]
            row.append((-1)**(i+j)*co/g)
        inverse.append(row)
    K=[[-x for x in row] for row in mul(adj(E),inverse)]
    L=[[sum(K[a][c]*K[b][d] for a,b in set((rp,rp[::-1])) for c,d in set((cp,cp[::-1]))) for cp in pairs] for rp in pairs]
    mark('symmetric square completion map')
    # Verify the matched fourth-moment identity directly. No flatness theorem
    # is assumed here. Tv(bar z) = Tv[0] + (chi/g-z)*Tv[1].
    m0=mul(adj(L),mul(tr(Tv[0]),L));mark('vertical constant contraction')
    m1=mul(adj(L),mul(tr(Tv[1]),L));mark('vertical linear contraction')
    def assert_zero_sum(values,label):
        den=ONE
        for k,v in enumerate(values):
            try:
                den/v.d
            except DomainError:
                den=den*(v.d/den.gcd(v.d))
            if k%12==0:
                mark(f'{label} denominator {k}: {len(den)} terms')
        num=ZERO
        for k,v in enumerate(values):
            num+=v.n*(den/v.d)
            if k%12==0:
                mark(f'{label} numerator {k}: {len(num)} terms')
        mark(f'{label} raw residual: {len(num)} terms')
        assert not num, label+' is nonzero'
    # Combining the zero identity before rational cancellation avoids an
    # expensive GCD of two large individually nonzero contractions.
    linear_terms=[m0[i][j]*Th[1][j][i] for i in range(6) for j in range(6)]
    linear_terms.extend(-m1[i][j]*Th[0][j][i] for i in range(6) for j in range(6))
    assert_zero_sum(linear_terms,'linear')
    h=chi/g
    constant_terms=[m0[i][j]*Th[0][j][i] for i in range(6) for j in range(6)]
    constant_terms.extend(h*m1[i][j]*Th[0][j][i] for i in range(6) for j in range(6))
    constant_terms.extend(eta*m1[i][j]*Th[1][j][i] for i in range(6) for j in range(6))
    constant_terms.append(F(-9))
    assert_zero_sum(constant_terms,'constant')
    print('PASS UNIVERSAL MATCHED FOURTH-MOMENT IDENTITY',flush=True)


if __name__=='__main__':
    parser=argparse.ArgumentParser()
    args=parser.parse_args()
    import resource
    resource.setrlimit(resource.RLIMIT_AS,(3*1024**3,3*1024**3))
    signal.alarm(240)
    main()
