"""Exact regeneration of critical-strip moment identities and scalar factors."""
import json,time
from pathlib import Path
import sympy as sp
from flint import fmpq,fmpq_mpoly,fmpq_mpoly_ctx
import critical_moment_core as core
from exact_rational import F,CTX,common_sum

HERE=Path(__file__).resolve().parent


def universal_moments():
    x=sp.symbols('x0:3',nonzero=True);y=sp.symbols('y0:3',nonzero=True)
    star=lambda v:sp.sympify(v).xreplace({t:1/t for t in x+y})
    s,t,r=sum(x),sum(y),sum(b/a for a,b in zip(x,y))
    u,v=sp.prod(x),sp.prod(y);pi=s*t-sum(a*b for a,b in zip(x,y));PI=star(pi)
    m=core.newton_moments(s,star(s),t,star(t),r,star(r),
        u,v,u/v,1/u,1/v,v/u,pi,PI,u*PI,v*PI,pi/u,pi/v)
    for (a,b),value in m.items():
        assert sp.cancel(value-sum(xx**a*yy**b for xx,yy in zip(x,y)))==0,(a,b)
    required={p for key in core.squared_corner_moment_coefficients() for p in key}
    assert required<=m.keys()
    return len(m)


def square_sum(kind):
    X,Y,c,_=[F(v) for v in CTX.gens()]
    if kind=='zero':
        J=F(0);q=c*c;zp=zm=c;gp=gm=3*q
    else:
        q=4/(1+c*c);J=8*c/(1+c*c)**2
        zp=-2*(1+c)/(1+c*c);zm=-2*(1-c)/(1+c*c)
        gp=3*q+J;gm=3*q-J
    core.Z=9-q-X-Y;core.R2=-X*core.Z/Y;core.R1=J/Y
    rr=core.Quad(0,1)
    values=[core.Quad(1),core.Quad(X),core.Quad(1),core.Quad(Y),rr,(core.Quad(J)-rr*Y)/X]
    first=core.side(*values,g=gp,zz=zp)
    second=core.side(*[-v for v in values],g=gm,zz=zm)
    m={key:first[key]+second[key] for key in first}
    terms=[]
    for key,c in core.squared_corner_moment_coefficients().items():
        val=core.Quad(fmpq(str(c)))
        for p in key:val=val*m[p]
        terms.append(val)
    a=common_sum([t.a for t in terms]);b=common_sum([t.b for t in terms])
    assert not b.n
    return a


def split_reduce(poly,kind):
    ctx=fmpq_mpoly_ctx.get(['b','a','c','d']);Y,X,c,K=ctx.gens()
    n=fmpq_mpoly(str(poly),ctx)
    if kind=='zero':
        p=9-c*c;W=c*c*(c+3)**2
        fy=Y*Y+(X-p)*Y+X*X-p*X+W+K
        fx=X**3-p*X*X+(W+K)*X-K
        return (n%fy)%fx
    h=1+c*c
    fy=h**3*(Y*Y+X*Y+X*X+K)-(9*h-4)*h*h*(X+Y)+2*(16-32*h+18*h*h)
    fx=h**3*(X**3+K*X-K)-(9*h-4)*h*h*X*X+2*(16-32*h+18*h*h)*X
    def prem(n,f,var,degree):
        while n and n.degrees()[var]>=degree:
            d=n.degrees()[var]
            top=ctx.from_dict({tuple(ex[i]-(d if i==var else 0) for i in range(4)):co
                              for ex,co in n.terms() if ex[var]==d})
            mon=[0]*4;mon[var]=d-degree
            n=n*h**3-top*ctx.from_dict({tuple(mon):1})*f
            while n and n%h==0:n=n/h
        return n
    return prem(prem(n,fy,0,2),fx,1,3)


def run():
    started=time.process_time();count=universal_moments()
    print('PASS universal Laurent moments:',count,flush=True)
    zero=square_sum('zero')
    ctx=fmpq_mpoly_ctx.get(['b','a','c','d']);Y,X,z,K=ctx.gens()
    A=3*z*(z+3)**4+(3*z+8)*K
    B=z*z*(z+3)**4+(z+2)**2*K
    target=-3888*z**13*(z+2)**2*(z+3)**2*(K+(z-1)*(z+3)**3)*A*A*B*B
    assert split_reduce(zero.n,'zero')==target
    assert split_reduce(zero.d,'zero')==z**12*A**5
    print('PASS zero-J square-sum identity',flush=True)
    nonzero=square_sum('nonzero')
    reduced=split_reduce(nonzero.n,'nonzero')
    data=json.loads((HERE/'critical_quartic.json').read_text())
    target=fmpq_mpoly(data['reduced_numerator'],ctx)
    assert reduced==target
    product=ctx.constant(fmpq(data['unit']))
    for f,e in data['factors']:product*=fmpq_mpoly(f,ctx)**e
    assert product==target
    print('PASS nonzero-J square-sum numerator and factorization',flush=True)
    return dict(status='PASS_EXACT_CRITICAL_SQUARE_SUM_IDENTITIES',
                universal_moments=count,zero_J_formula=True,nonzero_J_factorization=True,
                cpu_seconds=time.process_time()-started,
                scope='Exact algebraic identities on the stated nonzero-divisor loci; physical boundary coverage requires the written pole and endpoint arguments.')


if __name__=='__main__':
    print(json.dumps(run(),indent=2))
