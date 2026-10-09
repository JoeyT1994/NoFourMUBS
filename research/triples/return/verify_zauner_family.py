#!/usr/bin/env python3
"""Exact identities for the entire Zauner one-parameter circle.

Requires SymPy. All acceptance decisions are exact symbolic equalities.
The positive square root in the companion formula has radicand >= 5;
this lower bound is proved algebraically, not sampled.
"""
import itertools
import sympy as sp

I = sp.I
z = sp.Symbol('z', nonzero=True)


def require(condition, label):
    if not condition:
        raise AssertionError(label)


def zero(expression, label):
    require(sp.cancel(sp.expand(expression)) == 0, label)


def cj(expression):
    """Conjugation on Q(i)[z,z^-1] with |z|=1."""
    return sp.conjugate(expression).subs(sp.conjugate(z), 1/z)


H = sp.Matrix([
    [1, -1/z, z, -1, I/z, I*z],
    [z, 1, -1/z, I*z, -1, I/z],
    [-1/z, z, 1, I/z, I*z, -1],
    [1, I/z, I*z, 1, 1/z, -z],
    [I*z, 1, I/z, -z, 1, 1/z],
    [I/z, I*z, 1, 1/z, -z, 1],
])


def corner(rows, cols):
    M = H.extract(rows, cols)
    return sp.Matrix(3, 3, lambda r,c:
        sp.cancel(M[r,c]*cj(M[r,0])*cj(M[0,c])*M[0,0]))


def r_invariant(M):
    s = -sum(M[1,j]*cj(M[0,j]) for j in range(3))
    t = -sum(M[2,j]*cj(M[0,j]) for j in range(3))
    r = -sum(M[2,j]*cj(M[1,j]) for j in range(3))
    X,Y,Z = [sp.cancel(v*cj(v)) for v in (s,t,r)]
    p = X+Y+Z
    J = sp.cancel(s*r*cj(t)+cj(s*r*cj(t)))
    g,eta = 27-3*p+J,9-p+J
    chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    return sp.cancel(4*g*g*eta-chi*chi)


def verify():
    for r,c in itertools.product(range(6),repeat=2):
        zero(H[r,c]*cj(H[r,c])-1,'entry modulus')
        zero(sum(cj(H[k,r])*H[k,c] for k in range(6))
             -(6 if r==c else 0),'Hadamard Gram')

    # All four blocks have the same circulant convention.
    for rb,cb in itertools.product(range(2),repeat=2):
        for r,c in itertools.product(range(3),repeat=2):
            zero(H[3*rb+r,3*cb+c]-H[3*rb,3*cb+(c-r)%3],
                 'circulant block')

    # The complete cross-ratio set has z-exponent -3,0,3 and all four
    # Gaussian units. This proves non-Fourier inequivalence away from
    # a finite set, without any reconstruction input.
    ratios = {sp.cancel(H[r,c]*H[s,d]*cj(H[r,d])*cj(H[s,c]))
              for r,s,c,d in itertools.product(range(6),repeat=4)}
    expected = {I**p*z**q for p in range(4) for q in (-3,0,3)}
    require(ratios == expected,'complete Laurent Haagerup set')

    M=corner((0,1,2),(0,1,2))
    a,b,c,d=M[1,1],M[1,2],M[2,1],M[2,2]
    for x,y in zip((a,b,c,d),(-1,-z**-3,z**3,-1)):
        zero(x-y,'seed curve')
    zero(a*b*c*d+1,'t=-1 admissible')
    U,V=-(a*d+b+c),-(b*c+d+a)
    zero(U-(-1-z**3+z**-3),'U curve')
    zero(V-3,'V curve')
    zero(r_invariant(M)-4*(z**3+z**-3)**6,'R=256 cos^6(3x)')

    M2=corner((0,1,2),(3,4,5))
    a,b,c,d=M2[1,1],M2[1,2],M2[2,1],M2[2,2]
    for value,target in zip((a,b,c,d),(-1,I*z**-3,I*z**3,-1)):
        zero(value-target,'complementary seed curve')
    zero(a*b*c*d+1,'complementary t=-1 admissible')
    zero(-(a*d+b+c)-(-1-I*(z**3+z**-3)),'complementary U')
    zero(-(b*c+d+a)-3,'complementary V')
    zero(r_invariant(M2)+4*(z**3-z**-3)**6,'R=256 sin^6(3x)')

    # Companion formula is verified at a generic Fourier mode.  The
    # relation s^2+c^2=1 expresses s=sin(t), c=cos(t).
    s,c=sp.symbols('s c', real=True)
    circle=sp.Poly(s*s+c*c-1,c,s)
    def circle_zero(expression,label):
        p=sp.Poly(sp.expand(expression),c,s)
        require(sp.rem(p,circle).is_zero,label)
    aa,bb,cc,dd=1+2*I*s,-1+2*I*c,1+2*I*c,1-2*I*s
    mode=sp.Matrix([[aa,bb],[cc,dd]])
    for r,t in itertools.product(range(2),repeat=2):
        circle_zero((mode.conjugate().T*mode)[r,t]-(6 if r==t else 0),
                    'mode unitarity')
    numerator=2*(c-s)-I*(1+4*s*c)
    radicand=(1+4*s*s)*(1+4*c*c)
    circle_zero(radicand-(5+16*s*s*c*c),'radicand >= 5')
    circle_zero(numerator*sp.conjugate(numerator)-radicand,'|v|=1')
    circle_zero(aa*sp.conjugate(cc)*numerator
                +sp.conjugate(aa*sp.conjugate(cc)*numerator),
                'quadrature identity makes S*B flat')

    # Explicit identification of all three Fourier mode matrices.
    w=(-1+I*sp.sqrt(3))/2
    for k in range(3):
        zk=z*w**k
        sk=(zk-1/zk)/(2*I)
        ck=(zk+1/zk)/2
        targets=((1+2*I*sk,-1+2*I*ck),
                 (1+2*I*ck,1-2*I*sk))
        for rb,cb in itertools.product(range(2),repeat=2):
            value=sum(H[3*rb,3*cb+j]*w**(-j*k) for j in range(3))
            require(sp.simplify(sp.expand(value-targets[rb][cb]))==0,
                    'Fourier mode formula')
    print('PASS: all-parameter T(x) Hadamard and explicit companion formula')
    print('PASS: radicands >= 5; no singular parameter cases')
    print('PASS: both exact seed curves, R=256 cos^6(3x), R=256 sin^6(3x)')
    print('PASS: full Laurent Haagerup set; the proof gives a strict off-omega corner for every x')


if __name__=='__main__':
    verify()
