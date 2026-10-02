"""Exact strip census for CRITICAL_P7_EXCLUSION.md."""
import itertools,json
import sympy as sp


def run():
    u=sp.symbols('u',nonzero=True);I=sp.I
    x=[1,u,-u,-1,-I,I];y=[1,I*u,-I*u,I,-1,-I]
    bar=lambda f:sp.conjugate(f).subs(sp.conjugate(u),1/u)
    H=sp.Matrix([[1]*6,x,y])
    assert (H*H.applyfunc(bar).T-6*sp.eye(3)).applyfunc(sp.simplify)==sp.zeros(3)
    total=0;count=0
    for cols in itertools.combinations(range(6),3):
        E=H[:,list(cols)]
        per=sum(sp.prod(E[i,p[i]] for i in range(3)) for p in itertools.permutations(range(3)))
        t=per*E.det()**2/sp.prod(E)
        signed=sp.expand(t-bar(t));total-=signed*signed;count+=1
    assert count==20
    assert sp.expand(total-(1024-128*I*(u*u-u**-2)))==0
    r=1+2*I
    for uv in (1,-I):
        vv=sp.simplify((r*uv-1)/(uv+1))
        assert vv*sp.conjugate(vv)==1
    rp=-1-2*I;vv=-I
    assert sp.simplify((rp*vv+1)/(1-vv))==I
    return dict(status='PASS_EXACT_P7_ENDPOINT_EXCLUSION',
                corners=20,square_sum='1024 + 256 sin(2 arg u)',lower_bound=768,
                scope='All strips classified in the accompanying proof; excludes this endpoint, not global MC1.')


if __name__=='__main__':
    print(json.dumps(run(),indent=2))
