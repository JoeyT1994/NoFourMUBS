"""Exact arithmetic in the multiquadratic field Q(i, sqrt2, sqrt3, sqrt7, sqrt221).

A basis element is indexed by a bit mask over RAD=(-1,2,3,7,221); for example
{1:1}=i, {2:1}=sqrt2, {4:1}=sqrt3, {6:1}=sqrt6, {13:1}=i*sqrt21.
Vendored from the archived verify_hx_nonbinary.py, with the matrix utilities
of the archived completion_substitution and two_rectangle_alignment verifiers.
Rational arithmetic only; no floating point.
"""
import itertools as it
from fractions import Fraction as F

RAD = (-1, 2, 3, 7, 221)


class Q:
    def __init__(self, value=0):
        self.c = ({k: F(v) for k, v in value.items() if v} if isinstance(value, dict)
                  else dict(value.c) if isinstance(value, Q) else {0: F(value)} if value else {})

    def __add__(self, b):
        b = Q(b); d = dict(self.c)
        for k, v in b.c.items():
            d[k] = d.get(k, F(0))+v
        return Q(d)
    __radd__ = __add__

    def __neg__(self): return Q({k: -v for k, v in self.c.items()})
    def __sub__(self, b): return self+-Q(b)
    def __rsub__(self, b): return Q(b)+-self

    def __mul__(self, b):
        b = Q(b); d = {}
        for k, v in self.c.items():
            for l, w in b.c.items():
                value = v*w
                for bit, r in enumerate(RAD):
                    if k & l & (1 << bit):
                        value *= r
                d[k ^ l] = d.get(k ^ l, F(0))+value
        return Q(d)
    __rmul__ = __mul__

    def inv(self):
        assert self.c
        top = max(self.c)
        if top == 0:
            return Q(1/self.c[0])
        bit = top.bit_length()-1; mask = 1 << bit
        a = Q({k: v for k, v in self.c.items() if not k & mask})
        b = Q({k ^ mask: v for k, v in self.c.items() if k & mask})
        return (a-b*Q({mask: 1}))*(a*a-RAD[bit]*b*b).inv()

    def __truediv__(self, b): return self*Q(b).inv()
    def __rtruediv__(self, b): return Q(b)*self.inv()

    def __pow__(self, n):
        if n < 0:
            return self.inv()**(-n)
        out = Q(1); base = self
        while n:
            if n & 1:
                out = out*base
            base = base*base; n //= 2
        return out

    def __eq__(self, b): return self.c == Q(b).c
    def __ne__(self, b): return not self == b
    def bar(self): return Q({k: (-v if k & 1 else v) for k, v in self.c.items()})
    def __repr__(self): return repr({k: str(v) for k, v in self.c.items()})


def eye(n): return [[Q(int(i == j)) for j in range(n)] for i in range(n)]
def star(A): return [[x.bar() for x in row] for row in zip(*A)]
def mul(A, B): return [[sum((a*b for a, b in zip(row, col)), Q()) for col in zip(*B)] for row in A]
def scale(A, c): return [[x*c for x in row] for row in A]
def add(A, B): return [[a+b for a, b in zip(r, t)] for r, t in zip(A, B)]
def sub(A, B): return [[a-b for a, b in zip(r, t)] for r, t in zip(A, B)]
def trace(A): return sum((A[i][i] for i in range(len(A))), Q())


def det3(M):
    return (M[0][0]*(M[1][1]*M[2][2]-M[1][2]*M[2][1])
            - M[0][1]*(M[1][0]*M[2][2]-M[1][2]*M[2][0])
            + M[0][2]*(M[1][0]*M[2][1]-M[1][1]*M[2][0]))


def rref(M):
    M = [r[:] for r in M]; r = 0; piv = []
    for j in range(len(M[0])):
        p = next((p for p in range(r, len(M)) if M[p][j] != 0), None)
        if p is None:
            continue
        M[r], M[p] = M[p], M[r]; v = M[r][j]; M[r] = [z/v for z in M[r]]
        for k in range(len(M)):
            if k == r:
                continue
            v = M[k][j]
            if v != 0:
                M[k] = [z-v*w for z, w in zip(M[k], M[r])]
        piv.append(j); r += 1
        if r == len(M):
            break
    return M, piv


def rank(M): return len(rref(M)[1])


def inverse(M):
    n = len(M); R, p = rref([M[i]+eye(n)[i] for i in range(n)])
    assert p[:n] == list(range(n))
    return [row[n:] for row in R]


def null(M):
    R, p = rref(M); free = [j for j in range(len(M[0])) if j not in p]; out = []
    for j in free:
        v = [Q() for _ in M[0]]; v[j] = Q(1)
        for k, c in enumerate(p):
            v[c] = -R[k][j]
        out.append(v)
    return out


def features(A):
    """Gram matrix |P_ij|^2-1/12 of the supported projectors F_i(P), P=AA^dagger/6."""
    P = scale(mul(A, star(A)), Q(1)/6)
    return [[P[i][j]*P[i][j].bar()-Q(1)/12 for j in range(6)] for i in range(6)]


def completion(A):
    """Basis T_1,T_2,T_3 of W(A) and the commutator Gram Gamma (COMPLETION.md sec. 3, 6)."""
    S, V = A[:3], A[3:]; Z = scale(mul(inverse(star(S)), star(V)), Q(-1))+eye(3)
    hb = []
    for i in range(3):
        R = [[Q() for _ in range(3)] for _ in range(3)]; R[i][i] = Q(1); hb.append(R)
    ii = Q({1: 1})
    for i, j in it.combinations(range(3), 2):
        for z in [Q(1), ii]:
            R = [[Q() for _ in range(3)] for _ in range(3)]; R[i][j] = z; R[j][i] = z.bar(); hb.append(R)
    large = [mul(mul(Z, R), star(Z)) for R in hb]
    diag = [[M[i][i] for M in large] for i in range(6)]
    assert rank(diag) == 6
    ns = null(diag); assert len(ns) == 3
    Ts = []
    for v in ns:
        M = [[Q() for _ in range(6)] for _ in range(6)]
        for z, T in zip(v, large):
            M = add(M, scale(T, z))
        assert M == star(M) and all(M[i][i] == 0 for i in range(6)); Ts.append(M)
    Ks = [scale(sub(mul(Ts[j], Ts[k]), mul(Ts[k], Ts[j])), ii) for j, k in [(1, 2), (2, 0), (0, 1)]]
    G = [[trace(mul(K, L)) for L in Ks] for K in Ks]
    return Ts, G
