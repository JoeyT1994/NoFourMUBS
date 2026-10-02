"""Exploratory exact elimination; not a proof verifier or acceptance test.

Compute the two rational coefficients of the nonmatched flatness residual.
Arithmetic is exact over Q(a,b,c,d), using FLINT multivariate polynomials.
"""
import argparse,json,signal,time
from pathlib import Path
from flint import fmpq_mpoly_ctx

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


def main(family='general'):
    start=time.process_time()
    def mark(s):print(f'{time.process_time()-start:.2f}s {s}',flush=True)
    a,b,c,d=[F(x) for x in CTX.gens()]
    if family=='X1':a,b,c,d=F(1),a,a,F(1)
    elif family=='X0':a,b,c,d=F(1),a,1/a,F(1)
    elif family=='EM':a,b,c,d=a,b,b,b/a
    elif family=='X2':a,b,c,d=F(1),-a*(a+2)/(2*a+1),-a*(2*a+1)/(a+2),a
    elif family!='general':raise ValueError(family)
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
    # Contract vertical coefficient first. F_matched=0 is already proved.
    middle=mul(adj(L),mul(tr(Tv[1]),L));mark('vertical contraction')
    coeff=[]
    for k in (0,1):
        terms=[]
        for i in range(6):
            terms.extend(middle[i][j]*Th[k][j][i] for j in range(6))
            mark(f'coefficient {k}, row {i} terms formed')
        val=common_sum(terms)
        coeff.append(val);mark(f'coefficient {k}: {len(val.n)} / {len(val.d)} terms')
    C0,C1=coeff;h=chi/g
    constant=-h*C0-2*eta*C1;linear=2*C0+h*C1
    # F(z)=constant+linear*z, z²=h*z-eta.
    norm=constant*constant+h*constant*linear+eta*linear*linear
    mark(f'nonmatched norm: {len(norm.n)} / {len(norm.d)} terms')
    out=Path(__file__).with_name('Research');out.mkdir(exist_ok=True)
    (out/f'nonmatched_{family}_coefficients.json').write_text(json.dumps(dict(
        status='EXPLORATORY_EXACT_EXPRESSION',constant=constant.record(),linear=linear.record(),norm=norm.record()),indent=2)+'\n')
    print('norm numerator factorization:',norm.n.factor(),flush=True)
    print('norm denominator factorization:',norm.d.factor(),flush=True)


if __name__=='__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('--family',choices=['general','X1','X0','EM','X2'],default='general')
    args=parser.parse_args()
    signal.alarm(240)
    main(args.family)
