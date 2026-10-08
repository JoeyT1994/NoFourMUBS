#!/usr/bin/env python3
"""Exact certificate for the complete two-parameter Fourier-family result.

Run: python3 verify_fourier.py
Only the Python standard library is needed. All polynomial operations take
place in Z[z1^+-1,z2^+-1,zeta]/(zeta^2+zeta+1), with integer coefficients.
Every numerical assertion uses fractions.Fraction, never float arithmetic.
"""
from collections import Counter
from fractions import Fraction
from itertools import product
from explore_exact import (H, TRIPLES, ZERO, ONE, clean, add, mul, scale,
                           conj, prod, qpoly, all_deltas, canonical_sign)

def const(n):
    return {} if n == 0 else {(0, 0, 0): n}

def rpoly(E):
    """The invariant R from the supplied definition, independently of F2."""
    def gram(i, j):
        ans = ZERO
        for k in range(3):
            ans = add(ans, mul(E[i][k], conj(E[j][k])))
        return add(const(6 if i == j else 0), scale(ans, -1))
    s,t,r = gram(1,0),gram(2,0),gram(2,1)
    X,Y,Z = [mul(v,conj(v)) for v in (s,t,r)]
    p = add(add(X,Y),Z)
    srt = prod([s,r,conj(t)])
    J = add(srt,conj(srt))
    W = add(add(add(mul(X,Y),mul(X,Z)),mul(Y,Z)),scale(prod([X,Y,Z]),-1))
    g = add(add(const(27),scale(p,-3)),J)
    eta = add(add(const(9),scale(p,-1)),J)
    chi = add(add(W,scale(mul(add(p,const(-9)),add(p,const(-18))),-1)),
              mul(add(p,const(-15)),J))
    return add(scale(prod([g,g,eta]),4),scale(mul(chi,chi),-1))

def check_hadamard():
    for i in range(6):
        for j in range(6):
            inner = ZERO
            for k in range(6):
                inner = add(inner,mul(H[i][k],conj(H[j][k])))
            assert inner == const(6 if i == j else 0), (i,j,inner)
    for row in H:
        for e in row:
            assert mul(e,conj(e)) == ONE

def sine_difference(exponents):
    x,y = exponents
    return {(x,y,0): 1,(-x,-y,0): -1}

def check_corner_formula():
    A,B,C = [sine_difference(e) for e in ((2,-1),(1,1),(1,-2))]
    expected = {}
    for s,t in product((-1,1),repeat=2):
        p = scale(add(add(A,scale(B,s)),scale(C,t)),3)
        expected[canonical_sign(p)] = 36
    expected[()] = 256
    observed = Counter(canonical_sign(p) for _,_,p in all_deltas())
    assert observed == expected, observed
    # Verify that complementary q's square equals R directly for every
    # corner. This also checks the correspondence used to transfer the
    # computed multiplicities from q to R.
    verified = 0
    for rows in TRIPLES:
        for cols in TRIPLES:
            others = tuple(k for k in range(6) if k not in cols)
            E = [[H[i][j] for j in cols] for i in rows]
            Bmat = [[H[i][j] for j in others] for i in rows]
            q = qpoly(Bmat)
            delta = add(q,scale(conj(q),-1))
            R = rpoly(E)
            assert R == scale(mul(delta,delta),-1),(rows,cols,R,delta)
            verified += 1
    assert verified == 400

def check_rational_constant():
    # Let b=9/25 and t=sqrt(3/2)*b. Since sin t >= t-t^3/6
    # on [0,1], it suffices to check this square exceeds 26/144.
    b = Fraction(9,25)
    t2 = Fraction(3,2)*b*b
    assert 0 < t2 < 1
    sine_lower_squared = t2*(1-t2/6)**2
    assert sine_lower_squared > Fraction(26,144)
    assert b < Fraction(11,20)
    # Also M<26 implies S=sqrt(M)/6 < 2 exactly.
    assert 26 < 144
    print('Exact positive margin for nu < 9/25:',
          sine_lower_squared-Fraction(26,144))

if __name__ == '__main__':
    check_hadamard()
    print('PASS: affine family is Hadamard over the exact Laurent ring')
    check_corner_formula()
    print('PASS: all 400 corner definitions and their signed-square formula')
    print('PASS: 256 zero corners and four sign classes, 36 corners each')
    check_rational_constant()
    print('PASS: the stated 26-threshold gives nu < 9/25 < 11/20 exactly')
    print('FOURIER CONFINEMENT VERIFICATION PASS')
