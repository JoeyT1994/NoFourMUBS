#!/usr/bin/env python3
"""Exact symbolic clock/antiunitary completion in dimension six.

All symbols below are unit phases.  Their conjugates are their reciprocals.
The external Idel-Wolf existence theorem is a mathematical input, not
claimed to be verified by this script.
"""
import itertools
import sympy as sp

I=sp.I
w=(-1+I*sp.sqrt(3))/2
d=sp.symbols('d0:3',nonzero=True)
x=sp.symbols('x0:3',nonzero=True)
y=sp.symbols('y0:3',nonzero=True)
phases=d+x+y


def cj(v):
    return sp.conjugate(v).subs({sp.conjugate(t):1/t for t in phases})


def require_zero(v,label):
    if sp.cancel(sp.expand(v)) != 0:
        raise AssertionError(label)


def J(v):
    return sp.Matrix([entry for j in range(3)
                      for entry in (d[j]*cj(v[2*j+1]),-d[j]*cj(v[2*j]))])


def verify():
    # Rows are (j,s), columns (ell,b), both in interleaved order.
    H=sp.Matrix(6,6,lambda r,c:
                w**((r//2)*(c//2))*(-1)**((r%2)*(c%2))*d[r//2]**(c%2))
    clock=sp.diag(*[w**j for j in range(3) for unused in range(2)])
    rawg=sp.Matrix([entry for j in range(3) for entry in (x[j],y[j])])
    B=sp.Matrix.hstack(*[v for r in range(3)
                        for v in (clock**r*rawg,clock**r*J(rawg))])
    for name,M in [('anchor',H),('completion',B)]:
        for r,c in itertools.product(range(6),repeat=2):
            require_zero(M[r,c]*cj(M[r,c])-1,name+' flatness')
            require_zero(sum(cj(M[k,r])*M[k,c] for k in range(6))
                         -(6 if r==c else 0),name+' Gram')
    for ell,b in itertools.product(range(3),range(2)):
        vec=H[:,2*ell+b]
        clock_target=H[:,2*((ell+1)%3)+b]
        j_target=(-1)**b*H[:,2*((-ell)%3)+(1-b)]
        for r in range(6):
            require_zero((clock*vec-clock_target)[r],'clock anchor permutation')
            require_zero((J(vec)-j_target)[r],'antiunitary anchor permutation')
    for r in range(6):
        require_zero((J(J(rawg))+rawg)[r],'J^2=-I')
        require_zero((J(clock*rawg)-clock**2*J(rawg))[r],'JD=D^-1J')
    # Each constructed basis is explicitly in a row-phased Fourier family.
    for r,c in itertools.product(range(6),repeat=2):
        j,s=r//2,r%2
        ell,b=c//2,c%2
        rowphase=x[j] if s==0 else y[j]
        e=d[j]/(x[j]*y[j])
        formula=rowphase*w**(j*ell)*(-1)**(s*b)*e**b
        require_zero(B[r,c]-formula,'row-phased Fourier form')
    print('PASS: symbolic all-parameter prescribed-ray Fourier completion')
    print('PASS: Gram, entry moduli, anchor permutations, and J-clock relations')
    print('NOTE: existence of a starting common ray uses Idel-Wolf Theorem 2')


if __name__=='__main__':
    verify()
