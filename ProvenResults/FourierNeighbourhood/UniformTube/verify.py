"""Replay arithmetic bounds and the Arb-ball seed-lifting counterexample.

External premises: the published Fourier-family exclusion, Theorem 1 of
Jeronimo-Perrucci-Tsigaridas, and (only for the counterexample) accepted local
H+ reconstruction identities. This replay does not reprove those premises.
"""
from pathlib import Path
import runpy


def radius_constants():
    # 60 freely phased entries in two raw bases + two family phases + sqrt(3).
    n = 2*(2*5*6+2)+1
    equalities = 2*5*6+2+1
    inequalities = 1
    m = equalities+inequalities
    d = 12
    H = 2**30
    assert (n,m,d) == (125,64,12)
    assert max(H,2*n+2*m) == H
    # Joint real/imaginary coefficient 1-norms: raw basis entry <= 2,
    # twice a Fourier entry <= 4. Six-term scalar products <= 24 and 48.
    orthogonality_terms = 2*(6*5//2)
    family_terms = 2*6*6
    cross_terms = 6*6
    coefficient_bound = (orthogonality_terms*24**2
        +family_terms*(48**2+24)**2+cross_terms*(24**2+6)**2)
    assert coefficient_bound == 402421392 < H
    # JPT base < 2^534; exponent = 125*24^125.
    assert 4+30+4*n == 534
    E = 534*n*(2*d)**n
    assert E+21 < 2**590
    # P <= 72*(144*d_distance)^2 < 2^21*d_distance^2.
    assert family_terms*144**2 == 1492992 < 2**21
    assert 2**590 > 21
    print('PASS: integer polynomial bounds n=125, m=64, degree<=12, coefficient height<2^30')
    print('PASS: E=534*125*24^125 and E+21<2^590')
    print('PASS: uniform excluded radius delta=2^(-2^590), conditional on the two published theorems')
    print('NOTE: this radius is far too small for campaign pruning')


if __name__ == '__main__':
    radius_constants()
    runpy.run_path(str(Path(__file__).with_name('seed_counterexample.py')))
    print('PASS: uniform-tube arithmetic and seed-lifting obstruction; see stated dependencies')
