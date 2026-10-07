"""Closure of the 36 seed boxes at the (0,0,2,4)-class seeds  theta* = +-(0, 0, 2pi/3, -2pi/3).

THEOREM.  Let theta lie in one of the boxes of seed_boxes38.jsonl that are within t = max(|th1|,|th2|) <= T and
t' = max(|th3 - th3*|, |th4 - th4*|) <= TP of theta* (or of -theta*), and let H be any order-6 complex Hadamard
whose dephased leading corner is E(theta).  Then either
  (A) d_F(H) < 1/30 whenever M(H) < 5  (so H is no quartet edge if E is a maximal corner, since M(H) = R(E) <= cap), or
  (B) some corner of H has R > cap >= sup_box R(E)  (so E is not a maximal corner of H).
Hence no theta in these boxes is the maximal-corner seed of a quartet edge.

PROOF (constants verified below in Arb).  Conjugation maps -theta* to theta* and preserves R, M and d_F, so take
theta*.  Dephase H (row 0 and column 0 all ones); then
  row 1 = (1, a, b, x),  a = e^{i th1}, b = e^{i th2};      row 2 = (1, c, d, y),  c ~ w, d ~ w^2 (w = e^{2 pi i/3}).
 1. sum_j |x_j + 1|^2 = 2(1-cos th1) + 2(1-cos th2) <= 2 t^2           (orthogonality of rows 0, 1)
 2. every row r >= 2 has first-half sum and second-half sum of modulus <= L = (2t + sqrt6 t)/2   (rows 0, 1)
 3. triple lemma: |1 + z1 + z2| <= L for unit z  =>  z within k1 L, k2 L of (w, w^2) or (w^2, w)
    (k1 = (1 + L/2)/s, s = min sin on the branch; k2 = 1 + k1).  So each row r >= 2 is
    (P or Pbar, mu_r * (sigma_r + d_r)) with P = (1, w, w^2), mu_r = its 4th entry, |d_r| <= k2 L entrywise.
 4. orientation counts: exactly two rows of each first-half orientation.  Orthogonality of columns 0 and 1 gives
    0 = 1 + a + c + sum_{r>=3} H[r,1]; with n' of rows 3..5 of orientation P this is (n'-1)(1 + 2w) = (n'-1) i sqrt3 up to
    the entry errors, so n' = 1 (NEAR_F6_CLOSURE.md, Section 5, valid for 41 t < sqrt3).  Row 2 is P.  Let k be a Pbar row.  <r2, rk> = 0 forces sigma_k = conj(sigma_2) (bound A0 < 3).
 5. K(mu, nu) := rows 0, (1,1,1,-1,-1,-1), (P, mu sigma), (P, -mu sigma), (Pbar, nu sigma*), (Pbar, -nu sigma*) is an
    exact Hadamard.  With mu = mu_2, nu = mu_k, rows 0, 1, 2, k of H are within eps_pf of those of K (max entry error).
    The same-colour partners satisfy |mu' + mu| <= p, |nu' + nu| <= p_nu (pairing bound), so the full phase-difference
    matrix has Frobenius norm <= DF.
 6. (B) R(A) = (2 Im q(B))^2 for B on the same rows as A (RouteC/averaging); 2 Im q has 48 unit terms of l1 degree
    8 or 12, so |2Im q(B_H) - 2Im q(B_K)| <= 432 eps_pf on rows {i, 2, k}.
    (A) H = G o e^{i(phi_K + Delta)} for a dephased F6-orbit member G, so H ~ F o e^{i psi} with ||P_hor psi|| <=
    ||P_hor phi_K|| + DF; if that is <= 3/10, PRACTICAL_LOCAL.tex (simplerproof/averaging_lemma) gives M < 5 => d_F < 1/30.
 7. A certified cover of the (alpha, beta) torus (mu = e^{i alpha}, nu = e^{i beta}), for sigma in {P, Pbar}, shows
    every cell satisfies  sup ||P_hor phi_K|| <= 3/10 - DF  for an explicit G,  or
    inf |2 Im q(B_K)| > 432 eps_pf + sqrt(cap)  for an explicit pairing-free corner.
Inputs: PRACTICAL_LOCAL.tex (local theorem at F6), the R = (2 Im q)^2 identity, NEAR_F6_CLOSURE Section 5 (orientation
count).  Usage: python3 close36.py
"""
import json, itertools, math, sys
from fractions import Fraction as Fr
from flint import arb, acb, ctx
ctx.prec = 128
HERE = __file__.rsplit('/', 1)[0] if '/' in __file__ else '.'

# ------------------------------------------------------------------ box geometry and caps (exact rationals -> arb)
PI = arb.pi()
def A(x): x = Fr(x); return arb(x.numerator) / x.denominator
rows = [json.loads(l) for l in open(HERE + '/seed_boxes38.jsonl')]
caps = {r['id']: r['R_cap'] for r in json.load(open(HERE + '/seed_boxes38_Rcap.json'))}
boxes = []
for r in rows:
    c = [A(x) for x in r['centers']]; h = [A(x) for x in r['radii']]
    for sg in (1, -1):
        seed = [arb(0), arb(0), sg * 2 * PI / 3, -sg * 2 * PI / 3]
        d = [abs(ci - si) + hi for ci, si, hi in zip(c, seed, h)]
        if all(x < arb('0.01') for x in d):
            boxes.append((r['id'], sg, max(d[0], d[1]), max(d[2], d[3]), caps[r['id']]))
assert len(boxes) == 36, len(boxes)
T = max(b[2] for b in boxes); TP = max(b[3] for b in boxes)
CAP = max(b[4] for b in boxes)
SQCAP = arb(CAP).sqrt() * arb('1.001')       # caps are float upper bounds from the Arb Taylor cap; pad
print('36 boxes: t <= %s, t\' <= %s, sqrt(cap) <= %s' % (T.upper().str(5), TP.upper().str(5), SQCAP.upper().str(5)))

# ------------------------------------------------------------------ analytic constants (upper bounds)
def U(x): return arb(x.upper())
t = U(T); tp = U(TP)
L = U((2 * t + arb(6).sqrt() * t) / 2)
assert 41 * t < arb(3).sqrt()                  # orientation count, NEAR_F6_CLOSURE Section 5
# triple lemma: |cos(phi) + 1/2| <= L + L^2/2 ; branch half-width delta = (L + L^2/2)/s, s = sin(2pi/3 + delta0)
delta0 = arb('0.05'); s = (2 * PI / 3 + delta0).sin()
k1 = U((1 + L / 2) / s); k2 = U(1 + k1)
assert k1 * L < delta0                         # consistency of the branch bound
eps_x = U(arb(2).sqrt() * t)
eps_pf = U(max(t, eps_x, tp, k2 * L))
# pairing bound for the same-colour partner of row 2 (and of row k)
A1 = U(2 * tp + (k1 + k2) * L + 2 * tp * k2 * L)   # |<f2,f2'> - 3|: f2 errors <= t', f2' errors k1 L, k2 L, + products
A2 = U(2 * (k1 + k2) * L + 2 * k2 ** 2 * L ** 2)      # |delta| in <g,g'> = mu conj(mu') (3 + delta)
assert A1 + A2 < 3
p = U((A1 + A2) / (3 - A2))
A1n = U(2 * (k1 + k2) * L + 2 * k2 ** 2 * L ** 2)   # row k and its partner both have first-half errors k1 L, k2 L
p_nu = U((A1n + A2) / (3 - A2))
# orientation of row k's second half: |<g2,gk>| = |<f2,fk>| <= A0 small, while equal orientation would give >= 3 - A2
A0 = U(2 * tp + 2 * (k1 + k2) * L + 2 * (k1 ** 2 + k2 ** 2) * L ** 2)
assert A0 < 3 - A2
ang = arb('1.001')                              # angle <= 1.001 * chord for chords <= 0.1
e_par = U(p + k2 * L); e_par_nu = U(p_nu + k2 * L)
assert e_par < arb('0.1') and e_par_nu < arb('0.1')
kk = U(k1 ** 2 + k2 ** 2)
DF2 = (2 * t ** 2 + 2 * t ** 2                   # row 1: a, b and x
       + 2 * tp ** 2 + kk * L ** 2               # row 2
       + kk * L ** 2 + 3 * e_par ** 2            # partner of row 2
       + 2 * kk * L ** 2                         # row k
       + kk * L ** 2 + 3 * e_par_nu ** 2)        # partner of row k
DF = U(ang * DF2.sqrt())
LIP = 432
NEED_B = U(LIP * eps_pf + SQCAP)
NEED_A = arb(3) / 10 - DF
print('L=%s k1=%s k2=%s eps_pf=%s p=%s p_nu=%s DF=%s' % tuple(x.upper().str(4) for x in (L, k1, k2, eps_pf, p, p_nu, DF)))
print('(B) needs |2Im q(B_K)| > %s ; (A) needs ||P_hor phi_K|| <= %s' % (NEED_B.upper().str(5), NEED_A.lower().str(5)))
assert NEED_A > 0

# ------------------------------------------------------------------ the seed continuum K(alpha, beta)
# entries as (root-of-unity exponent mod 6 [units pi/3], coefficient of alpha, coefficient of beta)
P6 = (0, 2, 4); Pb6 = (0, 4, 2)                 # w = e^{2pi i/3} = (e^{i pi/3})^2
def Kspec(sig):
    s = P6 if sig == 0 else Pb6; sb = Pb6 if sig == 0 else P6
    R = [[(0, 0, 0)] * 6, [(0, 0, 0)] * 3 + [(3, 0, 0)] * 3,
         [(e, 0, 0) for e in P6] + [(e, 1, 0) for e in s],
         [(e, 0, 0) for e in P6] + [((e + 3) % 6, 1, 0) for e in s],
         [(e, 0, 0) for e in Pb6] + [(e, 0, 1) for e in sb],
         [(e, 0, 0) for e in Pb6] + [((e + 3) % 6, 0, 1) for e in sb]]
    return R
def Kval(spec, al, be):
    return [[acb(0, PI * e / 3 + ca * al + cb * be).exp() for (e, ca, cb) in row] for row in spec]
# exact Hadamard check at a rational point (float sanity is enough here: the structure is algebraic)
import numpy as np
for sig in (0, 1):
    Kn = np.array([[np.exp(1j * (math.pi * e / 3 + ca * 0.37 + cb * -1.1)) for (e, ca, cb) in row] for row in Kspec(sig)])
    assert np.allclose(Kn @ Kn.conj().T, 6 * np.eye(6))

# 2 Im q(B) for a 3x3 acb block
def twoImq(B):
    perm = sum(B[0][p[0]] * B[1][p[1]] * B[2][p[2]] for p in itertools.permutations(range(3)))
    det = sum((-1) ** sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3)) * B[0][p[0]] * B[1][p[1]] * B[2][p[2]]
              for p in itertools.permutations(range(3)))
    prod = acb(1)
    for i in range(3):
        for j in range(3):
            prod *= B[i][j]
    q = perm * det * det / prod
    return 2 * q.imag
T3 = list(itertools.combinations(range(6), 3))
# corners on rows {i, j, k}: i in {0,1}, j in the P pair {2,3}, k in the Pbar pair {4,5}; B = same rows, complementary
# cols.  For j = 3 (k = 5) the parameter of H read from that row, alpha_3 = arg(-mu_3), differs from alpha_2 by at most
# 1.001 p (beta: p_nu), so the cell is enlarged accordingly.
CORNERS = [((i, j, k), T) for i in (0, 1) for j in (2, 3) for k in (4, 5) for T in T3]

# dephased F6 orbit: exponents (a_i b_j mod 6), a, b permutations of Z6 fixing 0
perms6 = [(0,) + q for q in itertools.permutations(range(1, 6))]
ORB = sorted({tuple(tuple((a[i] * b[j]) % 6 for j in range(6)) for i in range(6)) for a in perms6 for b in perms6})
ORBn = np.array(ORB)
def hor(M):  # horizontal projection of a real 6x6 numpy matrix
    return M - M.mean(1, keepdims=True) - M.mean(0, keepdims=True) + M.mean()

def try_A(spec, al0, be0, r):
    """Tube test on the cell [al0 +- r] x [be0 +- r].  phi_K - phi_G is affine in (al, be): value at the centre
    (wrapped to (-pi, pi]) plus n_a (al - al0) + n_b (be - be0).  Valid if no entry can cross +-pi on the cell."""
    E = np.array([[e for (e, ca, cb) in row] for row in spec]); NA = np.array([[ca for (e, ca, cb) in row] for row in spec])
    NB = np.array([[cb for (e, ca, cb) in row] for row in spec])
    ph0 = math.pi * E / 3 + NA * al0 + NB * be0
    D = ph0[None] - math.pi * ORBn / 3
    D = (D + math.pi) % (2 * math.pi) - math.pi
    nrm = np.linalg.norm((D - D.mean(2, keepdims=True) - D.mean(1, keepdims=True) + D.mean((1, 2), keepdims=True)).reshape(len(ORB), -1), axis=1)
    g = int(np.argmin(nrm))
    # rigorous: recompute with arb for the chosen G
    Gx = ORB[g]
    phi = [[None] * 6 for _ in range(6)]
    for i in range(6):
        for j in range(6):
            e, ca, cb = spec[i][j]
            c0 = PI * (e - Gx[i][j]) / 3 + ca * arb(al0) + cb * arb(be0)
            k = round(float(c0.mid()) / (2 * math.pi))
            c0 = c0 - 2 * PI * k
            if not (abs(c0) + (abs(ca) + abs(cb)) * arb(r) < PI):
                return False, g
            phi[i][j] = (c0, ca, cb)
    # horizontal projection is linear: P(phi) = P(c0) + P(NA) dal + P(NB) dbe
    def P(Mfun):
        M = [[Mfun(i, j) for j in range(6)] for i in range(6)]
        rm = [sum(M[i]) / 6 for i in range(6)]; cm = [sum(M[i][j] for i in range(6)) / 6 for j in range(6)]
        tm = sum(rm) / 6
        return [[M[i][j] - rm[i] - cm[j] + tm for j in range(6)] for i in range(6)]
    P0 = P(lambda i, j: phi[i][j][0]); PA = P(lambda i, j: arb(phi[i][j][1])); PB = P(lambda i, j: arb(phi[i][j][2]))
    def nrmU(Mx):   # outward upper bound of the Frobenius norm
        return sum(arb(abs(x).upper()) ** 2 for row in Mx for x in row).sqrt()
    n0 = nrmU(P0); na = nrmU(PA); nb = nrmU(PB)
    bound = n0 + arb(r) * (na + nb)
    return bool(bound < NEED_A), g

def _tiles(c0, rad, h):
    """centres/radius of an exact tiling of [c0 - rad, c0 + rad] by n equal intervals of radius <= h."""
    n = max(1, math.ceil(rad / h)); rr = rad / n
    return [(c0 - rad + rr * (2 * m + 1), rr * 1.0000001) for m in range(n)]
def try_B(spec, al0, be0, r, h=0.0015):
    """(B) on the cell: some corner on rows {i,j,k} has |2Im q| > NEED_B on the cell, enlarged by the pairing bound
    for partner rows; the enlarged box is tiled into sub-boxes of radius <= max(r, h) and the minimum is taken."""
    pa = float(U(ang * p)); pb = float(U(ang * p_nu))
    cache = {}
    for (i, j, k) in [(i, j, k) for i in (0, 1) for j in (2, 3) for k in (4, 5)]:
        ra = r + (pa if j == 3 else 0.0); rb = r + (pb if k == 5 else 0.0)
        hh = max(r, h)
        TA = _tiles(al0, ra, hh); TB = _tiles(be0, rb, hh)
        lo = {Tc: math.inf for Tc in T3}
        for (ac, ar) in TA:
            for (bc, br) in TB:
                key = (ac, ar, bc, br)
                if key not in cache:
                    cache[key] = Kval(spec, arb(ac, ar), arb(bc, br))
                Kc = cache[key]
                for Tc in T3:
                    if lo[Tc] <= float(NEED_B.upper()):
                        continue
                    comp = [jj for jj in range(6) if jj not in Tc]
                    B = [[Kc[ii][jj] for jj in comp] for ii in (i, j, k)]
                    lo[Tc] = min(lo[Tc], float(abs(twoImq(B)).lower()))
        for Tc in T3:
            if lo[Tc] > float(NEED_B.upper()) * (1 + 1e-9):
                return True, ((i, j, k), Tc)
    return False, None

def cover(sig, n0=48, maxdepth=12):
    spec = Kspec(sig)
    h = math.pi / n0
    stack = [(-math.pi + h * (2 * i + 1), -math.pi + h * (2 * j + 1), h, 0) for i in range(n0) for j in range(n0)]
    stats = dict(A=0, B=0, split=0, cells=0)
    while stack:
        a0, b0, r, dep = stack.pop(); stats['cells'] += 1
        okB, _ = try_B(spec, a0, b0, r * 1.0000001)
        if okB:
            stats['B'] += 1; continue
        okA, _ = try_A(spec, a0, b0, r * 1.0000001)
        if okA:
            stats['A'] += 1; continue
        if dep >= maxdepth:
            raise AssertionError('cell undecided at (%r, %r, r=%r), sigma=%d' % (a0, b0, r, sig))
        stats['split'] += 1
        h2 = r / 2
        stack += [(a0 + sa * h2, b0 + sb * h2, h2, dep + 1) for sa in (-1, 1) for sb in (-1, 1)]
    return stats

if __name__ == '__main__':
    out = dict(T=T.upper().str(8), TP=TP.upper().str(8), sqrt_cap=SQCAP.upper().str(8), L=L.upper().str(8),
               k1=k1.upper().str(8), k2=k2.upper().str(8), eps_pf=eps_pf.upper().str(8), p=p.upper().str(8),
               p_nu=p_nu.upper().str(8), DF=DF.upper().str(8), need_B=NEED_B.upper().str(8), need_A=NEED_A.lower().str(8))
    for sig in (0, 1):
        st = cover(sig)
        print('sigma=%s:' % ('P' if sig == 0 else 'Pbar'), st, flush=True)
        out['cover_sigma%d' % sig] = st
    import hashlib
    sha = lambda f: hashlib.sha256(open(HERE + '/' + f, 'rb').read()).hexdigest()
    out['inputs'] = {f: sha(f) for f in ('close36.py', 'seed_boxes38.jsonl', 'seed_boxes38_Rcap.json')}
    out['boxes'] = sorted(b[0] for b in boxes)
    out['statement'] = ('for every Hadamard H with dephased corner E(theta), theta in one of these boxes: d_F(H) < 1/30 '
                        'if M(H) < 5 (tube, via PRACTICAL_LOCAL), or some corner of H has R > cap >= R(E)')
    out['status'] = 'PASS'
    json.dump(out, open(HERE + '/close36_receipt.json', 'w'), indent=1)
    print('PASS')
