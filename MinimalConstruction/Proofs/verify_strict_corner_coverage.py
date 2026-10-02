"""Exact final bookkeeping for the written global strict-corner proof."""
import json
import sympy as sp


def run():
    k,z,Y,Z=sp.symbols('k z Y Z',real=True)
    f=sp.Poly(3*k**3+k*k+k-1,k)
    assert f.is_irreducible and f.degree()==3
    assert f.count_roots(0,sp.oo)==1
    for q in (1,-1,sp.Rational(1,3),sp.Rational(-1,3)):assert f.eval(q)!=0
    # Zero-J denominator-pole discriminant, including its exceptional factors.
    sm=-z*(z+3);prod=-z*(z+3)**3/(3*z+8)
    assert sp.cancel(sm*sm-4*prod-3*z*(z+2)**2*(z+3)**2/(3*z+8))==0
    tau=z+3;third=(1-z)*tau
    assert sp.cancel(tau*(3-third)-z*(3*z+9-third))==0 # lambda0=1
    T,K=sp.symbols('T K')
    p=9-z*z;W=z*z*(z+3)**2;K0=(1-z)*(z+3)**3
    assert sp.expand(T**3-p*T*T+(W+K0)*T-K0-(T-tau)**2*(T-third))==0
    assert sp.expand(T**3-sp.Rational(27,5)*T*T+sp.Rational(243,25)*T-sp.Rational(729,125)-(T-sp.Rational(9,5))**3)==0
    assert sp.expand(T**3-7*T*T+11*T-5-(T-1)**2*(T-5))==0
    # The irrational alternative cannot have positive integer multiplicity.
    # With it absent, exhaustive nonnegative count bookkeeping contradicts 108.
    assert all(5*n5!=108 for n5 in range(21))
    assert max(5*n5 for n5 in range(21))==100<108
    return dict(status='PASS_EXACT_STRICT_CORNER_FINAL_BOOKKEEPING',
                irrational_parameter_degree=3,positive_roots=1,
                zero_J_poles_and_repeated_modulus_identity=True,
                rational_endpoint_modulus_cubics=True,row_sum_contradiction=True,
                scope='Final algebra for STRICT_CORNER_COVERAGE.md; its prerequisite proof and replay chain is required.')


if __name__=='__main__':print(json.dumps(run(),indent=2))
