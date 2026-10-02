#!/usr/bin/env python3
"""Exact checks for ProvenResults/Quartets/CountSix.

Run as `python3 verify.py` from this folder.  Exits nonzero on any failure.
Nothing outside this folder is read.  Only the Python standard library and
numpy are used (numpy only to *locate* candidate matchings numerically; every
matching used below is then re-verified in exact cyclotomic arithmetic, and
counting uses the proved bound "at most six").

Sections
  A. Combinatorics of the incidence argument (independent re-derivation of
     the archive's 729-pattern check, plus the complete face-subset census).
  B. Support-pattern lemma behind "U or V is monomial" (pigeonhole step).
  C. Exact order-six count-six triangles: the zeta = exp(i pi/12) triangle and
     the product triple I, F2 x F3, B2 x B3.  Six exact matchings, orthogonal
     characters in all three directions, the Hadamard-diagonal tensor
     decomposition, commuting G_k, the orientation identity H_ji = conj(H_ij),
     the conjugation-fixed rays being binary (Lemma 1 mechanism) and zero3 on
     their edges (as OneBinaryMatching predicts).
  D. Exact prime-dimension quartets (d = 3, 5): the trace factorisation
     tr(Q_a* S_b)/d = U_ab conj(V_ab), disjoint supports, propagation (Lemma 3)
     identities on every ordered edge, and the parity point: there the
     conjugation involution on the d-1 nonidentity rays is fixed-point free,
     so Lemma 2 has no analogue and all edges are aligned at both ends.
"""
from fractions import Fraction as Fr
import itertools as it
import sys
import time

import numpy as np


def require(ok, msg):
    if not ok:
        raise AssertionError(msg)


# ---------------------------------------------------------------------------
# Exact arithmetic in Q(zeta_N)
# ---------------------------------------------------------------------------
def cyclotomic_poly(N):
    """Integer coefficients (low degree first) of the N-th cyclotomic polynomial."""
    def polydiv(a, b):  # exact division of integer polys, b monic
        a = a[:]
        q = [0]*(len(a)-len(b)+1)
        for i in range(len(a)-len(b), -1, -1):
            c = a[i+len(b)-1]
            q[i] = c
            for j, bj in enumerate(b):
                a[i+j] -= c*bj
        require(all(x == 0 for x in a), 'cyclotomic division')
        return q
    p = [-1] + [0]*(N-1) + [1]          # x^N - 1
    for d in range(1, N):
        if N % d == 0:
            p = polydiv(p, cyclotomic_poly(d))
    return p


class Field:
    def __init__(self, N):
        self.N = N
        phi = cyclotomic_poly(N)
        self.deg = len(phi)-1
        # reduction table for x^k, 0 <= k < 2N
        red = []
        cur = [0]*self.deg
        cur[0] = 1
        for k in range(2*N):
            red.append(cur[:])
            # multiply by x
            nxt = [0] + cur[:-1]
            top = cur[-1]
            if top:
                for j in range(self.deg):
                    nxt[j] -= top*phi[j]
            cur = nxt
        self.red = red
        self.zero = El(self, (Fr(0),)*self.deg)
        self.one = self.z(0)

    def z(self, k):
        k %= self.N
        return El(self, tuple(Fr(c) for c in self.red[k]))

    def rat(self, r):
        c = [Fr(0)]*self.deg
        c[0] = Fr(r)
        return El(self, tuple(c))


class El:
    __slots__ = ('F', 'c')

    def __init__(self, F, c):
        self.F, self.c = F, c

    def __add__(self, o):
        return El(self.F, tuple(a+b for a, b in zip(self.c, o.c)))

    def __sub__(self, o):
        return El(self.F, tuple(a-b for a, b in zip(self.c, o.c)))

    def __neg__(self):
        return El(self.F, tuple(-a for a in self.c))

    def __mul__(self, o):
        if not isinstance(o, El):
            return El(self.F, tuple(a*Fr(o) for a in self.c))
        F = self.F
        prod = [Fr(0)]*(2*F.deg)
        for i, a in enumerate(self.c):
            if a:
                for j, b in enumerate(o.c):
                    if b:
                        prod[i+j] += a*b
        out = [Fr(0)]*F.deg
        for k, v in enumerate(prod):
            if v:
                for j, r in enumerate(F.red[k]):
                    if r:
                        out[j] += v*r
        return El(F, tuple(out))

    def conj(self):
        F = self.F
        out = [Fr(0)]*F.deg
        for k, v in enumerate(self.c):
            if v:
                for j, r in enumerate(F.red[(-k) % F.N]):
                    if r:
                        out[j] += v*r
        return El(F, tuple(out))

    def iszero(self):
        return all(a == 0 for a in self.c)

    def __eq__(self, o):
        return all(a == b for a, b in zip(self.c, o.c))

    def __hash__(self):
        return hash(self.c)

    def num(self):
        w = np.exp(2j*np.pi/self.F.N)
        return complex(sum(float(a)*w**k for k, a in enumerate(self.c)))


def mat_mul(A, B):
    n, m, p = len(A), len(B), len(B[0])
    F = A[0][0].F
    out = []
    for i in range(n):
        row = []
        for j in range(p):
            s = F.zero
            for k in range(m):
                s = s + A[i][k]*B[k][j]
            row.append(s)
        out.append(row)
    return out


def adj(A):
    return [[A[j][i].conj() for j in range(len(A))] for i in range(len(A[0]))]


def diag(v):
    F = v[0].F
    n = len(v)
    return [[v[i] if i == j else F.zero for j in range(n)] for i in range(n)]


def scal(A, r):
    return [[x*r for x in row] for row in A]


def mat_eq(A, B):
    return all(a == b for ra, rb in zip(A, B) for a, b in zip(ra, rb))


def trace(A):
    s = A[0][0].F.zero
    for i in range(len(A)):
        s = s + A[i][i]
    return s


def ident(F, n):
    return [[F.one if i == j else F.zero for j in range(n)] for i in range(n)]


def is_diagonal(A):
    return all(A[i][j].iszero() for i in range(len(A)) for j in range(len(A)) if i != j)


def det3(M):
    return (M[0][0]*(M[1][1]*M[2][2]-M[1][2]*M[2][1])
            - M[0][1]*(M[1][0]*M[2][2]-M[1][2]*M[2][0])
            + M[0][2]*(M[1][0]*M[2][1]-M[1][1]*M[2][0]))


def zero3_count(M):
    n = len(M)
    cnt = 0
    for r in it.combinations(range(n), 3):
        for c in it.combinations(range(n), 3):
            if det3([[M[i][j] for j in c] for i in r]).iszero():
                cnt += 1
    return cnt


def inner(u, v):  # <u, v> = sum conj(u_i) v_i
    s = u[0].F.zero
    for a, b in zip(u, v):
        s = s + a.conj()*b
    return s


# ---------------------------------------------------------------------------
# A. Incidence combinatorics
# ---------------------------------------------------------------------------
VERTS = range(4)
EDGES = list(it.combinations(VERTS, 2))
FACES = list(it.combinations(VERTS, 3))


def section_A():
    # A1: all four faces count six.  Each edge carries a nonempty set of
    # aligned endpoints (shared alignment theorem), 3^6 = 729 assignments.
    def others(v, u):
        return [w for w in VERTS if w not in (v, u)]
    n_L2 = n_L3 = n_both = 0
    for choice in it.product(((0,), (1,), (0, 1)), repeat=6):
        al = set()   # (edge, endpoint) aligned
        for e, ch in zip(EDGES, choice):
            for k in ch:
                al.add((e, e[k]))

        def aligned(x, y, at):
            return (tuple(sorted((x, y))), at) in al
        # Lemma 2: no vertex has all three incident edges aligned at itself.
        L2 = all(not all(aligned(v, u, v) for u in VERTS if u != v) for v in VERTS)
        # Lemma 3: uv aligned at u  ==>  vw aligned at w and vz aligned at z.
        L3 = all(all(aligned(v, w, w) for w in others(v, u))
                 for u in VERTS for v in VERTS if u != v and aligned(u, v, u))
        n_L2 += L2
        n_L3 += L3
        n_both += L2 and L3
    require((n_L2, n_L3, n_both) == (122, 5, 0), 'A1 729-pattern counts')

    # A2: complete census over subsets S of count-six faces.  Alignment flags
    # exist only on edges both of whose faces lie in S; such an edge needs at
    # least one aligned endpoint.  Lemma 3 needs the third face in S (it
    # proves it); Lemma 2 applies at vertices with all three faces in S.
    def faces_of_edge(e):
        return [f for f in FACES if set(e) <= set(f)]
    feasible_sizes = set()
    census = {}
    for r in range(5):
        for S in it.combinations(FACES, r):
            S = set(S)
            shared = [e for e in EDGES if all(f in S for f in faces_of_edge(e))]
            ok_any = False
            n_ok = 0
            for choice in it.product(((0,), (1,), (0, 1)), repeat=len(shared)):
                al = set()
                for e, ch in zip(shared, choice):
                    for k in ch:
                        al.add((e, e[k]))

                def aligned(x, y, at):
                    return (tuple(sorted((x, y))), at) in al
                good = True
                for (e, u) in al:
                    v = e[1] if u == e[0] else e[0]
                    w, z = [x for x in VERTS if x not in e]
                    if tuple(sorted((v, w, z))) not in S:
                        good = False
                        break
                    if not (aligned(v, w, w) and aligned(v, z, z)):
                        good = False
                        break
                if good:
                    for v in VERTS:
                        if all(f in S for f in FACES if v in f):
                            if all(aligned(v, u, v) for u in VERTS if u != v):
                                good = False
                if good:
                    ok_any = True
                    n_ok += 1
                    if r == 3:
                        c, = set.intersection(*[set(f) for f in S])
                        expect = {(tuple(sorted((c, x))), x) for x in VERTS if x != c}
                        require(al == expect, 'A2 three-face pattern: centre edges aligned at outer ends only')
            census[r] = census.get(r, 0) + (1 if ok_any else 0)
            if ok_any:
                feasible_sizes.add(r)
            if r == 3 and ok_any:
                # the unique assignment: centre edges aligned at outer vertex only
                require(n_ok == 1, 'A2 three-face assignment unique')
    require(feasible_sizes == {0, 1, 3}, 'A2 feasible numbers of count-six faces')
    require(census == {0: 1, 1: 4, 2: 0, 3: 4, 4: 0}, 'A2 census')

    # A3: involutions of five labels all have a fixed point (26 of them).
    inv = [p for p in it.permutations(range(5)) if all(p[p[i]] == i for i in range(5))]
    require(len(inv) == 26 and all(any(p[i] == i for i in range(5)) for p in inv), 'A3')
    # A4: orientation parity: H=K, conj H=L, conj K=conj L forces H=conj H.
    require(all(not (h == k and (1-h) == l and k == l) for h, k, l in it.product((0, 1), repeat=3)),
            'A4')
    return {'A1': (n_L2, n_L3, n_both), 'A2_feasible': sorted(feasible_sizes)}


# ---------------------------------------------------------------------------
# B. Support-pattern lemma (pigeonhole in the shared alignment theorem)
# ---------------------------------------------------------------------------
def section_B():
    # Admissible 5x5 support pattern of the nonidentity block of a unitary
    # overlap: every row and column has size in {1,3,4,5} (never 0: unit norm;
    # never 2: support-two fact), and a singleton row lies in a singleton
    # column and conversely (unitarity: the entry has modulus one).
    rows = [frozenset(c) for k in (1, 3, 4, 5) for c in it.combinations(range(5), k)]
    n_adm = n_three_single = 0
    for R in it.product(rows, repeat=5):
        cols = [frozenset(i for i in range(5) if j in R[i]) for j in range(5)]
        if any(len(c) in (0, 2) for c in cols):
            continue
        if any(len(R[i]) == 1 and len(cols[next(iter(R[i]))]) != 1 for i in range(5)):
            continue
        if any(len(cols[j]) == 1 and len(R[next(iter(cols[j]))]) != 1 for j in range(5)):
            continue
        n_adm += 1
        singles = sum(len(r) == 1 for r in R)
        if singles >= 3:
            n_three_single += 1
            require(singles == 5, 'B: three singleton rows force a permutation pattern')
    require(n_three_single == 120, 'B: exactly the 120 permutation patterns')
    # Pigeonhole: disjoint row supports inside 5 columns cannot both be >= 3,
    # so each of the 5 rows is singleton in U5 or in V5; one has >= 3.
    require(not any(a >= 3 and b >= 3 and a+b <= 5 for a in range(6) for b in range(6)), 'B pigeonhole')
    return {'admissible_patterns': n_adm, 'with_three_singletons': n_three_single}


# ---------------------------------------------------------------------------
# Matchings: numeric location + exact verification
# ---------------------------------------------------------------------------
def numeric_matchings(A, B, tol=1e-8):
    d = A.shape[0]
    X = A.conj().T @ B
    T = [np.array([[np.conj(A[k, i])*B[k, j]/X[i, j] for j in range(d)] for i in range(d)])
         for k in range(d)]
    G = [T[0].conj().T @ T[k] for k in range(d)]
    rng = np.random.default_rng(7)
    c = rng.normal(size=d)+1j*rng.normal(size=d)
    _, V = np.linalg.eig(sum(ci*g for ci, g in zip(c, G)))
    out = []
    for a in range(d):
        v = V[:, a]
        lam = [v.conj() @ g @ v/(v.conj() @ v) for g in G]
        if all(np.linalg.norm(g @ v-l*v) < tol for g, l in zip(G, lam)):
            eta = np.conj(np.array(lam))
            M = (A.conj().T @ np.diag(eta) @ B)/X
            p = M[:, 0]/M[0, 0]
            q = M[0, :]
            require(np.allclose(np.outer(p, q), M, atol=1e-8), 'numeric rank one')
            out.append((eta, p, q))
    return out


def snap(F, vec, tol=1e-7):
    out = []
    for x in vec:
        k = np.angle(x)/(2*np.pi)*F.N
        kr = int(round(k))
        require(abs(k-kr) < tol and abs(abs(x)-1) < 1e-7, 'snap to a root of unity')
        out.append(F.z(kr))
    return out


class Frame:
    """Bases of C^d given by phase matrices Ph (B = Ph/sqrt(d)); None = identity."""

    def __init__(self, F, d, phases):
        self.F, self.d = F, d
        self.ph = phases           # list; entry None means the standard basis
        self.inv_d = Fr(1, d)

    def num(self, x):
        P = self.ph[x]
        if P is None:
            return np.eye(self.d, dtype=complex)
        return np.array([[e.num() for e in row] for row in P])/np.sqrt(self.d)

    def op(self, x, v):
        """B_x D(v) B_x^* exactly."""
        P = self.ph[x]
        if P is None:
            return diag(v)
        return scal(mat_mul(mat_mul(P, diag(v)), adj(P)), self.inv_d)

    def coords(self, x, M):
        """B_x^* M B_x exactly."""
        P = self.ph[x]
        if P is None:
            return M
        return scal(mat_mul(mat_mul(adj(P), M), P), self.inv_d)

    def transition(self, x, y):
        """Scalar multiple of sqrt(d) B_x^* B_y (for minor tests)."""
        F = self.F
        Px = self.ph[x] if self.ph[x] is not None else ident(F, self.d)
        Py = self.ph[y] if self.ph[y] is not None else ident(F, self.d)
        return mat_mul(adj(Px), Py)


def face_matchings(fr, v, i, j):
    """Exact complete matching list of the oriented face (v; i, j):
    operators (E, P, Q), E = P Q, E diagonal in B_v, P in B_i, Q in B_j.
    Returned with the identity matching first, as (eta, p, q, E, P, Q)."""
    F, d = fr.F, fr.d
    Bv, Bi, Bj = fr.num(v), fr.num(i), fr.num(j)
    A = Bv.conj().T @ Bi
    B = Bv.conj().T @ Bj
    ms = numeric_matchings(A, B)
    out = []
    for eta, p, q in ms:
        e, pp, qq = snap(F, eta), snap(F, p), snap(F, q)
        E, P, Q = fr.op(v, e), fr.op(i, pp), fr.op(j, qq)
        require(mat_eq(E, mat_mul(P, Q)), 'exact matching E = P Q')
        out.append((e, pp, qq, E, P, Q))
    # identity first
    out.sort(key=lambda m: 0 if all(x == F.one for x in m[0]) else 1)
    require(all(x == F.one for x in out[0][0]), 'identity matching present')
    # orthogonality in all three directions => pairwise distinct, and <= d
    for a, b in it.combinations(range(len(out)), 2):
        for k in range(3):
            require(inner(out[a][k], out[b][k]).iszero(), 'orthogonal characters')
    return out


def rayset_equal(vs, ws):
    """Equality of two lists of phase vectors as sets of rays."""
    def ray(v):
        c = v[0].conj()   # v[0] is a root of unity; normalise first entry to 1
        return tuple(x*c for x in v)
    return set(ray(v) for v in vs) == set(ray(w) for w in ws)


def is_binary(v):
    c = v[0].conj()
    w = [x*c for x in v]
    one = v[0].F.one
    return all(x == one or x == -one for x in w)


# ---------------------------------------------------------------------------
# C. Order-six count-six triangles
# ---------------------------------------------------------------------------
def check_count_six_triangle(name, fr):
    F, d = fr.F, fr.d
    res = {}
    faces = {}
    for (v, i, j) in it.permutations(range(3)):
        ms = face_matchings(fr, v, i, j)
        require(len(ms) == 6, name+': six exact matchings on every orientation')
        faces[(v, i, j)] = ms
    # characters are phase Hadamards in all three directions
    for ms in faces.values():
        for k in range(3):
            H = [[ms[a][k][r] for a in range(6)] for r in range(6)]
            require(mat_eq(mat_mul(adj(H), H), scal(ident(F, 6), 6)), name+': Hadamard characters')
    # orientation identity H^v_ji = conj(H^v_ij) (computed independently)
    for (v, i, j), ms in faces.items():
        other = faces[(v, j, i)]
        require(rayset_equal([[x.conj() for x in m[0]] for m in ms], [m[0] for m in other]),
                name+': H^v_ji = conj(H^v_ij)')
    # tensor form: T_k = (1/6) sum_a conj(eta_k^a) p^a (q^a)^T  (Hadamard-diagonal tensor)
    ms = faces[(0, 1, 2)]
    Ph1, Ph2 = fr.ph[1], fr.ph[2]
    Xs = mat_mul(adj(Ph1), Ph2)            # = 6 X
    for k in range(6):
        # (T_k)_ij = conj(A_ki) B_kj / X_ij = conj(Ph1_ki) Ph2_kj / Xs_ij (the 1/6 cancels)
        # and 1/Xs_ij = conj(Xs_ij)/6 since |Xs_ij|^2 = 6.
        Tk = [[Ph1[k][i].conj()*Ph2[k][j]*Xs[i][j].conj()*Fr(1, 6) for j in range(6)] for i in range(6)]
        Rk = [[sum((ms[a][0][k].conj()*ms[a][1][i]*ms[a][2][j] for a in range(6)), F.zero)*Fr(1, 6)
               for j in range(6)] for i in range(6)]
        require(mat_eq(Tk, Rk), name+': Hadamard-diagonal tensor decomposition')
    # commuting G_k = T_0^* T_k
    Ts = []
    for k in range(6):
        Ts.append([[Ph1[k][i].conj()*Ph2[k][j]*Xs[i][j].conj()*Fr(1, 6) for j in range(6)] for i in range(6)])
    Gs = [mat_mul(adj(Ts[0]), T) for T in Ts]
    for g, h in it.combinations(Gs[1:], 2):
        require(mat_eq(mat_mul(g, h), mat_mul(h, g)), name+': G_k commute')
    # Lemma 1 mechanism: centre character ray sets, conjugation, fixed rays
    fixed_binary = []
    conj_closed = []
    for (v, i, j), ms in faces.items():
        chars = [m[0] for m in ms]
        cc = rayset_equal(chars, [[x.conj() for x in c] for c in chars])
        conj_closed.append(cc)
        for c in chars[1:]:
            fixed = rayset_equal([c], [[x.conj() for x in c]])
            if fixed:
                require(is_binary(c), name+': conjugation-fixed ray is binary')
                fixed_binary.append(True)
        if cc:
            require(any(rayset_equal([c], [[x.conj() for x in c]]) for c in chars[1:]),
                    name+': conj-closed set has a fixed nonidentity ray (5 is odd)')
    n_binary_dirs = sum(is_binary(ms[a][k]) for ms in faces.values() for a in range(1, 6) for k in range(3))
    require(n_binary_dirs > 0, name+': binary directions present')
    z3 = [zero3_count(fr.transition(x, y)) for x, y in ((0, 1), (0, 2), (1, 2))]
    require(any(z > 0 for z in z3), name+': zero3 on some edge, as OneBinaryMatching predicts')
    res.update({'orientations': 6, 'conj_closed_faces': sum(conj_closed),
                'binary_directions': n_binary_dirs, 'zero3_per_edge': z3})
    return res


def section_C():
    F = Field(24)
    z = F.z
    H = [[z(4*k*j) for j in range(6)] for k in range(6)]
    K = [[z(2*k*k+4*k*j) for j in range(6)] for k in range(6)]
    for P in (H, K):
        require(mat_eq(mat_mul(adj(P), P), scal(ident(F, 6), 6)), 'phase Hadamard')
    X = mat_mul(adj(H), K)
    require(all((x*x.conj()) == F.rat(6) for row in X for x in row), 'H*K flat (zeta triangle)')
    out = {'zeta_triangle': check_count_six_triangle('zeta', Frame(F, 6, [None, H, K]))}
    # product triple I, F2 x F3, B2 x B3 with B2 = [[1,1],[i,-i]], B3 = diag(1,w,w) F3
    F2 = [[z(0), z(0)], [z(0), z(12)]]
    B2 = [[z(0), z(0)], [z(6), z(18)]]
    F3 = [[z(8*i*j) for j in range(3)] for i in range(3)]
    D3 = [0, 8, 8]
    B3 = [[z(D3[i]+8*i*j) for j in range(3)] for i in range(3)]

    def kron(A, B):
        return [[A[i//len(B)][j//len(B[0])]*B[i % len(B)][j % len(B[0])]
                 for j in range(len(A[0])*len(B[0]))] for i in range(len(A)*len(B))]
    P1, P2 = kron(F2, F3), kron(B2, B3)
    for P in (P1, P2):
        require(mat_eq(mat_mul(adj(P), P), scal(ident(F, 6), 6)), 'product Hadamard')
    X = mat_mul(adj(P1), P2)
    require(all((x*x.conj()) == F.rat(6) for row in X for x in row), 'product triple unbiased')
    out['product_triple'] = check_count_six_triangle('product', Frame(F, 6, [None, P1, P2]))
    return out


# ---------------------------------------------------------------------------
# D. Prime-dimension quartets: universal identities of Lemmas 2-3
# ---------------------------------------------------------------------------
def section_D(d, N):
    F = Field(N)
    w = N//d
    Fd = [[F.z(w*i*j) for j in range(d)] for i in range(d)]
    phases = [None] + [[[F.z(w*(a*i*i+i*j)) for j in range(d)] for i in range(d)] for a in range(3)]
    fr = Frame(F, d, phases)
    for x, y in it.combinations(range(4), 2):
        T = fr.transition(x, y)
        # Ph_x^* Ph_y has |entries|^2 = d for x, y > 0; x = 0 gives a phase matrix
        require(all((t*t.conj()) == (F.one if x == 0 else F.rat(d)) for row in T for t in row),
                'quartet unbiased')
    faces = {}
    for v, i, j in it.permutations(range(4), 3):
        ms = face_matchings(fr, v, i, j)
        require(len(ms) == d, 'every face has d matchings')
        faces[(v, i, j)] = ms
    n_checked = 0
    aligned = set()
    for x, y in it.permutations(range(4), 2):
        z_, w_ = [u for u in range(4) if u not in (x, y)]
        m1, m2 = faces[(x, y, z_)], faces[(x, y, w_)]
        # U_ab = tr(E_a^* F_b)/d, V_ab = tr(P_a^* R_b)/d; Q_a, S_b as operators
        for a in range(d):
            for b in range(d):
                Ea, Pa, Qa = m1[a][3], m1[a][4], m1[a][5]
                Fb, Rb, Sb = m2[b][3], m2[b][4], m2[b][5]
                U = trace(mat_mul(adj(Ea), Fb))*Fr(1, d)
                V = trace(mat_mul(adj(Pa), Rb))*Fr(1, d)
                lhs = trace(mat_mul(adj(Qa), Sb))*Fr(1, d)
                require(lhs == U*V.conj(), 'trace factorisation (3)')
                if a > 0 and b > 0:
                    require(lhs.iszero() and (U*V.conj()).iszero(), 'disjoint supports (4)')
                n_checked += 1
        Uray = rayset_equal([m[0] for m in m1], [m[0] for m in m2])
        Vray = rayset_equal([m[1] for m in m1], [m[1] for m in m2])
        if Uray:
            aligned.add((x, y, x))
        if Vray:
            aligned.add((x, y, y))
        require(Uray or Vray, 'at least one endpoint aligned')
        if Uray:
            # Lemma 3 with u = x, v = y: pair F_b to E_a with compensating phase
            for a in range(d):
                Ea, Pa, Qa = m1[a][3], m1[a][4], m1[a][5]
                (b, c), = [(b, inner(m2[b][0], m1[a][0])) for b in range(d)
                           if not inner(m2[b][0], m1[a][0]).iszero()]
                # E_a = c' F_b for a root of unity c' = conj(eta_0^a) theta_0^b ratio
                ratio = m1[a][0][0]*m2[b][0][0].conj()
                Rb = [[r*ratio for r in row] for row in m2[b][4]]
                Sb = m2[b][5]
                require(mat_eq(Ea, mat_mul(Rb, Sb)), 'aligned switch E_a = R_a S_a')
                Ta = mat_mul(adj(Pa), Rb)
                require(mat_eq(Ta, mat_mul(Qa, adj(Sb))), 'T_a = P_a^* R_a = Q_a S_a^*')
                require(is_diagonal(fr.coords(y, Ta)), 'T_a diagonal in B_v')
                require(mat_eq(Qa, mat_mul(adj(Pa), Ea)) and mat_eq(Qa, mat_mul(Ta, Sb)), 'alignment at w')
                require(mat_eq(Sb, mat_mul(adj(Rb), Ea)) and mat_eq(Sb, mat_mul(adj(Ta), Qa)), 'alignment at z')
    # parity: in odd d the d-1 nonidentity rays are swapped without fixed points
    for ms in faces.values():
        chars = [m[0] for m in ms]
        require(rayset_equal(chars, [[x.conj() for x in c] for c in chars]), 'conj-closed (odd d)')
        require(not any(rayset_equal([c], [[x.conj() for x in c]]) for c in chars[1:]),
                'no fixed nonidentity ray in odd prime dimension')
    # consistency of conventions: 'xy aligned at x' computed from U (centre x)
    # and from V (centre y, characters at x) must agree
    for x, y in it.permutations(range(4), 2):
        require(((x, y, x) in aligned) == ((y, x, x) in aligned), 'U/V alignment conventions agree')
    require(len(aligned) == 24, 'every edge aligned at both endpoints in the prime quartet')
    return {'d': d, 'trace_identities': n_checked, 'aligned_endpoint_pairs': len(aligned)}


def main():
    t0 = time.monotonic()
    results = {}
    for name, fn in (('A_incidence', section_A), ('B_support_patterns', section_B),
                     ('C_order_six_count_six', section_C),
                     ('D_quartet_d3', lambda: section_D(3, 6)),
                     ('D_quartet_d5', lambda: section_D(5, 10))):
        t = time.monotonic()
        try:
            r = fn()
        except Exception as exc:  # noqa
            print('FAIL', name, repr(exc))
            sys.exit(1)
        results[name] = r
        print('PASS', name, r, '(%.1f s)' % (time.monotonic()-t))
    print('ALL PASS (%.1f s)' % (time.monotonic()-t0))


if __name__ == '__main__':
    main()
