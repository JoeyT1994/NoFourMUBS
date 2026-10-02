"""Exact identities for FOURIER_ROUTING.md; not a global MC1 verifier."""
import json
import sympy as sp


def run():
    omega=(-1+sp.I*sp.sqrt(3))/2
    u,r,s=sp.symbols('u r s',nonzero=True)
    clean=lambda f:sp.simplify(sp.cancel(sp.expand(sp.radsimp(f)),extension=(sp.I,sp.sqrt(3))))
    star=lambda f:sp.conjugate(f).subs({sp.conjugate(t):1/t for t in (u,r,s)})
    F=sp.Matrix(3,3,lambda i,j:omega**(i*j)).applyfunc(clean)
    assert (F*F.H-3*sp.eye(3)).applyfunc(clean)==sp.zeros(3)
    v=[1,u,1/u]
    hat=[sum(v[l]*omega**(k*l) for l in range(3)) for k in range(3)]
    A=[hat[k]*star(hat[(k-1)%3]) for k in range(3)]
    expected=[0,3*omega**2*(u**3-1)/u,-3*omega*(u**3-1)/u**2]
    for j in range(3):
        assert clean(sum(A[k]*omega**(j*k) for k in range(3))-expected[j])==0
    for n in range(3):
        c=clean(omega**n)
        Dw=sp.diag(1,1/c,c)
        P=(F*Dw*F.H/3).applyfunc(clean)
        assert all(x in (0,1) for x in P)
        assert P*P.T==sp.eye(3)
        Dv=sp.diag(1,u,1/u)
        forced=(-F*Dw*F.H*Dv*F/3).applyfunc(clean)
        assert (P.T*forced+Dv*F).applyfunc(clean)==sp.zeros(3)
        Dv=sp.diag(1,c,1/c)
        Pc=(F.H*Dv*F/3).applyfunc(clean)
        assert all(x in (0,1) for x in Pc)
        assert Pc*Pc.T==sp.eye(3)
        Dw=sp.diag(1,r,s)
        forced=(-F*Dw*F.H*Dv*F/3).applyfunc(clean)
        assert (forced*Pc.T+F*Dw).applyfunc(clean)==sp.zeros(3)
    D=sp.diag(1,r,s)
    binary=F.row_join(D*F).col_join(F.row_join(-D*F))
    N=F.row_join(F).col_join((F*D).row_join(-F*D))
    assert (binary-N.T).applyfunc(clean)==sp.zeros(6)
    return dict(status='PASS_EXACT_FOURIER_ROUTING',
                autocorrelation_identities=3,character_cases=6,
                singular_minor_normal_form=True,
                scope='Identities for the two written Fourier-routing proofs; no global MC1 claim.')


if __name__=='__main__':
    print(json.dumps(run(),indent=2))
