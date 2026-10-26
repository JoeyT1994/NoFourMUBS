"""Kernel T1' boxes (record boundary -> seed ball; FORMAT.md section 6, KERNEL_T1PRIME.md): exact Python mirrors of
`KernelAtlas/Seed/T1P.lean` (recOK, linOK, tubeOK, tubeFull), the float predictors, synthetic seed targets and a Lean
emitter.  Nothing here is trusted: the kernel re-checks every inequality; the floats only choose data.

Layout (all grid integers 2^-60 unless said otherwise):
  record  RecP: Pg (centre, 36), pe (|P - Pg| <= pe), Tn (4 x 36 integers, T_k = Tn_k / DT), DT, Zb (21 x 36: the basis
          B_j = Zb_j / 2^60 of N, exactly in N: a reduced basis of the lattice N cap 2^-60 Z^36 rounded towards an
          orthonormal one), lamT, cT (T^T T Gershgorin: T injective), lamB, cn (c_N), nn (n_N), rho (row bounds),
          n0 (normal bound), KP / kpe (e^{i(Pg_ac - Pg_bc)} on the grid and its error), KQ / kqe (e^{i Pg_e}).
  lin     LinD (shared by many tube boxes): c (the linearisation point, 36), Y (21 x 30; entry 2p: Re, 2p+1: Im of the
          pair p = (a < b)), yn (||Y||_2), eps0 (A2).
  tube    TubeD: ec (centre eta, 4), hb (half-widths, 4), nu (the predictor nu~(u), 36 real models whose 15 coefficient
          vectors lie exactly in N), bphi (||Phi||), su, snu (||nu~||), rs (radii r_0 .. r_K).
  sign    SgnD: (g, rows, cols, o): the two Psi signs, checked on the whole tube box.
  group   EllG: (sg, G, qg, bl, rl): a sign corner and a target ball (theta0, Mth, o as BallD, radius r_l, G ~ Mth^-1,
          q >= ||I - G Mth||_F); v0 = G (theta' - theta0) is computed once per group on the tube box.
  sub     SubP: (c, h, eg, N, m): a sub-box (offset c in the tube box, half-widths h) of group eg, with the winding N
          (recomputed from the kernel's own models at the sub-box centre) and the bound m >= ||v0 + 2 pi G N||.

Usage (prototype on F6's record of the driver, synthetic targets):
  python3 kernel_atlas/generators/seed_t1prime.py --tube-level 4 --lin-level 2 --sub-level 6 --nsub 8 --emit DIR
"""
import argparse, itertools, json, math, os, sys, time
from fractions import Fraction as Fr
import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '../..'))
sys.path.insert(0, HERE)
import seed_c1 as S
import seed_transfer as X
from seed_c1 import SC, PP, CT, const, ZERO, lin, add, sub, addRho, re, im, sumT, boundOK, bnd, cdivN, mb, NT, \
    isqrtUp, gz, smul, signOK, rnd2, rndk, zmul, termB, rerr, QPAIR, ratCeilN, cisRound, cisRem

NTS = 20                      # Taylor order of the small-angle exponentials
PAIRS = [(a, b) for a in range(6) for b in range(a + 1, 6)]
PA = [a for a, b in PAIRS]
PB = [b for a, b in PAIRS]


def pidx15(a, b): return a * (11 - a) // 2 + (b - a - 1)


assert all(pidx15(a, b) == p for p, (a, b) in enumerate(PAIRS))


def gi(l, i): return l[i] if 0 <= i < len(l) else 0
def gn(l, i): return l[i] if 0 <= i < len(l) else 0
def gz2(l, i): return l[i] if 0 <= i < len(l) else (0, 0)
def gT(l, i): return l[i] if 0 <= i < len(l) else const(ZERO)
def gL(l, i): return l[i] if 0 <= i < len(l) else []


def dotN(n, x, y): return sum(gi(x, e) * gi(y, e) for e in range(n))
def dot36(x, y): return dotN(36, x, y)


# ------------------------------------------------------------------------------------------- Poly.lean with nT
def ex0(A): return Fr(A.cg(0)[0], SC)
def expOKn(A, n): return abs(ex0(A)) / (n + 1) <= Fr(1, 2)
def epsOf(x, n): return ratCeilN((cisRem(x, n) + Fr(1, SC)) * SC)


def expIn(h, A, n):
    E = cisRound(ex0(A), n, PP)
    L1, L2, rho, eps = S.L1r(h, A), S.L2r(h, A), A.rho, epsOf(ex0(A), n)
    D6 = 6 * (1 << (2 * PP))
    r = (rho + cdivN(L1 * (L2 + rho), PP) + cdivN((L2 + rho) ** 2, PP + 1) + ((L1 + L2 + rho) ** 3 + (D6 - 1)) // D6
         + cdivN(eps * ((1 << PP) + L1 + L2), PP) + cdivN(eps * L1 ** 2, 2 * PP + 1) + rerr(h))
    c = []
    for k in range(15):
        if k == 0: c.append(E)
        elif k <= 4: c.append(rnd2(zmul(E, (0, A.cg(k)[0]))))
        else:
            a, b = QPAIR[k]
            inner = (-(A.cg(a + 1)[0] * A.cg(b + 1)[0] * (1 if a == b else 2)), 2 * SC * A.cg(k)[0])
            c.append(rndk(PP + (PP + 1), zmul(E, inner)))
    return CT(c, r)


# ------------------------------------------------------------------------------------------- T1P.lean: the record
def horZ(z):
    return all(sum(gi(z, 6 * a + c) for c in range(6)) == 0 for a in range(6)) and \
        all(sum(gi(z, 6 * a + c) for a in range(6)) == 0 for c in range(6))


def gramZ(Z, j, k): return dot36(gL(Z, j), gL(Z, k))


def gLo(Z, m, D, lam):
    return all(lam * D * D <= SC * (2 * gramZ(Z, j, j) - sum(abs(gramZ(Z, j, k)) for k in range(m))) for j in range(m))


def gUp21(Z, D, nn):
    return all((1 << (2 * PP)) * sum(abs(gramZ(Z, j, k)) for k in range(21)) <= nn * nn * D * D for j in range(21))


def thP(Pg, p, c): return gi(Pg, 6 * PA[p] + c) - gi(Pg, 6 * PB[p] + c)


def recOK(R, why=False):
    checks = [
        ('T hor', lambda: all(horZ(gL(R['Tn'], k)) for k in range(4))),
        ('T gram', lambda: gLo(R['Tn'], 4, R['DT'], R['lamT'])),
        ('cT', lambda: (1 << (3 * PP)) <= R['cT'] ** 2 * R['lamT']),
        ('B in N', lambda: all(horZ(gL(R['Zb'], j)) and all(dot36(gL(R['Tn'], k), gL(R['Zb'], j)) == 0 for k in range(4))
                               for j in range(21))),
        ('B gram', lambda: gLo(R['Zb'], 21, SC, R['lamB'])),
        ('cN', lambda: (1 << (3 * PP)) <= R['cn'] ** 2 * R['lamB']),
        ('nN', lambda: gUp21(R['Zb'], SC, R['nn'])),
        ('rho', lambda: all((1 << (2 * PP)) * sum(gi(gL(R['Zb'], j), e) ** 2 for j in range(21)) <=
                            gn(R['rho'], e) ** 2 * (1 << (2 * PP)) for e in range(36))),
        ('KP', lambda: all(expOKn(const((thP(R['Pg'], p, c), 0)), NT) and
                           gz2(gL(R['KP'], p), c) == cisRound(Fr(thP(R['Pg'], p, c), SC), NT, PP) and
                           epsOf(Fr(thP(R['Pg'], p, c), SC), NT) <= R['kpe'] for p in range(15) for c in range(6))),
        ('KQ', lambda: all(abs(Fr(gi(R['Pg'], e), SC)) / (NT + 1) <= Fr(1, 2) and
                           gz2(R['KQ'], e) == cisRound(Fr(gi(R['Pg'], e), SC), NT, PP) and
                           epsOf(Fr(gi(R['Pg'], e), SC), NT) <= R['kqe'] for e in range(36))),
        ('DT>0', lambda: R['DT'] > 0),
    ]
    for k, f in checks:
        if not f(): return (False, k) if why else False
    return (True, None) if why else True


# ------------------------------------------------------------------------------------------- T1P.lean: A2 (LinD)
def th0Z(R, c, p, e6):
    a, b = PA[p], PB[p]
    return gi(R['Pg'], 6 * a + e6) + gi(c, 6 * a + e6) - gi(R['Pg'], 6 * b + e6) - gi(c, 6 * b + e6)


def E0(R, c, p, e6): return cisRound(Fr(th0Z(R, c, p, e6), SC), NT, PP)


def wZ(R, Lc, Yk, p, c):
    z = E0(R, Lc, p, c)
    return -gi(Yk, 2 * p) * z[1] + gi(Yk, 2 * p + 1) * z[0]


def yjZ(R, Lc, Yk, e):
    a, c = divmod(e, 6)
    t = 0
    for b in range(6):
        if a < b: t += wZ(R, Lc, Yk, pidx15(a, b), c)
        elif b < a: t += -wZ(R, Lc, Yk, pidx15(b, a), c)
    return t


def yaZ(Yk, a):
    t = 0
    for b in range(6):
        if a < b: p = pidx15(a, b)
        elif b < a: p = pidx15(b, a)
        else: continue
        t += abs(gi(Yk, 2 * p)) + abs(gi(Yk, 2 * p + 1))
    return t


def babZ(Bj, a): return sum(abs(gi(Bj, 6 * a + c)) for c in range(6))


def eps0Max(R, c): return max(epsOf(Fr(th0Z(R, c, p, e6), SC), NT) for p in range(15) for e6 in range(6))


def abarZ(Zb, YJ, Y, eE, k, j):
    d = (1 << (3 * PP)) if k == j else 0
    return abs(d - dot36(gL(YJ, k), gL(Zb, j))) + eE * sum(yaZ(gL(Y, k), a) * babZ(gL(Zb, j), a) for a in range(6))


def epsSq(R, Ld):
    YJ = [[yjZ(R, Ld['c'], gL(Ld['Y'], k), e) for e in range(36)] for k in range(21)]
    eE = eps0Max(R, Ld['c'])
    return sum(abarZ(R['Zb'], YJ, Ld['Y'], eE, k, j) ** 2 for k in range(21) for j in range(21))


def yRow(Y, k): return sum(abs(dotN(30, gL(Y, k), gL(Y, l))) for l in range(21))
def yOK(Y, yn): return all(yRow(Y, k) <= yn * yn for k in range(21))


def linOK(R, Ld, why=False):
    checks = [('expOK', lambda: all(abs(Fr(th0Z(R, Ld['c'], p, e6), SC)) / (NT + 1) <= Fr(1, 2)
                                    for p in range(15) for e6 in range(6))),
              ('yN', lambda: yOK(Ld['Y'], Ld['yn'])),
              ('eps0', lambda: epsSq(R, Ld) <= (Ld['eps0'] * (1 << (2 * PP))) ** 2)]
    for k, f in checks:
        if not f(): return (False, k) if why else False
    return (True, None) if why else True


# ------------------------------------------------------------------------------------------- T1P.lean: the tube box
def tauT(R, ec, h, e):
    DT = R['DT']
    c0 = sum(gi(ec, k) * gi(gL(R['Tn'], k), e) for k in range(4)) // DT
    c = [(c0, 0)] + [((gi(gL(R['Tn'], k), e) * SC) // DT, 0) for k in range(4)]
    return CT(c, 1 + sum(cdivN(gn(h, k), PP) for k in range(4)))


def nuOK(R, nu):
    for m in range(15):
        z = [gT(nu, e).cg(m)[0] for e in range(36)]
        if not (horZ(z) and all(dot36(gL(R['Tn'], k), z) == 0 for k in range(4))): return False
    return True


def dlT(R, D):
    return [addRho(add(tauT(R, D['ec'], D['hb'], e), re(gT(D['nu'], e))), R['pe']) for e in range(36)]


def dT(dl, p, c): return sub(gT(dl, 6 * PA[p] + c), gT(dl, 6 * PB[p] + c))


def phiR(F):
    out = []
    for e in range(36):
        a, b = divmod(e, 6)
        if a < b: out.append(re(gT(F, pidx15(a, b))))
        elif b < a: out.append(im(gT(F, pidx15(b, a))))
        else: out.append(const(ZERO))
    return out


LNUM, LDEN = 34642, 10000
assert LNUM ** 2 >= 12 * LDEN ** 2


def stepOK(yn, bphi, eps0, nn, su, r, r2):
    G = SC
    return (yn * bphi * G ** 3 * LDEN + eps0 * r * G ** 3 * LDEN + yn * LNUM * nn * su * r * G + yn * LNUM * nn * nn * r * r
            <= r2 * G ** 4 * LDEN)


def iterOK(R, Ld, D):
    rs = D['rs']
    return R['cn'] * R['n0'] + R['cn'] * D['snu'] <= gn(rs, 0) * SC and \
        all(stepOK(Ld['yn'], D['bphi'], Ld['eps0'], R['nn'], D['su'], rs[k], rs[k + 1]) for k in range(len(rs) - 1))


def rK(D): return gn(D['rs'], len(D['rs']) - 1)
def suL(dl, c): return [sub(dl[e], const((gi(c, e), 0))) for e in range(36)]
def nuL(nu): return [re(gT(nu, e)) for e in range(36)]


def tubeParts(R, D):
    h = D['hb']
    dl = dlT(R, D)
    d = [[dT(dl, p, c) for c in range(6)] for p in range(15)]
    E = [[addRho(smul(h, gz2(gL(R['KP'], p), c), expIn(h, d[p][c], NTS)), R['kpe']) for c in range(6)] for p in range(15)]
    F = [sumT(E[p]) for p in range(15)]
    return dl, d, E, F


def tubeOK(R, Ld, D, parts=None, why=False):
    h = D['hb']
    dl, d, E, F = parts or tubeParts(R, D)
    checks = [('nu in N', lambda: nuOK(R, D['nu'])),
              ('expOK', lambda: all(expOKn(d[p][c], NTS) for p in range(15) for c in range(6))),
              ('bphi', lambda: boundOK(h, D['bphi'], phiR(F))),
              ('su', lambda: boundOK(h, D['su'], suL(dl, Ld['c']))),
              ('snu', lambda: boundOK(h, D['snu'], nuL(D['nu']))),
              ('iter', lambda: iterOK(R, Ld, D))]
    for k, f in checks:
        if not f(): return (False, k) if why else False
    return (True, None) if why else True


def wqT(R, D, dl):
    """dl_e plus the normal-tube remainder rho_e r_K (encloses Q_e - Pg_e)."""
    r = rK(D)
    return [addRho(dl[e], cdivN(gn(R['rho'], e) * r, PP)) for e in range(36)]


def qmT(R, D, dl): return [add(const((gi(R['Pg'], e), 0)), w) for e, w in enumerate(wqT(R, D, dl))]


def kmT(R, D, dl):
    h = D['hb']
    return [addRho(smul(h, gz2(R['KQ'], e), expIn(h, w, NTS)), R['kqe']) for e, w in enumerate(wqT(R, D, dl))]


def sgnOK(h, km, sg):
    return X.sign3Any(h, sg['o'], X.blockT(km, sg['g'], sg['rows'], sg['cols'], 0, 3)) and \
        X.sign3Any(h, -sg['o'], X.blockT(km, sg['g'], sg['rows'], sg['cols'], 3, 0))


def gS(l, i): return l[i] if 0 <= i < len(l) else dict(g=0, rows=[], cols=[], o=0)


def thG(h, qm, sg):
    T = dict(g=sg['g'], rows=sg['rows'], cols=sg['cols'], N=[], G=[], qg=0, m=0)
    return [X.thpT(h, qm, T, k) for k in range(4)]


def pad36(vl): return [vl[e] if e < 4 else const(ZERO) for e in range(36)]
def bound4OK(h, n, vl): return boundOK(h, n, pad36(vl))      # the same integers (zero entries add nothing)


def gE(l, i): return l[i] if 0 <= i < len(l) else dict(sg=0, G=[], qg=0, bl=dict(th0=[], Mth=[], o=0), rl=0)


def vG(h, th, G, Bl):
    y = [lin(h, [(X.wT(1), gT(th, k)), (X.wT(1), const((-gi(Bl['th0'], k), 0)))]) for k in range(4)]
    return [lin(h, [((gi(G, 4 * i + k), 0), y[k]) for k in range(4)]) for i in range(4)]


def vS(h, v0, G, N):
    tp = addRho(const((S.TWO_PI_Z, 0)), 2)
    return [lin(h, [(X.wT(1), gT(v0, i)), ((sum(gi(G, 4 * i + k) * gi(N, k) for k in range(4)), 0), tp)])
            for i in range(4)]


def egOK(sgns, E):
    g = gS(sgns, E['sg'])
    return (E['sg'] < len(sgns) and g['g'] < 4 and E['qg'] < SC and X.qOK(E['G'], E['bl']['Mth'], E['qg']) and
            g['o'] == E['bl']['o'])


def boxIn(h, c, h2): return all(abs(gi(c, l)) + gn(h2, l) <= gn(h, l) for l in range(4))


def subPOK(D, V, egs, s, why=False):
    if not boxIn(D['hb'], s['c'], s['h']): return (False, 'boxIn') if why else False
    if not s['eg'] < len(egs): return (False, 'group') if why else False
    E = gE(egs, s['eg'])
    if not s['m'] * SC < (SC - E['qg']) * E['rl']: return (False, 'm<(1-q)r') if why else False
    ok = bound4OK(s['h'], s['m'], vS(s['h'], X.shiftL(s['c'], s['h'], V[s['eg']]), E['G'], s['N']))
    return (ok, None if ok else 'bound') if why else ok


def vGL(R, D, qm, sgns, egs):
    return [vG(D['hb'], thG(D['hb'], qm, gS(sgns, E['sg'])), E['G'], E['bl']) for E in egs]


def tubeFull(R, Ld, D, sgns, egs, subs):
    parts = tubeParts(R, D)
    if not tubeOK(R, Ld, D, parts): return False
    w = wqT(R, D, parts[0])
    if not all(expOKn(w[e], NTS) for e in range(36)): return False
    qm, km = qmT(R, D, parts[0]), kmT(R, D, parts[0])
    if not all(sgnOK(D['hb'], km, g) for g in sgns): return False
    if not all(egOK(sgns, E) for E in egs): return False
    V = vGL(R, D, qm, sgns, egs)
    return all(subPOK(D, V, egs, s) for s in subs)


# ------------------------------------------------------------------------------------------- choosing the bounds
def least_bound(h, res):
    n, _ = S.boundN(h, res)
    while not boundOK(h, n, res): n += 1
    return n


def least_eps0(R, Ld):
    s = epsSq(R, Ld)
    e = -((-isqrtUp(s)) // (1 << (2 * PP)))
    while not (s <= (e * (1 << (2 * PP))) ** 2): e += 1
    return e


def least_step(yn, bphi, eps0, nn, su, r):
    G = SC
    num = yn * bphi * G ** 3 * LDEN + eps0 * r * G ** 3 * LDEN + yn * LNUM * nn * su * r * G + yn * LNUM * nn * nn * r * r
    return -((-num) // (G ** 4 * LDEN))


def choose_tube_bounds(R, Ld, D, iters=40):
    h = D['hb']
    parts = tubeParts(R, D)
    dl, d, E, F = parts
    D['bphi'] = least_bound(h, phiR(F))
    D['su'] = least_bound(h, suL(dl, Ld['c']))
    D['snu'] = least_bound(h, nuL(D['nu']))
    r = -((-(R['cn'] * R['n0'] + R['cn'] * D['snu'])) // SC)
    rs = [r]
    for _ in range(iters):
        r2 = least_step(Ld['yn'], D['bphi'], Ld['eps0'], R['nn'], D['su'], r)
        if r2 >= r: break
        rs.append(r2); r = r2
        if len(rs) > 2 and rs[-1] * 1.01 > rs[-2]: break
    D['rs'] = rs
    return parts


# ------------------------------------------------------------------------------------------- the record
F6PHI = np.array([[2 * math.pi * ((j * k) % 6) / 6 for k in range(6)] for j in range(6)])
PH36 = [[(36 if a == b else 0) - (6 if a // 6 == b // 6 else 0) - (6 if a % 6 == b % 6 else 0) + 1 for b in range(36)]
        for a in range(36)]                                                  # 36 * (horizontal projector)


class Lattice:
    """The lattice N cap Z^36 (grid units) of a frame: an LLL-reduced basis and Babai rounding onto it."""

    def __init__(self, Tn):
        import flint
        C = [[1 if e // 6 == a else 0 for e in range(36)] for a in range(6)] + \
            [[1 if e % 6 == c else 0 for e in range(36)] for c in range(6)] + [list(r) for r in Tn]
        W = 1 << 256
        A = [[1 if i == j else 0 for j in range(36)] + [W * C[r][i] for r in range(len(C))] for i in range(36)]
        Lb = flint.fmpz_mat(A).lll()
        rows = [[int(Lb[i, j]) for j in range(36 + len(C))] for i in range(36)]
        self.L = [r[:36] for r in rows if all(x == 0 for x in r[36:])]
        assert len(self.L) == 21, 'lattice rank %d' % len(self.L)
        Lm = flint.fmpq_mat(self.L)
        self.Minv = (Lm * Lm.transpose()).inv() * Lm                         # 21 x 36: coordinates of a vector of N

    def babai(self, t):
        """A lattice vector near the integer 36-vector t (exactly horizontal and orthogonal to T)."""
        import flint
        c = self.Minv * flint.fmpq_mat(36, 1, [int(x) for x in t])
        k = [int((c[i, 0] * 2 + 1).floor()) // 2 for i in range(21)]
        return [sum(k[i] * self.L[i][e] for i in range(21)) for e in range(36)]


class Record:
    """The kernel data of a full-matrix record (P on the grid, exact integer frame, grid basis of N)."""

    def __init__(self, phi, R, Tint=None):
        sys.path.insert(0, os.path.join(ROOT, 'proof/atlas'))
        from ballrecord import BallRecord
        import warnings
        warnings.filterwarnings('ignore')
        self.phi = np.asarray(phi, float).reshape(36); self.R = R
        B = BallRecord(self.phi, Tint=Tint)
        self.B = B
        rH, n0 = B.normal_bound(R)
        rec = B.rec
        from flint import arb
        dT = float(np.abs(np.array([[float(abs(rec.Tb[e, k] - arb(float(rec.Tbn[e, k]))).upper()) for k in range(4)]
                                    for e in range(36)])).sum())
        self.rH = rH; self.n0f = n0 + dT * rH                                 # the driver's n (>= ballrecord's n0)
        Tint = np.asarray(rec.Tint, np.int64).reshape(36, 4)
        Tn = [[sum(PH36[a][b] * int(Tint[b, k]) for b in range(36)) for a in range(36)] for k in range(4)]
        DT = 36 * (1 << 30)
        for k in range(4):
            assert all(Fr(Tn[k][e], DT) == rec.TB[k][e] for e in range(36))
        g = DT
        for row in Tn:
            for x in row: g = math.gcd(g, x)
        self.Tn = [[x // g for x in row] for row in Tn]; self.DT = DT // g
        self.Tf = np.array(self.Tn, float).T / self.DT                          # 36 x 4
        self.lat = Lattice(self.Tn)
        u, sv, vt = np.linalg.svd(np.array(rec.PNn, float))
        Nf = u[:, sv > 0.5]
        assert Nf.shape[1] == 21
        self.Zb = [self.lat.babai([round(x * SC) for x in Nf[:, j]]) for j in range(21)]
        self.Bf = np.array(self.Zb, float).T / SC                               # 36 x 21
        self.data = self._kernel_data()

    def _kernel_data(self):
        Zb = self.Zb
        GT = [[gramZ(self.Tn, j, k) for k in range(4)] for j in range(4)]
        lo = min(Fr(2 * GT[j][j] - sum(abs(x) for x in GT[j]), self.DT ** 2) for j in range(4))
        lamT = int(lo * SC)
        cT = isqrtUp(-((-(1 << (3 * PP))) // lamT))
        GB = [[gramZ(Zb, j, k) for k in range(21)] for j in range(21)]
        lo = min(Fr(2 * GB[j][j] - sum(abs(x) for x in GB[j]), SC ** 2) for j in range(21))
        lamB = int(lo * SC)
        cn = isqrtUp(-((-(1 << (3 * PP))) // lamB))
        hi = max(sum(abs(x) for x in GB[j]) for j in range(21))
        nn = isqrtUp(hi)
        rho = [isqrtUp(sum(Zb[j][e] ** 2 for j in range(21))) for e in range(36)]
        Pg = [int(Fr(float(x)) * SC) for x in self.phi]
        assert all(Fr(Pg[e], SC) == Fr(float(self.phi[e])) for e in range(36)), 'P not on the grid'
        KP = [[cisRound(Fr(thP(Pg, p, c), SC), NT, PP) for c in range(6)] for p in range(15)]
        kpe = max(epsOf(Fr(thP(Pg, p, c), SC), NT) for p in range(15) for c in range(6))
        KQ = [cisRound(Fr(Pg[e], SC), NT, PP) for e in range(36)]
        kqe = max(epsOf(Fr(Pg[e], SC), NT) for e in range(36))
        n0 = math.ceil(self.n0f * SC * (1 + 1e-12))
        R = dict(Pg=Pg, pe=0, Tn=self.Tn, DT=self.DT, Zb=Zb, lamT=lamT, cT=cT, lamB=lamB, cn=cn, nn=nn, rho=rho, n0=n0,
                 KP=KP, kpe=kpe, KQ=KQ, kqe=kqe)
        ok, why = recOK(R, why=True)
        assert ok, why
        return R

    # ---- float helpers (predictors only)
    def phi_res(self, Q):
        H = np.exp(1j * np.asarray(Q).reshape(6, 6))
        r = np.zeros(30); J = np.zeros((30, 36))
        for p, (a, b) in enumerate(PAIRS):
            z = H[a] * np.conj(H[b]); s = z.sum()
            r[p] = s.real; r[15 + p] = s.imag
            d = 1j * z
            J[p, 6 * a:6 * a + 6] += d.real; J[p, 6 * b:6 * b + 6] -= d.real
            J[15 + p, 6 * a:6 * a + 6] += d.imag; J[15 + p, 6 * b:6 * b + 6] -= d.imag
        return r, J

    def solve_x(self, eta, x0=None, it=30):
        q0 = self.phi + self.Tf @ eta
        x = np.zeros(21) if x0 is None else np.array(x0, float)
        for _ in range(it):
            r, J = self.phi_res(q0 + self.Bf @ x)
            if np.abs(r).max() < 1e-15: break
            x -= np.linalg.lstsq(J @ self.Bf, r, rcond=None)[0]
        r, J = self.phi_res(q0 + self.Bf @ x)
        assert np.abs(r).max() < 1e-12, 'Gauss-Newton failed'
        return x, J

    def predictor(self, eta_c, eps=1e-4):
        """x~(eta_c + u) = x_c + g u + u^T H u / 2 (floats)."""
        xc, J = self.solve_x(eta_c)
        def d1(x, J): return -np.linalg.pinv(J @ self.Bf) @ (J @ self.Tf)
        g = d1(xc, J)
        Hm = np.zeros((21, 4, 4))
        for l in range(4):
            e = np.zeros(4); e[l] = eps
            xp, Jp = self.solve_x(eta_c + e, xc); xm, Jm = self.solve_x(eta_c - e, xc)
            Hm[:, :, l] = (d1(xp, Jp) - d1(xm, Jm)) / (2 * eps)
        Hm = 0.5 * (Hm + np.swapaxes(Hm, 1, 2))
        return xc, g, Hm, J

    def hadamard(self, eta):
        x, _ = self.solve_x(eta)
        return (self.phi + self.Tf @ eta + self.Bf @ x).reshape(6, 6)


QM = [(0, 0), (0, 1), (0, 2), (0, 3), (1, 1), (1, 2), (1, 3), (2, 2), (2, 3), (3, 3)]


def lin_data(rec, ec):
    """A2 data at the eta point ec (grid): c = the float delta there (grid), Y = (J N_b)^+, yn, eps0."""
    eta = np.array(ec, float) / SC
    x, _ = rec.solve_x(eta)
    delta = rec.Tf @ eta + rec.Bf @ x
    c = [gz(v) for v in delta]
    _, J = rec.phi_res(rec.phi + np.array(c, float) / SC)
    Y = np.linalg.pinv(J @ rec.Bf)
    Yz = [[0] * 30 for _ in range(21)]
    for k in range(21):
        for p in range(15):
            Yz[k][2 * p] = gz(Y[k, p]); Yz[k][2 * p + 1] = gz(Y[k, 15 + p])
    Ld = dict(c=c, Y=Yz, yn=isqrtUp(max(yRow(Yz, k) for k in range(21))), eps0=0)
    Ld['eps0'] = least_eps0(rec.data, Ld)
    assert linOK(rec.data, Ld)
    return Ld


def tube_data(rec, Ld, ec, hb):
    """A tube box: centre ec (grid, eta), half-widths hb (grid); the predictor nu~ = N_b x~ rounded onto the lattice
    (each coefficient vector exactly in N); bounds chosen."""
    eta_c = np.array(ec, float) / SC
    xc, g, Hm, _ = rec.predictor(eta_c)
    coefs = [xc] + [g[:, k] for k in range(4)] + [Hm[:, a, a] / 2 if a == b else Hm[:, a, b] for a, b in QM]
    vecs = [rec.lat.babai([round(v * SC) for v in rec.Bf @ cf]) for cf in coefs]
    nu = [CT([(vecs[m][e], 0) for m in range(15)], 0) for e in range(36)]
    D = dict(ec=list(ec), hb=list(hb), nu=nu, bphi=0, su=0, snu=0, rs=[0])
    parts = choose_tube_bounds(rec.data, Ld, D)
    return D, parts


# ------------------------------------------------------------------------------------------- synthetic targets
def psi_f(X3):
    perm = sum(X3[0, a] * X3[1, b] * X3[2, c] for a, b, c in itertools.permutations(range(3)))
    return perm * np.linalg.det(X3) ** 2 * np.prod(np.conj(X3))


def best_corner(H):
    sys.path.insert(0, os.path.join(ROOT, 'proof/seed_atlas/prototype'))
    from seedball import dist_to_edge
    best = None
    for I in itertools.combinations(range(6), 3):
        for J in itertools.combinations(range(6), 3):
            Ic = [k for k in range(6) if k not in I]; Jc = [k for k in range(6) if k not in J]
            M = H[np.ix_(list(I) + Ic, list(J) + Jc)]; M = M / M[:, :1]; M = M / M[:1, :]
            o = np.sign(psi_f(M[:3, 3:]).imag)
            if np.sign(psi_f(M[3:, :3]).imag) != -o: continue
            th = np.angle([M[1, 1], M[1, 2], M[2, 1], M[2, 2]])
            e = dist_to_edge(th)
            if best is None or e > best[0]: best = (e, list(I) + Ic, list(J) + Jc)
    return best


def synth_target(rec, eta_c):
    """A prototype seed ball (radius free) at the best matched corner of the record's Hadamard at eta_c, as piece A's
    F6 fixture: theta0 on the grid in (-pi, pi], Mth = V S^-1 of the seed ball's DQ."""
    sys.path.insert(0, os.path.join(ROOT, 'proof/seed_atlas/prototype'))
    from seedball import SeedBall
    Q = rec.hadamard(eta_c)
    H = np.exp(1j * Q)
    e, rI, rJ = best_corner(H)
    M = H[np.ix_(rI, rJ)]; M = M / M[:, :1]; M = M / M[:1, :]
    th = np.angle([M[1, 1], M[1, 2], M[2, 1], M[2, 2]])
    ph = np.angle(np.concatenate([M[1, 3:], M[2, 3:]])); pv = np.angle(np.concatenate([M[3:, 1], M[3:, 2]]))
    sb = SeedBall(th, ph, pv)
    Us, Sv, Vt = np.linalg.svd(sb.T, full_matrices=False)
    Mth = Vt.T / Sv[None, :]
    o = int(np.sign(psi_f(M[:3, 3:]).imag))
    Mz = [gz(x) for x in Mth.reshape(16)]
    Gi = np.linalg.inv(np.array(Mz, float).reshape(4, 4) / SC)
    Gz = [gz(x) for x in Gi.reshape(16)]
    Bl = dict(th0=[gz(x) for x in th], Mth=Mz, P=[], U=[], n=0, o=o)
    T = dict(g=0, rows=rI, cols=rJ, N=[0] * 4, G=Gz, qg=X.qMin(Gz, Mz), m=0)
    Lc = np.zeros((4, 36))
    i0 = rI[0]; j0 = rJ[0]
    for k, (a, b) in enumerate([(rI[1], rJ[1]), (rI[1], rJ[2]), (rI[2], rJ[1]), (rI[2], rJ[2])]):
        Lc[k, 6 * a + b] += 1; Lc[k, 6 * a + j0] -= 1; Lc[k, 6 * i0 + b] -= 1; Lc[k, 6 * i0 + j0] += 1
    amp = np.linalg.norm(np.linalg.inv(Mth) @ Lc, 2)
    return T, Bl, amp, dict(edge=e, rows=rI, cols=rJ)


def winding(h, q2, T, Bl):
    """N from the kernel's own models at the sub-box centre: theta' + 2 pi N closest to theta0_l."""
    N = []
    for k in range(4):
        thp = X.thpT(h, q2, dict(T, N=[0] * 4), k).cg(0)[0] / SC
        N.append(int(round((Bl['th0'][k] / SC - thp) / (2 * math.pi))))
    return N


# ------------------------------------------------------------------------------------------- Lean emitter
L = S


def lean_ll(l): return '[' + ',\n    '.join(L.lean_int_list(r) for r in l) + ']'
def lean_zl(l): return '[' + ', '.join(L.lean_z2(z) for z in l) + ']'


def lean_rec(name, R):
    return ('noncomputable def %s : RecP where\n  Pg := %s\n  pe := %d\n  Tn := %s\n  DT := %d\n  Zb := %s\n'
            '  lamT := %d\n  cT := %d\n  lamB := %d\n  cn := %d\n  nn := %d\n  rho := %s\n  n0 := %d\n  KP := %s\n'
            '  kpe := %d\n  KQ := %s\n  kqe := %d\n') % (
        name, L.lean_int_list(R['Pg']), R['pe'], lean_ll(R['Tn']), R['DT'], lean_ll(R['Zb']), R['lamT'], R['cT'],
        R['lamB'], R['cn'], R['nn'], L.lean_nat_list(R['rho']), R['n0'],
        '[' + ',\n    '.join(lean_zl(r) for r in R['KP']) + ']', R['kpe'], lean_zl(R['KQ']), R['kqe'])


def lean_lin(name, Ld):
    return 'noncomputable def %s : LinD where\n  c := %s\n  Y := %s\n  yn := %d\n  eps0 := %d\n' % (
        name, L.lean_int_list(Ld['c']), lean_ll(Ld['Y']), Ld['yn'], Ld['eps0'])


def lean_tube(name, D):
    return ('noncomputable def %s : TubeD where\n  ec := %s\n  hb := %s\n  nu := %s\n  bphi := %d\n  su := %d\n'
            '  snu := %d\n  rs := %s\n') % (
        name, L.lean_int_list(D['ec']), L.lean_nat_list(D['hb']), L.lean_ct_list(D['nu']), D['bphi'], D['su'],
        D['snu'], L.lean_nat_list(D['rs']))


def lean_sgn(g):
    return '⟨%d, %s, %s, %d⟩' % (g['g'], L.lean_nat_list(g['rows']), L.lean_nat_list(g['cols']), g['o'])


def lean_eg(E):
    b = '⟨%s, %s, [], [], 0, %d⟩' % (L.lean_int_list(E['bl']['th0']), L.lean_int_list(E['bl']['Mth']), E['bl']['o'])
    return '⟨%d, %s, %d, %s, %d⟩' % (E['sg'], L.lean_int_list(E['G']), E['qg'], b, E['rl'])


def lean_sub(s):
    return '⟨%s, %s, %d, %s, %d⟩' % (L.lean_int_list(s['c']), L.lean_nat_list(s['h']), s['eg'], L.lean_int_list(s['N']),
                                    s['m'])


# ------------------------------------------------------------------------------------------- driver
def eta_grid_scale(rec, kmax=24):
    E = math.ceil(rec.rH * (1 + 1e-6) * SC)
    return -((-E) >> kmax) << kmax


def box_geom(Ez, m, I):
    k = 1 << m
    return [Ez * (2 * i + 1 - k) // k for i in I], [Ez // k] * 4


def shell_boxes(rec, Ez, m):
    """Level-m boxes (units eta_scale) that may meet the shell R^2 - n^2 <= ||T eta||^2 <= R^2 (float, slack)."""
    k = 1 << m
    out = []
    nT = np.linalg.norm(rec.Tf, 2)
    for I in itertools.product(range(k), repeat=4):
        ec, h = box_geom(Ez, m, I)
        c = np.array(ec, float) / SC; hd = 2 * h[0] / SC
        v = np.linalg.norm(rec.Tf @ c)
        emin = np.linalg.norm(np.maximum(np.abs(c) - h[0] / SC, 0))
        if v - nT * hd <= rec.R + 1e-9 and v + nT * hd >= math.sqrt(rec.R ** 2 - rec.n0f ** 2) - 1e-9 and emin <= rec.rH:
            out.append(I)
    return out


def shell_sub(rec, ec, hs, c):
    """Does the sub-box (offset c, half-width hs) of the tube box at ec possibly meet the shell (float, slack)?"""
    x = (np.array(ec, float) + np.array(c, float)) / SC; hd = 2 * hs / SC
    v = np.linalg.norm(rec.Tf @ x); nT = np.linalg.norm(rec.Tf, 2)
    return v - nT * hd <= rec.R and v + nT * hd >= math.sqrt(rec.R ** 2 - rec.n0f ** 2)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--R', type=float, default=0.125)
    ap.add_argument('--tube-level', type=int, default=4)
    ap.add_argument('--lin-level', type=int, default=2)
    ap.add_argument('--tube', default='', help='tube box index i,j,k,l (default: the first shell box)')
    ap.add_argument('--sub-level', type=int, default=6)
    ap.add_argument('--nsub', type=int, default=8)
    ap.add_argument('--emit', default='')
    ap.add_argument('--survey', type=int, default=0, help='survey r_K on this many shell tube boxes')
    a = ap.parse_args()
    t0 = time.time()
    rec = Record(F6PHI, a.R)
    R = rec.data
    print('F6 record R=%.4g: rH %.6g, n %.6g; lattice basis norms 2^%s; c_N %.8g, n_N %.8g, max rho %.4g (%.1f s)' % (
        a.R, rec.rH, rec.n0f, sorted(set(round(math.log2(math.sqrt(sum(x * x for x in v))), 1) for v in rec.lat.L)),
        R['cn'] / SC, R['nn'] / SC, max(R['rho']) / SC, time.time() - t0))
    Ez = eta_grid_scale(rec)
    mt = a.tube_level
    boxes = shell_boxes(rec, Ez, mt)
    print('level %d: %d shell boxes of %d' % (mt, len(boxes), (1 << mt) ** 4))
    if not a.tube:                                   # boxes on the shell first: |‖T eta_c‖ - R| smallest
        boxes.sort(key=lambda I: abs(np.linalg.norm(rec.Tf @ (np.array(box_geom(Ez, mt, I)[0], float) / SC)) - rec.R))
    sel = boxes[:a.survey] if a.survey else [tuple(int(x) for x in a.tube.split(',')) if a.tube else boxes[0]]
    for I in sel:
        ec, hb = box_geom(Ez, mt, I)
        # the A2 box: the level-lin ancestor's centre
        sh = mt - a.lin_level
        J = [i >> sh for i in I]
        ecl, _ = box_geom(Ez, a.lin_level, J)
        t1 = time.time()
        Ld = lin_data(rec, ecl)
        tl = time.time() - t1
        D, parts = tube_data(rec, Ld, ec, hb)
        ok, why = tubeOK(R, Ld, D, parts, why=True)
        print('tube %s (h %.4g; A2 at level %d: y_N %.4g eps0 %.3g, %.1f s): ok %s %s; bphi %.3g s_u %.3g s_nu %.3g;'
              ' r: %s (%.1f s)' % (I, hb[0] / SC, a.lin_level, Ld['yn'] / SC, Ld['eps0'] / SC, tl, ok, why or '',
                                    D['bphi'] / SC, D['su'] / SC, D['snu'] / SC,
                                    ' '.join('%.3g' % (r / SC) for r in D['rs']), time.time() - t1))
    if a.survey: return
    w = wqT(R, D, parts[0])
    assert all(expOKn(x, NTS) for x in w)
    qm, km = qmT(R, D, parts[0]), kmT(R, D, parts[0])
    eta_c = np.array(ec, float) / SC
    T1, Bl, amp, info = synth_target(rec, eta_c)
    sg = dict(g=T1['g'], rows=T1['rows'], cols=T1['cols'], o=Bl['o'])
    t1 = time.time()
    print('target: corner rows %s cols %s, o %d, edge %.3f, ||Mth^-1 L|| %.1f; tube-level signs %s (%.1f s)' % (
        info['rows'], info['cols'], Bl['o'], info['edge'], amp, sgnOK(hb, km, sg), time.time() - t1))
    ms = a.sub_level; k = 1 << (ms - mt)
    hs = hb[0] // k
    cands = [[(-k + 2 * j + 1) * hs for j in J] for J in itertools.product(range(k), repeat=4)]
    cands = [c for c in cands if shell_sub(rec, ec, hs, c)]
    nshell = len(cands)
    cands.sort(key=lambda c: sum(x * x for x in c))
    E = dict(sg=0, G=T1['G'], qg=T1['qg'], bl=Bl, rl=0)
    V = vGL(R, D, qm, [sg], [E])
    subs, mlist = [], []
    for c in cands[:a.nsub]:
        hsub = [hs] * 4
        q2 = X.shiftL(c, hsub, qm)
        N = winding(hsub, q2, T1, Bl)
        m = least_bound(hsub, pad36(vS(hsub, X.shiftL(c, hsub, V[0]), E['G'], N))); mlist.append(m)
        subs.append(dict(c=c, h=hsub, eg=0, N=N, m=m))
    E['rl'] = (-((-(max(mlist) * SC * 21 // 20)) // (SC - T1['qg'])) + (1 << 20) - 1) >> 20 << 20
    egs = [E]
    oks = [subPOK(D, V, egs, s, why=True) for s in subs]
    print('subs at level %d (h %.3g): %d of %d meet the shell; %d checked, r_l = %.4g (m max %.4g), mirror %s' % (
        ms, hs / SC, nshell, k ** 4, len(subs), E['rl'] / SC, max(mlist) / SC, set(oks)))
    D0 = dict(D); D0['rs'] = [0]
    qm0 = qmT(R, D0, parts[0])
    V0 = vGL(R, D0, qm0, [sg], [E])
    m0 = [least_bound(s['h'], pad36(vS(s['h'], X.shiftL(s['c'], s['h'], V0[0]), E['G'], s['N']))) for s in subs]
    print('  m with r_K = 0: %.4g..%.4g; with r_K: %.4g..%.4g' % (min(m0) / SC, max(m0) / SC, min(mlist) / SC,
                                                                 max(mlist) / SC))
    print('mirror tubeFull: %s (%.1f s total)' % (tubeFull(R, Ld, D, [sg], egs, subs), time.time() - t0))
    if a.emit:
        os.makedirs(a.emit, exist_ok=True)
        ns = sorted(set([0, 1, min(4, len(subs)), len(subs)]))
        with open(os.path.join(a.emit, 'Data.lean'), 'w') as f:
            f.write('import KernelAtlas.Seed.T1P\n\nnamespace NoFourMUBs.KernelAtlas.Seed.TestP\n\n'
                    'open NoFourMUBs.KernelAtlas.Seed\n\n')
            f.write(lean_rec('rec', R) + '\n' + lean_lin('lin', Ld) + '\n' + lean_tube('tube', D) + '\n')
            f.write('noncomputable def sgns : List SgnD := [%s]\n\n' % lean_sgn(sg))
            f.write('noncomputable def egs : List EllG := [%s]\n\n' % ', '.join(lean_eg(E) for E in egs))
            for n in ns:
                f.write('noncomputable def subs%d : List SubP := [%s]\n\n' % (n, ',\n  '.join(lean_sub(s) for s in subs[:n])))
            f.write('end NoFourMUBs.KernelAtlas.Seed.TestP\n')
        checks = [('Rec', 'recOK rec = true'), ('Lin', 'linOK rec lin = true'), ('Tube', 'tubeOK rec lin tube = true')] + \
            [('Full%d' % n, 'tubeFull rec lin tube sgns egs subs%d = true' % n) for n in ns]
        for nm, body in checks:
            with open(os.path.join(a.emit, 'Check%s.lean' % nm), 'w') as f:
                f.write('import KernelAtlas.Seed.TestP.Data\n\nnamespace NoFourMUBs.KernelAtlas.Seed.TestP\n\n'
                        'open NoFourMUBs.KernelAtlas.Seed\n\n')
                f.write('theorem ok%s : %s := by decide +kernel\n\nend NoFourMUBs.KernelAtlas.Seed.TestP\n' % (nm, body))
        print('emitted to', a.emit)


if __name__ == '__main__':
    main()
