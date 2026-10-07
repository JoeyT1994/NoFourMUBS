"""Exact side-modulus identities and replay of outward dyadic radius bounds."""
import sympy as sp,json,hashlib
from pathlib import Path
from reconstruction_polynomials import LP
from eta_bounded_dual import radii
from flint import arb
HERE=Path(__file__).resolve().parent

def run():
    x=sp.symbols('x0:3');y=sp.symbols('y0:3')
    star=lambda v:sp.conjugate(v).xreplace({sp.conjugate(z):1/z for z in x+y})
    s,t,r=sum(x),sum(y),sum(b/a for a,b in zip(x,y))
    p=s*star(s)+t*star(t)+r*star(r);J=s*r*star(t)+star(s)*star(r)*t
    pi=s*t-sum(a*b for a,b in zip(x,y))
    assert sp.cancel(pi*star(pi)-(9-p+J))==0
    u,v=sp.prod(x),sp.prod(y)
    assert sp.cancel((u*star(pi))*star(u*star(pi))-pi*star(pi))==0
    assert sp.cancel((v*star(pi))*star(v*star(pi))-pi*star(pi))==0
    def eta(a,b,c,d):
        s,t,r=-1-a-b,-1-c-d,-1-c/a-d/b
        return 9-s*s.conjugate()-t*t.conjugate()-r*r.conjugate()+2*(s*r*t.conjugate()).real
    a,b,c,d=[LP.variable(j) for j in range(4)]
    assert not (eta(a,b,c,d)-eta(a,c,b,d)).d
    path='111011110001111001101011';rr,record=radii(path)
    radius=arb(record['numerator'])/2**record['bits']
    assert radius<arb(423)/200 # 2.115, a readable outward bound.
    files=['verify_eta_support.py','eta_bounded_dual.py','direct_bernstein_audit.py','scalar_bernstein.py','seed_bernstein.py','seed_taylor.py']
    result=dict(status='PASS_EXACT_SIDE_MODULUS_AND_BOX_RADIUS',global_confinement_proved=False,
        exact_Pi_and_C_moduli=True,exact_transpose_invariance=True,path=path,side_radius=record,
        sources={name:hashlib.sha256((HERE/name).read_bytes()).hexdigest() for name in files})
    (HERE/'eta_support_receipt.json').write_text(json.dumps(result,indent=2)+'\n');print('PASS radius < 2.115 and exact side-modulus identities')

if __name__=='__main__':run()
