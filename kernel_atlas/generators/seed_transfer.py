"""Kernel T1 / T2 boxes on the seed sphere (KERNEL_SEED.md section 6): exact Python mirrors of
`KernelAtlas/Seed/Core.lean` (coreOK, qModels, kModels), `Seed/T2.lean` (t2OK) and `Seed/T1.lean` (t1OK), the choice of
the bounds the kernel checks, and a Lean emitter.  Nothing here is trusted: the kernel re-checks every inequality.

Prototype usage (synthetic targets around a test ball, for timing):
  python3 kernel_atlas/generators/seed_transfer.py BALLS.json IDX --level 3 --box 7,3,3,3 --emit DIR
"""
import argparse, json, math, os, sys, time
import numpy as np

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import seed_c1 as S
from seed_c1 import SC, PP, CT, const, ZERO, ONE, lin, mul, conj, neg, add, addRho, sumT, im, signOK, boundOK, \
    isqrtUp, cdivN, monoW, gz, TWO_PI_Z

# ------------------------------------------------------------------------------------------- Core.lean mirror
def core(B, D):
    """(ok, qModels, kModels, reason) exactly as coreOK / qModels / kModels."""
    h = D['hb']
    th = [S.thetaT(B, D, k) for k in range(4)]
    if not all(S.expOK(t) for t in th): return False, None, None, 'expOK'
    e = [S.expI(h, t) for t in th]
    GH, GV = S.gramH(h, e), S.gramV(h, e)
    okH, eH, _, _ = S.sideK(h, GH, D['phH'], D['YH'], D['tubeH'])
    okV, eV, _, _ = S.sideK(h, GV, D['phV'], D['YV'], D['tubeV'])
    if not (okH and okV): return False, None, None, 'kraw'
    sH, sV = S.tubeT(D['phH'], eH), S.tubeT(D['phV'], eV)
    xyH, xyV = S.rowsT(h, sH), S.rowsT(h, sV)
    if not signOK(h, B['o'], S.psiT(h, xyH)): return False, None, None, 'signB'
    if not signOK(h, -B['o'], S.psiT(h, xyV)): return False, None, None, 'signV'
    Bm, C = S.BT(xyH), S.CT3(xyV)
    okD, Dm = S.forcedT(h, D['Xp'], D['A0'], S.ET(e), Bm, C)
    if not okD: return False, None, None, 'neumann'
    if not all(S.argOK(h, D['argA'][q], Dm[q]) for q in range(9)): return False, None, None, 'arg'
    argD = [S.argT(h, D['argA'][q], Dm[q]) for q in range(9)]
    qm = S.QT(h, th, sH, sV, argD)
    E = S.ET(e)
    km = []
    for q in range(36):
        j, k = divmod(q, 6)
        if j < 3 and k < 3: km.append(E[3 * j + k])
        elif j < 3: km.append(Bm[3 * j + (k - 3)])
        elif k < 3: km.append(C[3 * (j - 3) + k])
        else: km.append(Dm[3 * (j - 3) + (k - 3)])
    return True, qm, km, None


def gT(l, i): return l[i] if 0 <= i < len(l) else const(ZERO)
def gi(l, i): return l[i] if 0 <= i < len(l) else 0


# ------------------------------------------------------------------------------------------- permutations
def toI6(k): return k if k < 3 else 3 + (k - 3) % 3          # as sidx (toI6 k)
def pidx(l, a): return toI6(gi(l, a))


def wT(k): return (k * SC, 0)


# ------------------------------------------------------------------------------------------- T2.lean mirror
def t2src(T, e):
    a, b = divmod(e, 6)
    return 6 * pidx(T['cols'], b) + pidx(T['rows'], a) if T['tr'] else 6 * pidx(T['rows'], a) + pidx(T['cols'], b)


def x2T(h, T, qm, e):
    N = gi(T['N'], e)
    return lin(h, [(wT(-1 if T['cj'] else 1), gT(qm, t2src(T, e))),
                   (wT(1), addRho(const((N * TWO_PI_Z - gi(T['Pt'], e), 0)), 2 * abs(N)))])


def hor36T(h, X):
    R = [lin(h, [(wT(1), gT(X, 6 * a + b)) for b in range(6)]) for a in range(6)]
    C = [lin(h, [(wT(1), gT(X, 6 * a + b)) for a in range(6)]) for b in range(6)]
    Sm = lin(h, [(wT(1), gT(R, a)) for a in range(6)])
    return [lin(h, [(wT(36), gT(X, e)), (wT(-6), gT(R, e // 6)), (wT(-6), gT(C, e % 6)), (wT(1), Sm)])
            for e in range(36)]


def t2res(h, qm, T): return hor36T(h, [x2T(h, T, qm, e) for e in range(36)])
def t2OK(h, qm, T): return boundOK(h, 36 * T['nb'], t2res(h, qm, T))


# ------------------------------------------------------------------------------------------- T1.lean mirror
def gEntry(km, g, x, y):
    A = gT(km, 6 * y + x) if 2 <= g else gT(km, 6 * x + y)
    return conj(A) if g % 2 == 1 else A


def blockT(km, g, rows, cols, ro, co):
    return [gEntry(km, g, pidx(rows, q // 3 + ro), pidx(cols, q % 3 + co)) for q in range(9)]


def psi3T(h, L):
    M = lambda a, b: gT(L, 3 * a + b)
    m3 = lambda a, b, c: mul(h, mul(h, a, b), c)
    t1 = m3(M(0, 0), M(1, 1), M(2, 2)); t2 = m3(M(0, 0), M(1, 2), M(2, 1)); t3 = m3(M(0, 1), M(1, 0), M(2, 2))
    t4 = m3(M(0, 1), M(1, 2), M(2, 0)); t5 = m3(M(0, 2), M(1, 0), M(2, 1)); t6 = m3(M(0, 2), M(1, 1), M(2, 0))
    perm = sumT([t1, t2, t3, t4, t5, t6])
    det = sumT([t1, neg(t2), neg(t3), t4, t5, neg(t6)])
    pr = mul(h, mul(h, m3(M(0, 0), M(0, 1), M(0, 2)), m3(M(1, 0), M(1, 1), M(1, 2))), m3(M(2, 0), M(2, 1), M(2, 2)))
    return mul(h, mul(h, perm, mul(h, det, det)), conj(pr))


def qpT(qm, g, rows, cols, a, b):
    return gT(qm, 6 * pidx(cols, b) + pidx(rows, a) if 2 <= g else 6 * pidx(rows, a) + pidx(cols, b))


def thpT(h, qm, T, k):
    a, b = k // 2 + 1, k % 2 + 1
    s = -1 if T['g'] % 2 == 1 else 1
    q = lambda a, b: qpT(qm, T['g'], T['rows'], T['cols'], a, b)
    return lin(h, [(wT(s), q(a, b)), (wT(-s), q(a, 0)), (wT(-s), q(0, b)), (wT(s), q(0, 0))])


def vT(h, qm, T, Bl):
    y = [lin(h, [(wT(1), thpT(h, qm, T, k)),
                 (wT(1), addRho(const((gi(T['N'], k) * TWO_PI_Z - gi(Bl['th0'], k), 0)), 2 * abs(gi(T['N'], k))))])
         for k in range(4)]
    v = [lin(h, [((gi(T['G'], 4 * i + k), 0), y[k]) for k in range(4)]) for i in range(4)]
    return [v[e] if e < 4 else const(ZERO) for e in range(36)]


def qOK(G, M, qg):
    tot = 0
    for q in range(16):
        i, j = divmod(q, 4)
        x = ((1 << (2 * PP)) if i == j else 0) - sum(gi(G, 4 * i + k) * gi(M, 4 * k + j) for k in range(4))
        tot += x * x
    return tot <= (qg * SC) ** 2


def qMin(G, M):
    tot = 0
    for q in range(16):
        i, j = divmod(q, 4)
        x = ((1 << (2 * PP)) if i == j else 0) - sum(gi(G, 4 * i + k) * gi(M, 4 * k + j) for k in range(4))
        tot += x * x
    s = isqrtUp(tot)
    return -((-s) // SC)


def t1OK(h, qm, km, T, Bl, rl, why=False):
    checks = [('g', T['g'] < 4), ('q<1', T['qg'] < SC), ('qOK', qOK(T['G'], Bl['Mth'], T['qg'])),
              ('m<(1-q)r', T['m'] * SC < (SC - T['qg']) * rl)]
    for k, v in checks:
        if not v: return (False, k) if why else False
    if not boundOK(h, T['m'], vT(h, qm, T, Bl)): return (False, 'bound') if why else False
    if not signOK(h, Bl['o'], psi3T(h, blockT(km, T['g'], T['rows'], T['cols'], 0, 3))):
        return (False, 'signB') if why else False
    if not signOK(h, -Bl['o'], psi3T(h, blockT(km, T['g'], T['rows'], T['cols'], 3, 0))):
        return (False, 'signC') if why else False
    return (True, None) if why else True


def least_bound(h, res):
    """The least n with boundOK(h, n, res) (boundN of seed_c1, re-checked)."""
    n, _ = S.boundN(h, res)
    while not boundOK(h, n, res): n += 1
    return n


# ------------------------------------------------------------------------------------------- synthetic targets
def full_perm(tri):
    rest = [k for k in range(6) if k not in tri]
    return list(tri) + rest


def float_Q(ball, wcz):
    """Float phases of the matched completion at the box centre (gauge of QT)."""
    wq = np.array(wcz, float) / SC
    th = ball.thq + ball.Mq @ wq
    phh, phv = ball.sides_at(th)
    Dm, _, _, _ = S.Df(th, phh, phv)
    Q = np.zeros((6, 6))
    for qq in range(36):
        j, k = divmod(qq, 6)
        if j == 0 or k == 0: Q[j, k] = 0
        elif j < 3 and k < 3: Q[j, k] = th[2 * (j - 1) + (k - 1)]
        elif j < 3: Q[j, k] = phh[3 * (j - 1) + (k - 3)]
        elif k < 3: Q[j, k] = phv[3 * (k - 1) + (j - 3)]
        else: Q[j, k] = np.angle(Dm[j - 3, k - 3])
    return Q, th


def corner_theta(Qp, rows, cols):
    i0, i1, i2 = rows[:3]; j0, j1, j2 = cols[:3]
    cd = lambda a, b: Qp[a, b] - Qp[a, j0] - Qp[i0, b] + Qp[i0, j0]
    return np.array([cd(i1, j1), cd(i1, j2), cd(i2, j1), cd(i2, j2)])


def gphase(g, Q): return [Q, -Q, Q.T, -Q.T][g]


def psi_f(X):
    perm = sum(np.prod([X[i, p[i]] for i in range(3)]) for p in
               [(0, 1, 2), (0, 2, 1), (1, 0, 2), (1, 2, 0), (2, 0, 1), (2, 1, 0)])
    return perm * np.linalg.det(X) ** 2 * np.prod(np.conj(X))


def synth_t1(ball, wcz, g=0, rows=(0, 1, 3), cols=(0, 2, 4), rscale=1.5):
    """A T1 target ball centred at the box centre's corner seed (same M_theta), radius rscale x the needed."""
    Q, _ = float_Q(ball, wcz)
    Qp = gphase(g, Q)
    rows, cols = full_perm(rows), full_perm(cols)
    thp = corner_theta(Qp, rows, cols)
    K = np.exp(1j * Qp)
    Bb = K[np.ix_(rows[:3], cols[3:])]
    o = int(np.sign(psi_f(Bb).imag))
    red = lambda x: x - 2 * math.pi * round(x / (2 * math.pi))
    th0 = [gz(red(x)) for x in thp]
    N = [int(round((red(x) - x) / (2 * math.pi))) for x in thp]        # th0 = thp + 2 pi N
    Mz = ball.Mz
    Mq = np.array(Mz, float).reshape(4, 4) / SC
    G = np.linalg.inv(Mq)
    Gz = [gz(x) for x in G.reshape(16)]
    Bl = dict(th0=th0, Mth=Mz, P=[0] * 36, U=[0] * 144, n=0, o=o)
    T = dict(g=g, rows=rows, cols=cols, N=N, G=Gz, qg=qMin(Gz, Mz), m=0)
    return T, Bl


def synth_t2(ball, D, wcz):
    """A T2 target: the ball's own centre P as a record centre, identity alignment, the box's winding."""
    Q, _ = float_Q(ball, wcz)
    P = ball.P.reshape(6, 6)
    N = [int(round((P[a, b] - Q[a, b]) / (2 * math.pi))) for a in range(6) for b in range(6)]
    return dict(rows=list(range(6)), cols=list(range(6)), tr=False, cj=False, N=N, Pt=list(ball.Pz), nb=0)


# ------------------------------------------------------------------------------------------- Lean emitter
L = S


def lean_t2(name, T):
    return ('noncomputable def %s : T2D where\n  rows := %s\n  cols := %s\n  tr := %s\n  cj := %s\n  N := %s\n'
            '  Pt := %s\n  nb := %d\n') % (name, L.lean_nat_list(T['rows']), L.lean_nat_list(T['cols']),
                                         'true' if T['tr'] else 'false', 'true' if T['cj'] else 'false',
                                         L.lean_int_list(T['N']), L.lean_int_list(T['Pt']), T['nb'])


def lean_t1(name, T):
    return ('noncomputable def %s : T1D where\n  g := %d\n  rows := %s\n  cols := %s\n  N := %s\n  G := %s\n'
            '  qg := %d\n  m := %d\n') % (name, T['g'], L.lean_nat_list(T['rows']), L.lean_nat_list(T['cols']),
                                         L.lean_int_list(T['N']), L.lean_int_list(T['G']), T['qg'], T['m'])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('balls'); ap.add_argument('idx', type=int)
    ap.add_argument('--level', type=int, default=3)
    ap.add_argument('--box', default='7,3,3,3')
    ap.add_argument('--emit', default='')
    a = ap.parse_args()
    d = json.load(open(a.balls))['seeds'][a.idx]
    ball = S.Ball(d)
    m = a.level; idx = [int(x) for x in a.box.split(',')]
    lo = np.array([-1 + i * 2.0 ** (1 - m) for i in idx]); hw = 2.0 ** (-m)
    wc = ball.r * (lo + hw); h = np.full(4, ball.r * hw)
    print('ball %d r=%.4g, box level %d %s: |u| in [%.3f, %.3f]' % (
        a.idx, ball.r, m, idx, math.sqrt(sum(max(abs(c) - hw, 0) ** 2 for c in lo + hw)),
        math.sqrt(sum((abs(c) + hw) ** 2 for c in lo + hw))))
    t0 = time.time()
    D = S.prepare(ball, wc, h)
    B = ball.ball_dict(0)
    ok, qm, km, why = core(B, D)
    print('core: %s %s (%.1f s)' % (ok, why or '', time.time() - t0))
    if not ok: return
    hb = D['hb']
    # T2
    T2 = synth_t2(ball, D, D['wc'])
    T2['nb'] = -((-least_bound(hb, t2res(hb, qm, T2))) // 36)
    print('T2: nb = %.4g, ok = %s' % (T2['nb'] / SC, t2OK(hb, qm, T2)))
    # T1
    T1, Bl = synth_t1(ball, D['wc'])
    T1['m'] = least_bound(hb, vT(hb, qm, T1, Bl))
    rl = -((-(T1['m'] * SC * 3 // 2)) // (SC - T1['qg']))
    ok1, why1 = t1OK(hb, qm, km, T1, Bl, rl, why=True)
    print('T1: m = %.4g, q = %.3g, r_l = %.4g, o_l = %d, ok = %s %s' % (T1['m'] / SC, T1['qg'] / SC, rl / SC, Bl['o'],
                                                                     ok1, why1 or ''))
    if a.emit:
        os.makedirs(a.emit, exist_ok=True)
        with open(os.path.join(a.emit, 'Data.lean'), 'w') as f:
            f.write('import KernelAtlas.Seed.T1\n\nnamespace NoFourMUBs.KernelAtlas.Seed.TestT\n\n'
                    'open NoFourMUBs.KernelAtlas.Seed\n\n')
            f.write(L.lean_ball('ball', B) + '\n' + L.lean_box('box', D) + '\n')
            f.write(lean_t2('t2', T2) + '\n' + lean_t1('t1', T1) + '\n' + L.lean_ball('tball', Bl) + '\n')
            f.write('def rl : ℕ := %d\n\nend NoFourMUBs.KernelAtlas.Seed.TestT\n' % rl)
        for nm, body in [('Core', 'coreOK ball box = true'),
                         ('T2', 'coreOK ball box && t2OK box.hb (qModels ball box) t2 = true'),
                         ('T1', 'coreOK ball box && t1OK box.hb (qModels ball box) (kModels ball box) t1 tball rl = true')]:
            with open(os.path.join(a.emit, 'Check%s.lean' % nm), 'w') as f:
                f.write('import KernelAtlas.Seed.TestT.Data\n\nnamespace NoFourMUBs.KernelAtlas.Seed.TestT\n\n'
                        'open NoFourMUBs.KernelAtlas.Seed\n\n')
                f.write('theorem ok%s : %s := by decide +kernel\n\nend NoFourMUBs.KernelAtlas.Seed.TestT\n' % (nm, body))
        print('emitted to', a.emit)


if __name__ == '__main__':
    main()
