#!/usr/bin/env python3
"""Independent exact-arithmetic regression checks for N1 algebra/support.

This is not an atlas certificate and does not replace the proofs in
quadratic_proof.md. It uses rational points on the unit circle and Fraction
arithmetic, so failed algebra or sampled inequalities cannot hide in float
tolerances. Run: python3 work/verify_quadratic_exact.py
"""
from fractions import Fraction as F
from itertools import product
from math import isqrt
import json
import random


def dot(a, b):
    return sum((x*y for x, y in zip(a, b)), F(0))


def norm2(v):
    return dot(v, v)


def norm_upper(v):
    z = norm2(v)
    scale = 1 << 45
    q = (z.numerator*scale*scale)//z.denominator
    return F(isqrt(q)+1, scale)


def center(v):
    m = sum(v)/len(v)
    return [t-m for t in v]


def mv(A, x):
    return [dot(row, x) for row in A]


def quad(A, x):
    return dot(x, mv(A, x))


def transpose(A):
    return list(map(list, zip(*A)))


def weights_bound(v, X, r, rF, rowsum):
    m, s = max(v), sum(v)
    return min(m*(6*X*X+2*X*rowsum+rF*rF),
               s*(X+r)**2,
               s*X*X+2*X*(rF*norm_upper(center(v))+s*rowsum/6)+m*rF*rF)


def support(A, C, D, l, b, a, h):
    diag = [A[j][j] for j in range(5)]
    g = max(D[j][j]+sum(abs(D[j][k]) for k in range(4) if k != j)
            for j in range(4))
    qee = h*h*max(g, 0)
    cp = norm_upper([sum(abs(C[j][k]) for j in range(5)) for k in range(4)])
    cheap = (a*sum(abs(t) for t in l)+h*norm_upper(b)
             +a*a*(sum(max(t, 0) for t in diag)
                     +sum(abs(A[j][k]) for j in range(5) for k in range(5) if j != k))
             +2*a*h*cp+qee)
    forced = [abs(l[j]) > 2*a*sum(abs(t) for t in A[j])+2*h*norm_upper(C[j])
              for j in range(5)]
    lift = a*a*sum(max(diag[j], 0)+(min(diag[j], 0) if forced[j] else 0)
                   for j in range(5))
    vals = []
    for eps in product((-1, 1), repeat=5):
        if any(forced[j] and eps[j]*l[j] < 0 for j in range(5)):
            continue
        qoff = a*a*sum(A[j][k]*eps[j]*eps[k]
                       for j in range(5) for k in range(5) if j != k)
        eta_lin = [b[k]+2*a*sum(eps[j]*C[j][k] for j in range(5)) for k in range(4)]
        vals.append(a*dot(l, eps)+qoff+h*norm_upper(eta_lin))
    vertex = lift+max(vals)+qee
    return cheap, vertex, sum(forced)


def main():
    rng = random.Random(20261017)
    cases, samples = 36, 8
    counters = dict(cases=cases, quadratic_identities=0,
                    hessian_contraction_checks=0, support_checks=0,
                    weighted_frobenius_checks=0, forced_coordinates=0)
    a, h = F(1, 12), F(1, 50)
    X = norm_upper([F(5, 72)]*3+[F(-7, 72)]*2+[F(-1, 72)])
    # This explicit norm equals sqrt(29/6)*a: three +a and two -a free coordinates.
    assert X*X >= F(29, 6)*a*a
    for case in range(cases):
        H, J = [], []
        for i in range(6):
            phase = []
            for j in range(6):
                t = F(rng.randint(-4, 4), rng.randint(1, 4))
                phase.append(((1-t*t)/(1+t*t), 2*t/(1+t*t)))
            assert all(u*u+v*v == 1 for u, v in phase)
            su, sv = map(sum, zip(*phase))
            R = [[(phase[j][0]*phase[k][0]+phase[j][1]*phase[k][1])/6
                  for k in range(6)] for j in range(6)]
            alpha = [(su*u+sv*v)/6 for u, v in phase]
            Hi = [[R[j][k]-(alpha[j] if j == k else 0) for k in range(6)] for j in range(6)]
            Ji = [-(su*v-sv*u)/6 for u, v in phase]
            assert all(sum(row) == 0 for row in Hi)
            assert sum(Ji) == 0
            H.append(Hi)
            J.append(Ji)
        T = [[[F(rng.randint(-16, 16), 64) for k in range(4)]
              for j in range(6)] for i in range(6)]
        y = [F(rng.randint(-8, 8), 8) for i in range(6)]
        l = [sum(y[i]*J[i][j] for i in range(6)) for j in range(1, 6)]
        b = [-sum(y[i]*J[i][j]*T[i][j][k] for i in range(6) for j in range(6)) for k in range(4)]
        A = [[sum(y[i]*H[i][j+1][k+1] for i in range(6)) for k in range(5)] for j in range(5)]
        C = [[-sum(y[i]*H[i][j+1][s]*T[i][s][k] for i in range(6) for s in range(6))
              for k in range(4)] for j in range(5)]
        D = [[sum(y[i]*T[i][s][j]*H[i][s][t]*T[i][t][k]
                  for i in range(6) for s in range(6) for t in range(6))
              for k in range(4)] for j in range(4)]
        # Pi is a formal common factor in the quadratic blocks. Substituting 1
        # tests the exact polynomial identity; the support lemma is independent of pi.
        ub0, ub1, nf = support(A, C, D, l, b, a, h)
        counters['forced_coordinates'] += nf
        for sample in range(samples):
            d5 = [a*F(rng.randint(-8, 8), 8) for j in range(5)]
            d = [F(0)]+d5
            x = center(d)
            eta = [F(rng.randint(-8, 8), 8) for k in range(4)]
            er = norm_upper(eta)
            eta = [h*t/er for t in eta]
            assert norm2(eta) <= h*h
            w0 = [[x[j]-dot(T[i][j], eta) for j in range(6)] for i in range(6)]
            original_quad = sum(y[i]*quad(H[i], w0[i]) for i in range(6))
            block_quad = quad(A, d5)+2*dot(d5, mv(C, eta))+quad(D, eta)
            assert original_quad == block_quad
            original_linear = sum(y[i]*dot(J[i], w0[i]) for i in range(6))
            assert original_linear == dot(l, d5)+dot(b, eta)
            counters['quadratic_identities'] += 2
            p = original_linear+original_quad
            assert p <= ub0
            assert p <= ub1
            counters['support_checks'] += 2
            for i in range(6):
                v = [F(rng.randint(-8, 8), 8) for j in range(6)]
                z = [F(rng.randint(-8, 8), 8) for j in range(6)]
                cv, cz = center(v), center(z)
                assert dot(v, mv(H[i], z))**2 <= norm2(cv)*norm2(cz)
                assert quad(H[i], v) == -sum(H[i][j][k]*(v[j]-v[k])**2
                                            for j in range(6) for k in range(j+1, 6))
                counters['hessian_contraction_checks'] += 2
            # Arbitrary, deliberately non-horizontal admissible displacement.
            delta = [[F(rng.randint(-8, 8), 800) for j in range(6)] for i in range(6)]
            r = max(norm_upper(col) for col in delta)
            rF = norm_upper([t for col in delta for t in col])
            rowsum = norm_upper([sum(delta[i][j] for i in range(6)) for j in range(6)])
            for weights in ([abs(t) for t in y], [t*t for t in y]):
                lhs = sum(weights[i]*norm2([x[j]-delta[i][j] for j in range(6)]) for i in range(6))
                assert lhs <= weights_bound(weights, X, r, rF, rowsum)
                counters['weighted_frobenius_checks'] += 1
    # Exact polynomial audit of the split-exponential remainder identity.
    # Small multivariate rational polynomial ring, with its sixth generator
    # reduced using i^2=-1. No external symbolic package is required.
    class Poly:
        def __init__(self, terms):
            self.terms = {k: v for k, v in terms.items() if v}
        @staticmethod
        def of(x):
            return x if isinstance(x, Poly) else Poly({(0,)*6: F(x)})
        def __add__(self, other):
            other = Poly.of(other)
            ans = self.terms.copy()
            for k, v in other.terms.items():
                ans[k] = ans.get(k, 0)+v
            return Poly(ans)
        __radd__ = __add__
        def __neg__(self):
            return Poly({k: -v for k, v in self.terms.items()})
        def __sub__(self, other):
            return self+-Poly.of(other)
        def __rsub__(self, other):
            return Poly.of(other)+-self
        def __mul__(self, other):
            other = Poly.of(other)
            ans = {}
            for k, v in self.terms.items():
                for j, w in other.terms.items():
                    exps = [a+b for a, b in zip(k, j)]
                    sign = (-1)**(exps[-1]//2)
                    exps[-1] %= 2
                    key = tuple(exps)
                    ans[key] = ans.get(key, 0)+sign*v*w
            return Poly(ans)
        __rmul__ = __mul__
        def __pow__(self, n):
            ans = Poly.of(1)
            for _ in range(n):
                ans = ans*self
            return ans
        def __truediv__(self, n):
            return self*F(1, n)
    ev, em, v, t, kap, ii = [Poly({tuple(1 if j == k else 0 for j in range(6)): F(1)})
                             for k in range(6)]
    r3_vt = ev*em-1-ii*kap*(v-t)+kap**2*(v-t)**2/2
    rhs = (ev-1-ii*kap*v+kap**2*v*v/2
           +em-1+ii*kap*t+kap**2*t*t/2
           +(ev-1-ii*kap*v)*(em-1)
           +ii*kap*v*(em-1+ii*kap*t))
    assert (r3_vt-rhs).terms == {}
    counters['split_remainder_symbolic_identity'] = 'PASS'
    counters['status'] = 'PASS'
    print(json.dumps(counters, indent=2, sort_keys=True))


if __name__ == '__main__':
    main()
