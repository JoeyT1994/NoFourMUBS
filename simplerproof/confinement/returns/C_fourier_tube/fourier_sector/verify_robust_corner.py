#!/usr/bin/env python3
"""Exact certificate for ROBUST_HADAMARD_CORNER.md.

Only Python's standard library is used. The proof's analytic steps are
written out in the report; this checks every numerical cutoff, the Fourier
product identity, and replays the exact finite cubic-corner classification.
"""
from fractions import Fraction as F
from pathlib import Path
import importlib.util
from explore_exact import ONE,ZERO,clean,add,mul,scale,conj,prod

def root(k): return clean({(0,0,k%3):1})

def total(xs):
    out=ZERO
    for x in xs: out=add(out,x)
    return out

def verify_fourier_identity():
    m=[ONE,{(1,0,0):1},{(0,1,0):1}]
    n=[scale(total(mul(m[j],root(k*j)) for j in range(3)),F(1,3))
       for k in range(3)]
    c=[mul(n[k],conj(n[(k-1)%3])) for k in range(3)]
    lam=[total(mul(c[k],root(-t*k)) for k in range(3)) for t in range(3)]
    w=[mul(m[j],conj(m[(j+1)%3])) for j in range(3)]
    b=[scale(total(mul(w[j],root(-t*j)) for j in range(3)),F(1,3))
       for t in range(3)]
    assert lam[0]==ZERO
    assert lam[1]==conj(b[1])
    assert lam[2]==mul(root(1),b[2])
    assert prod(w)==ONE
    assert total(mul(x,conj(x)) for x in n)==ONE
    # The three Fourier vectors are orthogonal with squared norm three.
    for s in range(3):
        for t in range(3):
            assert total(root((s-t)*j) for j in range(3))==scale(ONE,3 if s==t else 0)
    print('PASS: exact circulant eigenvalue and mean-Fourier product identities')

def verify_three_phase_constants():
    # Nearest cube root estimate for |1+v+w|<=s<=1/16.
    assert 33<36  # sqrt(33)/16 < 3/8
    assert F(13,8)**2<3  # sqrt(3)-3/8 > 5/4
    assert F(33,20)<2
    assert 11*F(1,16)<3  # distinct orientations in the 3x3 rounding
    assert 26<36         # Frobenius error sqrt(26)*s < 6s
    # Chord <=3/16 has phase/chord ratio less than101/100.
    max_chord=F(3,16)
    ratio=1+max_chord**2/(6*(4-max_chord**2))
    assert ratio<F(101,100)
    assert F(202,75)<3  # after fixing the common phase using product one
    print('PASS: all constants of the quantitative three-phase lemmas')

def verify_block_constants():
    assert 2<F(3,2)**2  # 6+12sqrt2 <24
    assert 3*6**2+24**2<27**2
    assert 3<F(7,4)**2
    assert 24*(1+F(7,4))==66
    assert 66*F(7,4)<120
    assert 18**2*3<32**2
    assert 36**2*3<64**2
    print('PASS: block rounding and diagonal replacement constants')

def verify_cutoffs():
    determinant_deficit=F(1,10**16)
    epsilon=F(1,10**8)
    eta=120*epsilon
    e_upper=F(11,10000)
    assert epsilon**2==determinant_deficit
    assert epsilon<=F(1,16)
    assert eta<e_upper**2
    assert 3*e_upper<F(1,16)
    assert 6*eta<F(1,16)
    assert 9*e_upper<F(1,2)
    error=27*epsilon+32*e_upper+64*eta
    assert error<F(1,25)
    phase_ratio=1+F(1,25)**2/(6*(4-F(1,25)**2))
    assert phase_ratio<F(101,100)
    phase_error=F(101,100)*error
    assert phase_error<F(9,250)<F(21,500)
    # A Tao equivalent cannot have M<26 within this phase radius.
    tao_lower=3*(9-48*F(9,250))**2
    assert 9-48*F(9,250)>0 and tao_lower>26
    # Optional near-permanent criterion: deficit(det)<=13 deficit(perm).
    assert F(37,54)<F(25,36)
    permanent_deficit=determinant_deficit/13
    assert permanent_deficit<F(1,4)
    assert 13*permanent_deficit==determinant_deficit
    print('PASS: determinant deficit1e-16 gives Frobenius bound',error)
    print('PASS: phase bound',phase_error,'<9/250<21/500')
    print('PASS: exact Tao exclusion and near-permanent cutoff')

def replay_finite_classification():
    filename=Path(__file__).resolve().parents[1]/'mc1'/'verify_hadamard_corner.py'
    spec=importlib.util.spec_from_file_location('robust_corner_exact_cases',filename)
    module=importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    module.main()
    # z_s=l_s conj(l_{s+1}) has Fourier mode equal to quadratic chirality.
    for a in range(3):
        for b in range(3):
            z=[(-a)%3,(a-b)%3,b]
            chirality=(2*a-b)%3
            assert all(z[s]==(z[0]+chirality*s)%3 for s in range(3))
    # A zero mean in mode t rounds to constant mode or mode -t.
    for t in (1,2):
        assert {(sigma+t)%3 for sigma in (1,2)}=={0,(-t)%3}
    print('PASS: nongeometric rounded diagonals have opposite chirality')

if __name__=='__main__':
    verify_fourier_identity()
    verify_three_phase_constants()
    verify_block_constants()
    verify_cutoffs()
    replay_finite_classification()
    print('ROBUST HADAMARD CORNER VERIFICATION PASS')
