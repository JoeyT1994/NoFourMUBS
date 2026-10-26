#!/usr/bin/env python3
"""Exact counterexample to universal regular-edge-corner existence.

Uses only Python's standard library.  All arithmetic takes place in
Q(sqrt(3), i), with elements stored as a+b*sqrt(3)+i*(c+d*sqrt(3)).
It exhausts all 20*20 positional corners of

    N = [[F3,F3],[F3 diag(1,i,(3+4i)/5), -F3 diag(1,i,(3+4i)/5)]].

No floating-point arithmetic, numerical differentiation, downloaded data,
or assertions imported from the handoff are used.
"""

from collections import Counter
from fractions import Fraction as Q
from itertools import combinations


class K:
    __slots__ = ("v",)

    def __init__(self, a=0, b=0, c=0, d=0):
        if isinstance(a, K):
            self.v = a.v
        else:
            self.v = tuple(map(Q, (a, b, c, d)))

    def __add__(self, other):
        other = K(other)
        return K(*(x+y for x, y in zip(self.v, other.v)))

    __radd__ = __add__

    def __neg__(self):
        return K(*(-x for x in self.v))

    def __sub__(self, other):
        return self + (-K(other))

    def __rsub__(self, other):
        return K(other) + (-self)

    def __mul__(self, other):
        a,b,c,d = self.v
        e,f,g,h = K(other).v
        return K(a*e+3*b*f-c*g-3*d*h,
                 a*f+b*e-c*h-d*g,
                 a*g+3*b*h+c*e+3*d*f,
                 a*h+b*g+c*f+d*e)

    __rmul__ = __mul__

    def __pow__(self, n):
        assert isinstance(n, int) and n >= 0
        value, base = K(1), self
        while n:
            if n & 1:
                value *= base
            base *= base
            n //= 2
        return value

    def __eq__(self, other):
        return self.v == K(other).v

    def __hash__(self):
        return hash(self.v)

    def bar(self):
        a,b,c,d = self.v
        return K(a,b,-c,-d)

    def re(self):
        a,b,_,_ = self.v
        return K(a,b)

    def norm(self):
        return self * self.bar()

    def rational(self):
        a,b,c,d = self.v
        assert (b,c,d) == (0,0,0), self
        return a

    def __repr__(self):
        return "(" + ",".join(map(str, self.v)) + ")"


i = K(0,0,1,0)
omega = K(Q(-1,2), 0, 0, Q(1,2))


def corner_jet(a,b,c,d):
    """Return (g, R, grad_theta R) from the four independent phases.

    Derivatives are analytic, using d exp(i theta)/d theta=i exp(i theta).
    In particular the derivative is in all four seed directions, not merely
    the two directions tangent to the Fourier family.
    """
    s = -(1+a+b)
    t = -(1+c+d)
    ca = c*a.bar()
    db = d*b.bar()
    r = -(1+ca+db)
    ds = [-i*a, -i*b, K(), K()]
    dt = [K(), K(), -i*c, -i*d]
    dr = [i*ca, i*db, -i*ca, -i*db]
    X,Y,Z = s.norm(),t.norm(),r.norm()
    p = X+Y+Z
    J = 2*(s*r*t.bar()).re()
    W = X*Y+X*Z+Y*Z-X*Y*Z
    g = 27-3*p+J
    eta = 9-p+J
    chi = W-(p-9)*(p-18)+(p-15)*J
    R = 4*g*g*eta-chi*chi
    grad = []
    for k in range(4):
        dX = 2*(ds[k]*s.bar()).re()
        dY = 2*(dt[k]*t.bar()).re()
        dZ = 2*(dr[k]*r.bar()).re()
        dp = dX+dY+dZ
        dJ = 2*(ds[k]*r*t.bar()+s*dr[k]*t.bar()+s*r*dt[k].bar()).re()
        dW = (Y+Z-Y*Z)*dX+(X+Z-X*Z)*dY+(X+Y-X*Y)*dZ
        dg = -3*dp+dJ
        de = -dp+dJ
        dc = dW-(2*p-27)*dp+dp*J+(p-15)*dJ
        grad.append(8*g*eta*dg+4*g*g*de-2*chi*dc)
    return g,R,grad


def matrix():
    z,w = i,K(Q(3,5),0,Q(4,5),0)
    phase = [K(1),z,w]
    H = []
    for row in range(6):
        half,a = divmod(row,3)
        H.append([omega**((a*(col%3))%3)
                  * (phase[col%3] if half else K(1))
                  * (-1 if half and col >= 3 else 1)
                  for col in range(6)])
    return H


def verify():
    H = matrix()
    # Verify Hadamardness directly, not just from the block construction.
    for row in H:
        assert all(x.norm() == 1 for x in row)
    for r in range(6):
        for s in range(6):
            assert sum(H[r][c]*H[s][c].bar() for c in range(6)) == (6 if r == s else 0)
    corners = list(combinations(range(6),3))
    census = Counter()
    critical_g = Counter()
    for rows in corners:
        for cols in corners:
            # Dephase the corner exactly by unit factors.
            E = [[H[r][c]*H[r][cols[0]].bar()*H[rows[0]][c].bar()*H[rows[0]][cols[0]]
                  for c in cols] for r in rows]
            assert E[0] == [K(1)]*3
            assert [row[0] for row in E] == [K(1)]*3
            g,R,gradient = corner_jet(E[1][1],E[1][2],E[2][1],E[2][2])
            q = R.rational()
            assert q >= 0
            census[q] += 1
            if q == 0:
                assert gradient == [K()]*4, (rows,cols,gradient)
                critical_g[g] += 1
    expected = Counter({Q(0):256,
                        Q(144,625):36,
                        Q(5184,625):36,
                        Q(28224,625):36,
                        Q(63504,625):36})
    assert census == expected, census
    print("PASS: exact Hadamard equations.")
    print("PASS: all 400 corner discriminants and all four phase derivatives.")
    print("R multiset:")
    for R,count in sorted(census.items()):
        print(f"  R={R}: {count} corners")
    print("PASS: every one of the 256 R=0 corners has gradient R=0.")
    print("PASS: 144 strict corners and no regular edge corner.")
    print("Critical-corner determinant-square values (a+b sqrt(3)+i(c+d sqrt(3))):")
    for g,count in sorted(critical_g.items(), key=lambda item:item[0].v):
        print(f"  g={g}: {count} corners")


if __name__ == "__main__":
    verify()
