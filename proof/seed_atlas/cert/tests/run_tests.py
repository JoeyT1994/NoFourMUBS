"""Tests of the seed-atlas certifier (proof/seed_atlas/cert).  Exits nonzero on any failure.

  python3 proof/seed_atlas/cert/tests/run_tests.py            all tests (about a minute; Stage C is the slow one)
  python3 proof/seed_atlas/cert/tests/run_tests.py tm c1      a subset: tm, boxes, c1, sampling, stagec, transfers, record,
                                                              negative, t1prime_f6, edge, edge_certificate,
                                                              global_, certificate

Positive tests compare with the float prototype (explorations/seed_balls): the certified n must be >= the sampled
true remainder and within 1.5x of the prototype's Taylor-model bound on the same boxes.  Negative tests corrupt one
datum at a time (n, r, P, U, theta0, Mth, orientation, transfer target, winding, corner, group element, boxes) and
require a rejection.
"""
import copy, gzip, itertools, json, math, os, random, sys, tempfile, time, warnings
warnings.simplefilter('ignore')
import numpy as np
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import fixtures as F
S = F.S
TMA = S.TMA
from flint import arb, acb

RESULTS = []


def check(name, cond, info=''):
    RESULTS.append((name, bool(cond), info))
    print('%s  %s  %s' % ('ok  ' if cond else 'FAIL', name, info), flush=True)


def rejects(name, fn):
    """fn must raise CertError (or return a failing dict)."""
    try:
        out = fn()
        if isinstance(out, dict) and not out.get('ok', True):
            check(name, True, 'rejected: ' + str(out.get('reason'))[:90]); return
        check(name, False, 'ACCEPTED')
    except S.CertError as e:
        check(name, True, 'rejected: ' + str(e)[:90])
    except Exception as e:                      # still a rejection (certify_seed_atlas fails on any exception)
        check(name, True, 'rejected by exception: %r' % (e,))


# ============================================================================================== Taylor models
def rand_tm(rng, B, shape, cplx, rho, h):
    def z(*s):
        x = rng.normal(size=s) * 0.3
        if cplx: x = x + 1j * rng.normal(size=s) * 0.3
        return TMA.oacb(x) if cplx else TMA.oarb(x)
    return TMA.TM(z(B, *shape), z(B, *shape, 4), z(B, *shape, 10), TMA.oarb(np.full((B,) + shape, rho)), h)


def poly(t, b, u):
    """Float evaluation of the polynomial part of TM t (box b) at u."""
    mid = lambda x: complex(float(x.real.mid()), float(x.imag.mid())) if isinstance(x, acb) else float(x.mid())
    c = np.vectorize(mid, otypes=[complex])(t.c[b]); g = np.vectorize(mid, otypes=[complex])(t.g[b])
    q = np.vectorize(mid, otypes=[complex])(t.q[b])
    mono = np.array([u[j] * u[l] for j, l in TMA.MONO])
    return c + g @ u + q @ mono


def test_tm():
    """Each TM stands for f = poly + e(u) with a fixed function |e(u)| <= rho; the result of an operation must enclose
    the exact result at sampled u.  Reported: max |exact - poly| / rho (must be <= 1; well above 0 shows the test
    exercises the remainder)."""
    rng = np.random.default_rng(5)
    B = 3
    hf = np.array([[0.05, 0.03, 0.04, 0.02]] * B)
    h = TMA.oarb(hf)
    def realise(t, b, u, seed, cplx):
        rr = np.array([float(x.upper()) for x in t.rho[b].flat]).reshape(t.rho[b].shape)
        s = np.sin(7 * u.sum() + seed) * rr
        return poly(t, b, u) + (s * np.exp(1j * seed) if cplx else s)
    def ratio(err, rho_arr):
        r = np.array([float(x.upper()) for x in np.asarray(rho_arr).flat]).reshape(np.shape(rho_arr))
        return (np.abs(err) / r).max()
    worst = 0.0
    a = rand_tm(rng, B, (5,), False, 1e-3, h)
    e = TMA.exp_i(a)
    for b in range(B):
        for _ in range(200):
            u = rng.uniform(-1, 1, 4) * hf[b]
            worst = max(worst, ratio(np.exp(1j * realise(a, b, u, 0.3, False)) - poly(e, b, u), e.rho[b]))
    check('tm: exp_i encloses e^{i f}', worst <= 1, 'max |err|/rho %.3f' % worst)
    a = rand_tm(rng, B, (3, 3), True, 2e-3, h); bt = rand_tm(rng, B, (3, 3), True, 1e-3, h)
    p = a * bt; m = a @ bt
    worst_p = worst_m = 0.0
    for b in range(B):
        for _ in range(200):
            u = rng.uniform(-1, 1, 4) * hf[b]
            fa = realise(a, b, u, 0.1, True).reshape(3, 3); fb = realise(bt, b, u, 0.7, True).reshape(3, 3)
            worst_p = max(worst_p, ratio(fa * fb - poly(p, b, u).reshape(3, 3), p.rho[b]))
            worst_m = max(worst_m, ratio(fa @ fb - poly(m, b, u).reshape(3, 3), m.rho[b]))
    check('tm: entrywise product encloses', worst_p <= 1, 'max |err|/rho %.3f' % worst_p)
    check('tm: matrix product encloses', worst_m <= 1, 'max |err|/rho %.3f' % worst_m)
    D = rand_tm(rng, B, (3, 3), True, 1e-3, h)
    c0 = np.exp(1j * rng.uniform(-3, 3, (B, 3, 3)))
    D = TMA.TM(TMA.oacb(c0), D.g * arb(0.1), D.q * arb(0.1), D.rho, h)
    A = S.arg_tm(D, np.angle(c0[0]) + 2 * np.pi)
    worst = 0.0
    for b in range(B):
        for _ in range(200):
            u = rng.uniform(-1, 1, 4) * hf[b]
            d = np.angle(realise(D, b, u, 0.4, True).reshape(3, 3)) - poly(A, b, u).real.reshape(3, 3)
            worst = max(worst, ratio(d - 2 * np.pi * np.rint(d / (2 * np.pi)), A.rho[b]))
    check('tm: arg encloses arg D (mod 2 pi)', worst <= 1, 'max |err|/rho %.3f' % worst)
    a = rand_tm(rng, B, (7,), False, 1e-3, h)
    ns = TMA.norm_sup(a)
    worst = 0.0
    for b in range(B):
        for _ in range(300):
            u = np.sign(rng.normal(size=4)) * hf[b] if _ % 3 == 0 else rng.uniform(-1, 1, 4) * hf[b]
            worst = max(worst, np.linalg.norm(realise(a, b, u, 0.2, False).real) / float(ns[b].upper()))
    check('tm: norm_sup >= sampled sup', worst <= 1, 'max ||f|| / bound %.3f' % worst)


# ============================================================================================== C1
C1_CACHE = {}


def c1(i):
    if i not in C1_CACHE: C1_CACHE[i] = S.certify_c1(F.ball(i))
    return C1_CACHE[i]


def test_c1():
    for i, b in enumerate(F.BALLS):
        out = c1(i)
        info = 'record %d r %.3f k %d: n_cert %.4e  proto TM %.4e (x%.3f)  sampled %.4e  %.2fs, %d boxes' % (
            b['atlas_record'], F.fh(b['r']), b['k'], out['n_cert'], b['n_tm'], out['n_cert'] / b['n_tm'], b['n_sample'],
            out['seconds'], out['boxes'] or 0)
        check('c1 ball %d passes' % i, out['ok'], info)
        check('c1 ball %d: n_cert >= sampled remainder' % i, out['n_cert'] >= b['n_sample'])
        check('c1 ball %d: n_cert <= 1.5 x prototype TM bound' % i, out['n_cert'] <= 1.5 * b['n_tm'])


def test_boxes():
    """C1 keeps the closed boxes meeting the open ball; they still cover the closed ball (sphere points and the vertices
    where the dropped corner boxes touch it, in exact rationals)."""
    from fractions import Fraction as Fr
    rng = np.random.default_rng(3)
    for k in (3, 4, 5, 6):
        r = 0.08
        keep, wc, h, wcf = S.ball_boxes(r, k)
        rq = Fr(r); hq = rq / k
        boxes = [[(-rq + 2 * i * hq, -rq + 2 * (i + 1) * hq) for i in idx] for idx in keep]
        pts = [[Fr(float(x)) for x in rq * 0 + np.array([0.0, 0, 0, 0])]]
        pts += [[s * rq / 2 for s in sg] for sg in itertools.product((1, -1), repeat=4)]          # touching vertices (k = 4)
        for _ in range(300):
            d = rng.normal(size=4); d = d / np.linalg.norm(d) * r * (1 - 1e-12)
            pts.append([Fr(float(x)) for x in d])
        ok = all(any(all(lo <= x <= hi for x, (lo, hi) in zip(p_, bx)) for bx in boxes) for p_ in pts if sum(x * x for x in p_) <= rq * rq)
        check('boxes: k = %d keeps %d of %d and covers the ball' % (k, len(keep), k ** 4), ok)


def test_sampling():
    """Per box: the true remainder (prototype continuation, float) never exceeds the certified per-box bound."""
    sys.path.insert(0, os.path.join(F.ROOT, 'explorations/seed_balls'))
    from seedball import SeedBall
    rng = np.random.default_rng(0)
    for i in (0, 2):
        b = F.ball(i)
        phh, phv, _ = S.centre_sides(b)
        sb = SeedBall(b.theta0, phh, phv)
        keep, wc, h, wcf = S.ball_boxes(b.r, b.k)
        nb = S.residual_bound(b, S.box_Q(b, wc, h, wcf), wc, wcf)
        nbf = np.array([TMA.up(x) for x in nb])
        worst = 0.0
        for bi in range(len(keep)):
            hf = b.r / b.k
            for t in range(4):
                u = hf * np.sign(rng.normal(size=4)) if t == 0 else rng.uniform(-hf, hf, 4)
                w = wcf[bi] + u
                q, _ = sb.Q(b.theta0 + b.Mth @ w)
                res = q - b.P - b.U @ w
                res -= 2 * np.pi * np.rint(res / (2 * np.pi))
                worst = max(worst, np.linalg.norm(res) / nbf[bi])
        check('sampling ball %d: true remainder <= per-box bound' % i, worst <= 1, 'max ratio %.3f' % worst)


def test_stagec():
    b = F.ball(1)
    a = S.stage_c_args(b)
    tcol = max(np.linalg.norm(b.U.reshape(6, 6, 4)[:, i, :], 2) for i in range(6))
    check('stagec args: rcol, rF >= float values', a['rcol'] * 2 * math.pi >= tcol * b.r + b.n and
          a['rF'] * 2 * math.pi >= np.linalg.norm(b.U, 2) * b.r + b.n and a['nN'] * 2 * math.pi >= b.n)
    t = time.time(); out = S.run_stage_c(b)
    check('stagec: ball 1 (record 2781, r 0.04) excluded', out.get('ok'), 'bins %s labels %s %.1fs' % (out.get('bins'), out.get('labels'), time.time() - t))


# ============================================================================================== transfers
def perm_ball(d, perm, neg=False, rfac=1.5):
    """The seed ball whose centre and frame are theta0, Mth with rows permuted (and negated): an exact image."""
    e = copy.deepcopy(d)
    th = np.array([F.fh(x) for x in d['theta0']]); M = np.array([F.fh(x) for x in d['Mth']]).reshape(4, 4)
    s = -1.0 if neg else 1.0
    e['theta0'] = [F.hx(s * th[p]) for p in perm]
    e['Mth'] = [F.hx(s * x) for x in M[perm].reshape(16)]
    e['r'] = F.hx(rfac * F.fh(d['r']))
    return e


def transfer_setups():
    """(name, source Ball, seeds, records, groups) that must pass."""
    A = F.ball(0); Ad = F.raw(0)
    bx3 = F.sphere_boxes(3); bx2 = F.sphere_boxes(2)
    big = S.Ball(F.scaled(Ad, 1.5 * A.r))
    sym = S.Ball(perm_ball(Ad, [2, 3, 0, 1]))                               # rows (0,2,1): theta' = (th3, th4, th1, th2)
    cj = S.Ball(perm_ball(Ad, [0, 2, 1, 3], neg=True))                      # g = conjT: theta' = -(th1, th3, th2, th4)
    cor = F.FIX['corner']; I, J = cor['rows'][:3], cor['cols'][:3]
    cb = F.scaled(cor['ball'], 0.15); C = S.Ball(cb)
    rec = F.FIX['record']; Pt = np.array([F.fh(x) for x in rec['phi']])
    rows, cols = [int(x) for x in np.argsort(rec['rows'])], [int(x) for x in np.argsort(rec['cols'])]
    return A, Ad, dict(
        T0=([A, big], [], [dict(kind='T0', target=1, wind=[0, 0, 0, 0], boxes=bx3)]),
        T1sym=([A, sym], [], [dict(kind='T1', target=1, g='id', rows=[0, 2, 1], cols=[0, 1, 2], wind=[0, 0, 0, 0], boxes=bx3)]),
        T1symconjT=([A, cj], [], [dict(kind='T1', target=1, g='conjT', rows=[0, 1, 2], cols=[0, 1, 2], wind=[0, 0, 0, 0], boxes=bx3)]),
        T1=([A, C], [], [dict(kind='T1', target=1, g='id', rows=I, cols=J, wind=F.wind_T1(Ad, 'id', I, J, cb), boxes=bx2)]),
        T2=([A], [(Pt, rec['R'])], [dict(kind='T2', target=0, g='id', rows=rows, cols=cols, wind=F.wind_T2(A.P, 'id', rows, cols, Pt), boxes=bx2)]))


def test_transfers():
    A, Ad, setups = transfer_setups()
    for name, (seeds, recs, groups) in setups.items():
        t = time.time()
        try:
            cnt = S.check_seed_transfers(A, seeds, recs, groups, 9)
            check('transfer %s passes (and covers the sphere)' % name, True, '%s %.2fs' % ({k: v for k, v in cnt.items() if v}, time.time() - t))
        except S.CertError as e:
            check('transfer %s passes' % name, False, str(e))


def record_setup():
    rec = F.FIX['record']
    rd, rH, n = F.record_data(rec)
    big = S.Ball(rec['big'])
    I, J = rec['rows'][:3], rec['cols'][:3]
    w = [int(x) for x in np.rint((big.theta0 - S.corner_L(I, J) @ rd.P) / (2 * math.pi))]
    bx = F.shell_boxes(rd, 2, rH)
    return rd, rH, big, [dict(kind='T1prime', target=0, g='id', rows=I, cols=J, wind=w, boxes=bx)]


def test_record():
    rd, rH, big, groups = record_setup()
    try:
        cnt = S.check_record_boundary(rd, rH, [big], [], groups, 9)
        check("record T1' into a seed ball passes (and covers the shell)", True, str(cnt))
    except S.CertError as e:
        check("record T1' passes", False, str(e))
    # rec kind: record 2003 -> its old atlas targets, on the level-3 shell boxes the float centre test accepts
    cert = json.load(gzip.open(os.path.join(F.ROOT, 'proof/atlas/results/atlas_certificate.json.gz')))['records']
    passed = 0
    for (t, sg, tr, rp, cp) in cert[2003]['targets'][:4]:
        g = {(1, 0): 'id', (-1, 0): 'conj', (1, 1): 'T', (-1, 1): 'conjT'}[(sg, tr)]
        Pt = np.array([F.fh(x) for x in cert[t]['phi']])
        w = F.wind_T2(rd.P, g, rp, cp, Pt)
        for box in F.shell_boxes(rd, 3, rH)[:400]:
            try:
                S.check_record_boundary.__wrapped__ if False else None
                xc, h, _ = S.box_geometry([tuple(box)], rH)
                S.check_rec_group(rd, Pt, float(cert[t]['R']), g, rp, cp, w, xc, h)
                passed += 1
                # the same box with a corrupted winding / swapped rows must be rejected
                w2 = list(w); w2[7] += 1
                rejects('rec: corrupted winding rejected', lambda: S.check_rec_group(rd, Pt, float(cert[t]['R']), g, rp, cp, w2, xc, h))
                rp2 = list(rp); rp2[1], rp2[2] = rp2[2], rp2[1]
                rejects('rec: swapped rows rejected', lambda: S.check_rec_group(rd, Pt, float(cert[t]['R']), g, rp2, cp, w, xc, h))
                break
            except S.CertError:
                continue
    check('rec: some old atlas transfer of record 2003 passes in Arb', passed > 0, '%d targets with a passing box' % passed)


# ============================================================================================== negative tests
def corrupt_ball(d, field, fn):
    e = copy.deepcopy(d)
    v = e[field]
    if isinstance(v, list): vals = [F.fh(x) for x in v]; fn(vals); e[field] = [F.hx(x) for x in vals]
    else: e[field] = fn(v)
    return e


def test_negative():
    d = F.raw(1)                                   # record 2781, r 0.04, k 3 (fast)
    base = S.certify_c1(S.Ball(d))
    check('negative: base ball passes C1', base['ok'], 'n_cert %.4e n %.4e' % (base['n_cert'], F.fh(d['n'])))
    def c1_of(e): return S.certify_c1(S.Ball(e))
    def add(i, dx): return lambda v: v.__setitem__(i, v[i] + dx)
    cases = [
        ('n halved', corrupt_ball(d, 'n', lambda v: F.hx(F.fh(v) / 2))),
        ('n just below n_cert', corrupt_ball(d, 'n', lambda v: F.hx(base['n_cert'] * (1 - 1e-6)))),
        ('r enlarged x1.5', corrupt_ball(d, 'r', lambda v: F.hx(F.fh(v) * 1.5))),
        ('P entry (3,4) + 0.01', corrupt_ball(d, 'P', add(22, 0.01))),
        ('P entry (1,1) + 0.01 (a seed entry)', corrupt_ball(d, 'P', add(7, 0.01))),
        ('U entry scaled x1.2', corrupt_ball(d, 'U', lambda v: v.__setitem__(40, v[40] * 1.2))),
        ('U columns swapped', corrupt_ball(d, 'U', lambda v: [v.__setitem__(slice(4 * e, 4 * e + 2), [v[4 * e + 1], v[4 * e]]) for e in range(36)])),
        ('theta0[2] + 0.01', corrupt_ball(d, 'theta0', add(2, 0.01))),
        ('Mth entry x1.2', corrupt_ball(d, 'Mth', lambda v: v.__setitem__(5, v[5] * 1.2))),
        ('orientation flipped', corrupt_ball(d, 'o', lambda v: -v)),
    ]
    for name, e in cases:
        rejects('negative C1: %s' % name, lambda e=e: c1_of(e))
    rejects('negative parse: o = 0', lambda: S.Ball(corrupt_ball(d, 'o', lambda v: 0)))
    rejects('negative parse: r = inf', lambda: S.Ball(corrupt_ball(d, 'r', lambda v: 'inf')))
    rejects('negative parse: n = nan', lambda: S.Ball(corrupt_ball(d, 'n', lambda v: float('nan').hex())))
    rejects('negative parse: P of length 35', lambda: S.Ball(corrupt_ball(d, 'P', lambda v: v.pop())))
    rejects('negative parse: singular Mth', lambda: c1_of(corrupt_ball(d, 'Mth', lambda v: v.__setitem__(slice(4, 8), v[0:4]))))
    # transfers
    A, Ad, setups = transfer_setups()
    def run(name, mutate):
        seeds, recs, groups = setups[name]
        seeds = list(seeds); recs = list(recs); groups = copy.deepcopy(groups)
        mutate(seeds, recs, groups)
        return lambda: S.check_seed_transfers(A, seeds, recs, groups, 9)
    def setg(k, v): return lambda s, r, g: g[0].__setitem__(k, v)
    def bump_wind(i): return lambda s, r, g: g[0]['wind'].__setitem__(i, g[0]['wind'][i] + 1)
    tgtd = lambda nm: setups[nm][0][1]
    neg = [
        ('T0 winding +1', 'T0', bump_wind(0)),
        ('T0 target out of range', 'T0', setg('target', 5)),
        ('T0 target is the source itself', 'T0', setg('target', 0)),
        ('T0 target radius 0.9 r_j', 'T0', lambda s, r, g: s.__setitem__(1, S.Ball(F.scaled(Ad, 0.9 * A.r)))),
        ('T0 target orientation flipped', 'T0', lambda s, r, g: s.__setitem__(1, S.Ball(corrupt_ball(F.scaled(Ad, 1.5 * A.r), 'o', lambda v: -v)))),
        ('T0 target theta0 moved 0.02', 'T0', lambda s, r, g: s.__setitem__(1, S.Ball(corrupt_ball(F.scaled(Ad, 1.5 * A.r), 'theta0', add(1, 0.02))))),
        ('T0 one box dropped (coverage)', 'T0', lambda s, r, g: g[0]['boxes'].pop(17)),
        ('T0 box beyond max_level', 'T0', lambda s, r, g: g[0]['boxes'].append([10, 0, 0, 0, 0])),
        ('T0 malformed box', 'T0', lambda s, r, g: g[0]['boxes'].append([3, 0, 0, 0, 8])),
        ('T0 winding missing', 'T0', lambda s, r, g: g[0].pop('wind')),
        ('T1sym wrong corner order', 'T1sym', setg('rows', [0, 1, 2])),
        ('T1sym winding +1', 'T1sym', bump_wind(3)),
        ('T1sym g = conj (orientation)', 'T1sym', setg('g', 'conj')),
        ('T1sym g = T', 'T1sym', setg('g', 'T')),
        ('T1sym unknown g', 'T1sym', setg('g', 'xx')),
        ('T1symconjT g = id', 'T1symconjT', setg('g', 'id')),
        ('T1 winding +1', 'T1', bump_wind(1)),
        ('T1 cols reordered', 'T1', lambda s, r, g: g[0].__setitem__('cols', [g[0]['cols'][0], g[0]['cols'][2], g[0]['cols'][1]])),
        ('T1 rows: another corner', 'T1', lambda s, r, g: g[0].__setitem__('rows', [0, 1, 3])),
        ('T1 target orientation flipped', 'T1', lambda s, r, g: s.__setitem__(1, S.Ball(corrupt_ball(F.scaled(F.FIX['corner']['ball'], 0.15), 'o', lambda v: -v)))),
        ('T1 g = conj', 'T1', setg('g', 'conj')),
        ('T1 repeated row index', 'T1', setg('rows', [0, 1, 1])),
        ('T2 winding +1', 'T2', bump_wind(14)),
        ('T2 rows swapped', 'T2', lambda s, r, g: g[0]['rows'].__setitem__(slice(1, 3), [g[0]['rows'][2], g[0]['rows'][1]])),
        ('T2 g = conj', 'T2', setg('g', 'conj')),
        ('T2 target R 0.03', 'T2', lambda s, r, g: r.__setitem__(0, (r[0][0], 0.03))),
        ('T2 target out of range', 'T2', setg('target', 1)),
        ('T2 rows not a permutation', 'T2', setg('rows', [0, 0, 1, 2, 3, 4])),
        ('unknown transfer kind', 'T0', setg('kind', 'T3')),
    ]
    for name, which, mut in neg:
        rejects('negative %s' % name, run(which, mut))
    # record T1'
    rd, rH, big, groups = record_setup()
    def rec_run(mut_groups=None, seeds=None, eta=None):
        gg = copy.deepcopy(groups)
        if mut_groups: mut_groups(gg)
        return lambda: S.check_record_boundary(rd, eta or rH, seeds or [big], [], gg, 9)
    rejects("negative T1' winding +1", rec_run(lambda g: g[0]['wind'].__setitem__(0, g[0]['wind'][0] + 1)))
    rejects("negative T1' target orientation flipped", rec_run(seeds=[S.Ball(corrupt_ball(F.FIX['record']['big'], 'o', lambda v: -v))]))
    rejects("negative T1' target radius 0.05", rec_run(seeds=[S.Ball(F.scaled(F.FIX['record']['big'], 0.05))]))
    rejects("negative T1' cols reordered", rec_run(lambda g: g[0].__setitem__('cols', [g[0]['cols'][1], g[0]['cols'][0], g[0]['cols'][2]])))
    rejects("negative T1' box dropped (shell coverage)", rec_run(lambda g: g[0]['boxes'].pop(100)))
    rejects("negative T1' eta_scale < rH", rec_run(eta=rH * 0.5))


# ============================================================================================== whole certificate
def mini_certificate():
    """A three-seed, one-record certificate.  Seed 0 = test ball 1 (record 2781, r 0.04); its sphere goes by T0 into
    seed 1 (the same chart, twice the radius, n from the certifier itself), whose own sphere is NOT covered; seed 2 is
    the large T1' target of the record (its C1 is not checked here).  The record is atlas record 2003 with a T1'
    boundary.  The checker must pass seed 0 and the record, fail seed 1 (coverage) and fail the F6 test (F6 is not
    in record 2003)."""
    d0 = F.raw(1); d1 = F.scaled(F.raw(1), 2 * F.fh(d0['r']))
    d1['k'] = 4; d1['label_radius'] = F.hx(0.02); d1['n'] = F.hx(1.0)
    d1['n'] = F.hx(1.05 * S.certify_c1(S.Ball(d1))['n_cert'])
    d0['transfers'] = [dict(kind='T0', target=1, wind=[0, 0, 0, 0], boxes=F.sphere_boxes(3))]
    for d in (d0, d1):
        for k in ('n_tm', 'n_sample', 't_proto', 'edge_R', 'atlas_record'): d.pop(k, None)
    rec = F.FIX['record']
    rd, rH, big, groups = record_setup()
    seeds = [d0, d1, dict(rec['big'], transfers=[])]
    groups = copy.deepcopy(groups); groups[0]['target'] = 2
    r = dict(phi=rec['phi'], R=F.hx(rec['R']), label_radius=F.hx(rec['label_radius']), Tint=rec['Tint'], eta_scale=F.hx(rH), boundary=groups)
    return dict(format='seed-atlas-v1', max_level=9, seeds=seeds, records=[r], fourier_record=0,
                tao=dict(R=F.hx(0.08), label_radius=F.hx(0.03)))


def test_certificate():
    import certify_seed_atlas as CS
    cert = mini_certificate()
    with tempfile.TemporaryDirectory() as td:
        p = os.path.join(td, 'mini.json.gz')
        with gzip.open(p, 'wt') as f: json.dump(cert, f)
        rc = os.path.join(td, 'receipt.json')
        t = time.time()
        code = CS.main([p, '--only', 'seeds:0-1,records:all,fourier', '--receipt', rc])
        res = {(r['item'], r.get('index')): r for r in json.load(open(rc))['results']}
        check('certificate: seed 0 (C1, Stage C, T0, coverage) passes', res[('seed', 0)]['ok'], res[('seed', 0)].get('reason', '') + ' %.1fs' % res[('seed', 0)]['seconds'])
        check('certificate: seed 1 fails (sphere not covered)', not res[('seed', 1)]['ok'] and 'coverage' in res[('seed', 1)].get('reason', ''), res[('seed', 1)].get('reason', ''))
        check("certificate: record passes (Stage C, T1' boundary, coverage)", res[('record', 0)]['ok'], res[('record', 0)].get('reason', ''))
        check('certificate: F6 is not in record 2003 (rejected)', not res[('fourier', None)]['ok'])
        check('certificate: overall verdict is not PASS', code != 0, 'wall %.1fs' % (time.time() - t))
        # corrupt seed 0's n in the file: rejected through the whole pipeline
        cert2 = copy.deepcopy(cert); cert2['seeds'][0]['n'] = F.hx(F.fh(cert['seeds'][0]['n']) / 3)
        with gzip.open(p, 'wt') as f: json.dump(cert2, f)
        CS.main([p, '--only', 'seeds:0', '--receipt', rc])
        r0 = json.load(open(rc))['results'][0]
        check('certificate: corrupted n rejected end to end', not r0['ok'], r0.get('reason', ''))


def test_global():
    """F6 in atlas record 877 (accepted), and not after moving one of its phases by 0.2 (rejected); Tao passes."""
    import certify_seed_atlas as CS
    recs = json.load(gzip.open(os.path.join(F.ROOT, 'proof/atlas/results/atlas_certificate.json.gz')))['records']
    r = recs[877]
    phi = np.array([F.fh(x) for x in r['phi']]).reshape(6, 6)
    def ctx_for(phi):
        return CS.Ctx(dict(seeds=[], records=[dict(phi=phi, R=float(r['R']), label_radius=float(r['label_radius']),
                                                     Tint=None, eta_scale=None, boundary=[])],
                           fourier_record=0, max_level=9, tao=dict(R=0.08, label_radius=0.03)))
    o = CS.check_fourier(ctx_for(phi)); check('global: F6 in record 877', o['ok'], '%.1fs' % o['seconds'])
    phi2 = phi.copy(); phi2[2, 3] += 0.2
    o = CS.check_fourier(ctx_for(phi2)); check('global: F6 not in record 877 with a phase moved by 0.2 (rejected)', not o['ok'])
    o = CS.check_tao(ctx_for(phi)); check('global: Tao record passes', o['ok'], str(o))


F6FIX = json.load(open(os.path.join(HERE, 'data/f6fixture.json')))


def f6_setup():
    fx = F6FIX
    rd = S.RecordData(np.array([F.fh(x) for x in fx['phi']]).reshape(6, 6), fx['R'], fx['label_radius'],
                      np.array(fx['Tint'], dtype=np.int64).reshape(36, 4))
    eta = np.array(fx['eta']); I, J = fx['rows'], fx['cols']
    ball = S.Ball(F.scaled(fx['ball'], 0.1))
    w = [int(x) for x in np.rint((ball.theta0 - S.corner_L(I, J) @ (rd.P + rd.Tf @ eta)) / (2 * math.pi))]
    m = 5
    idx = [int(v) for v in np.floor((eta / rd.rH + 1) / 2 ** (1 - m))]
    box = (m,) + tuple(idx)
    return rd, ball, I, J, w, box, eta


def test_t1prime_f6():
    """T1' next to F6 (atlas record 877, a boundary point's matched corner, amplification ||Mth^-1 L|| ~ 72): the crude
    test (||nu|| <= n0 only) fails, the Krawczyk-refined one passes; the nu enclosure and the transfer are checked
    against the actual Hadamards at sampled eta (Gauss-Newton, floats); corruptions are rejected."""
    rd, ball, I, J, w, box, eta = f6_setup()
    xc, h, xcf = S.box_geometry([box], rd.rH)
    check("T1' near F6: amplification of the corner", F6FIX['amp'] > 30, 'amp %.1f, edge %.3f, n0 %.2e' % (F6FIX['amp'], F6FIX['edge'], rd.n0))
    rejects("T1' near F6: crude test (||nu|| <= n0) fails", lambda: S.check_T1prime_crude(rd, ball, 'id', I, J, w, xc, h))
    t = time.time()
    try:
        S.check_T1prime_group(rd, ball, 'id', I, J, w, xc, h, xcf); check("T1' near F6: refined test passes", True, '%.2fs' % (time.time() - t))
    except S.CertError as e:
        check("T1' near F6: refined test passes", False, str(e))
    # the enclosure against actual Hadamards: ||x*(eta) - x~(eta)|| <= r, and the corner seed inside the ellipsoid
    xt, r = S.nu_enclosure(rd, xc, h, xcf)
    rng = np.random.default_rng(1)
    hw = float(h[0, 0].mid()); worst = 0.0; worst_x = 0.0
    Mi = np.linalg.inv(ball.Mth); L = S.corner_L(I, J)
    for k in range(40):
        u = rng.uniform(-hw, hw, 4) if k % 4 else hw * np.sign(rng.normal(size=4))
        x, ok, _ = S._solve_x(rd, (xcf[0] + u)[None])
        pred = poly(xt, 0, u).real
        worst = max(worst, np.linalg.norm(x[0] - pred) / r[0])
        th = L @ (rd.P + rd.Tf @ (xcf[0] + u) + rd.Nf @ x[0])
        worst_x = max(worst_x, np.linalg.norm(Mi @ (th + 2 * np.pi * np.array(w) - ball.theta0)) / ball.r)
    check("T1' near F6: sampled ||x* - x~|| <= enclosure radius", worst <= 1, 'max ratio %.3f (r = %.2e vs n0 %.2e)' % (worst, r[0], rd.n0))
    check("T1' near F6: sampled corner seeds inside the target ellipsoid", worst_x < 1, 'max ||w||/r %.3f' % worst_x)
    rejects("T1' near F6: target radius 0.002 rejected", lambda: S.check_T1prime_group(rd, S.Ball(F.scaled(F6FIX['ball'], 0.002)), 'id', I, J, w, xc, h, xcf))
    w2 = list(w); w2[2] += 1
    rejects("T1' near F6: winding +1 rejected", lambda: S.check_T1prime_group(rd, ball, 'id', I, J, w2, xc, h, xcf))
    flip = S.Ball(dict(F.scaled(F6FIX['ball'], 0.1), o=-F6FIX['ball']['o']))
    rejects("T1' near F6: target orientation flipped rejected", lambda: S.check_T1prime_group(rd, flip, 'id', I, J, w, xc, h, xcf))
    rejects("T1' near F6: g = conj rejected", lambda: S.check_T1prime_group(rd, ball, 'conj', I, J, w, xc, h, xcf))
    rejects("T1' near F6: corner rows reordered rejected", lambda: S.check_T1prime_group(rd, ball, 'id', [I[0], I[2], I[1]], J, w, xc, h, xcf))
    far = (box[0],) + tuple((1 << box[0]) - 1 - i for i in box[1:])            # the antipodal box (-eta)
    xf, hf_, xff = S.box_geometry([far], rd.rH)
    x, ok, _ = S._solve_x(rd, xff)
    th = L @ (rd.P + rd.Tf @ xff[0] + rd.Nf @ x[0])
    out = np.linalg.norm(Mi @ (th + 2 * np.pi * np.array(w) - ball.theta0)) / ball.r
    check("T1' near F6: the antipodal box's centre is outside the target (float)", out > 1, '||w||/r %.2f' % out)
    rejects("T1' near F6: the antipodal box rejected", lambda: S.check_T1prime_group(rd, ball, 'id', I, J, w, xf, hf_, xff))


# ============================================================================================== edge balls (SPEC section 10)
EDGEFX = json.load(open(os.path.join(HERE, 'data/edgeballs.json')))
EDGESEEDS = json.load(open(os.path.join(HERE, 'data/edgeseeds.json')))
EDGE_CACHE = {}


def edge_record(r='0.1', k=(4, 4, 4, 8), n=None):
    d = copy.deepcopy(EDGEFX[r]); d['k'] = list(k)
    for key in ('n_sample', 'sv'): d.pop(key, None)
    if n is not None: d['n'] = F.hx(n)
    return d


def edge_c1(r='0.1', k=(4, 4, 4, 8)):
    import edgecert as EC
    key = (r, tuple(k))
    if key not in EDGE_CACHE:
        d = edge_record(r, k, 1.0)
        o = EC.certify_edge_c1(EC.EdgeBall(d))
        d['n'] = F.hx(o['n_cert'] * 1.05)
        EDGE_CACHE[key] = (d, o)
    return EDGE_CACHE[key]


def t3_setup(name):
    import edgecert as EC
    d, o = edge_c1()
    sd = copy.deepcopy(EDGESEEDS[name])
    b = S.Ball(sd)
    bx = F.sphere_boxes(2)
    grp = dict(kind='T3', target=0, g='id', rows=sd['t3rows'], cols=sd['t3cols'], boxes=bx)
    return EC.EdgeBall(d), o['tubes'], b, grp


def test_edge():
    """Edge balls: C1e against sampling (r = 0.02) and at r = 0.1 (k = 4,4,4,8), F6 = H(0), T3 from seed balls inside
    the chart (their whole sphere), the edge ball's T1 into a seed ball, and corruptions (n, r, Mth, the y direction,
    T3 targets and corners, the y sign through g = T)."""
    import edgecert as EC
    d = edge_record('0.02', (3, 3, 3, 3), 1.0)
    o = EC.certify_edge_c1(EC.EdgeBall(d))
    smp = EDGEFX['0.02']['n_sample']
    check('edge C1e r = 0.02: passes, n_cert >= sampled remainder', o['n_cert'] < 1 and o['n_cert'] >= smp,
          'n_cert %.3e, sampled %.3e (x%.2f), %d boxes, %.1fs' % (o['n_cert'], smp, o['n_cert'] / smp, o['boxes'], o['seconds']))
    d, o = edge_c1()
    check('edge C1e r = 0.1, k = (4,4,4,8): passes', o['ok'], 'n_cert %.4e (sampled %.4e), %d boxes, %.1fs' % (
        o['n_cert'], EDGEFX['0.1']['n_sample'], o['boxes'], o['seconds']))
    check('edge: F6 = H(0) (x = 0 in the uniqueness box at w = 0)', EC.f6_in_edge(o['tubes']))
    eb = EC.EdgeBall(d)
    t = time.time(); sc = S.run_stage_c(eb)
    check('edge: Stage C at r = 0.1', sc.get('ok'), 'labels %s, %.1fs' % (sc.get('labels'), time.time() - t))
    for name in ('pos', 'neg'):
        eb_, tubes, b, grp = t3_setup(name)
        t = time.time()
        try:
            cnt = S.check_seed_transfers(b, [b], [], [grp], 9, edges=[(eb_, tubes)])
            check('T3 (%s): a seed ball inside the chart transfers its whole sphere' % name, cnt['T3'] == 256, '%.1fs' % (time.time() - t))
        except S.CertError as e:
            check('T3 (%s)' % name, False, str(e))
    # the edge ball's own T1 into a seed ball at the best corner of H(p*), p* on the edge sphere
    sd = EDGESEEDS['sphere']; b = S.Ball(sd)
    rI = sorted(range(6), key=lambda a: sd['t3rows'][a]); rJ = sorted(range(6), key=lambda c: sd['t3cols'][c])
    ws = np.array(sd['wstar']) / eb.r; m = 6
    box = (m,) + tuple(min(int(np.floor((u + 1) / 2 ** (1 - m))), 2 ** m - 1) for u in ws)
    xc, h, xcf = S.box_geometry([box], eb.r)
    Q = EC.edge_representative(eb, EC.edge_box_Q(eb, xc, h, xcf), xcf)
    wind = [int(x) for x in np.rint((b.theta0 - S.corner_L(rI[:3], rJ[:3]) @ np.array([float(x.mid()) for x in Q.c[0]])) / (2 * math.pi))]
    try:
        S.check_T1_general(b, 'id', rI[:3], rJ[:3], wind, Q); check('edge T1 into a seed ball (level-6 sphere box)', True)
    except S.CertError as e:
        check('edge T1 into a seed ball (level-6 sphere box)', False, str(e))
    rejects('negative edge T1: winding +1', lambda: S.check_T1_general(b, 'id', rI[:3], rJ[:3], [wind[0] + 1] + wind[1:], Q))
    rejects('negative edge: sphere not covered', lambda: EC.check_edge_transfers(eb, [b], [dict(kind='T1', target=0, g='id', rows=rI[:3],
                                                                                               cols=rJ[:3], wind=wind, boxes=[list(box)])], 9))
    # corruptions of the edge record (C1e at r = 0.02 for speed where the corruption does not need the full ball)
    base = edge_record('0.02', (3, 3, 3, 3), 1.0)
    on = EC.certify_edge_c1(EC.EdgeBall(base))['n_cert']
    def c1e(dd): return EC.certify_edge_c1(EC.EdgeBall(dd))
    def corrupt(field, fn):
        dd = copy.deepcopy(base); dd['n'] = F.hx(on * 1.05)
        v = dd[field]
        if isinstance(v, list): vals = [F.fh(x) for x in v]; fn(vals); dd[field] = [F.hx(x) for x in vals]
        else: dd[field] = fn(v)
        return dd
    rejects('negative edge C1e: n just below n_cert', lambda: c1e(corrupt('n', lambda v: F.hx(on * 0.999))))
    rejects('negative edge C1e: r x 1.5', lambda: c1e(corrupt('r', lambda v: F.hx(F.fh(v) * 1.5))))
    rejects('negative edge C1e: Mth entry x 1.2', lambda: c1e(corrupt('Mth', lambda v: v.__setitem__(5, v[5] * 1.2))))
    rejects('negative edge C1e: the y direction reversed (row 4 of Mth negated)',
            lambda: c1e(corrupt('Mth', lambda v: v.__setitem__(slice(12, 16), [-x for x in v[12:16]]))))
    rejects('negative edge C1e: P entry + 0.01', lambda: c1e(corrupt('P', lambda v: v.__setitem__(22, v[22] + 0.01))))
    rejects('negative edge: k = 0', lambda: EC.EdgeBall(dict(base, k=0)))
    # T3 corruptions
    eb_, tubes, b, grp = t3_setup('pos')
    def t3(mut, edges=None):
        g = copy.deepcopy(grp); mut(g)
        return lambda: S.check_seed_transfers(b, [b], [], [g], 9, edges=edges or [(eb_, tubes)])
    rejects('negative T3: g = T (swaps the sides: the sign of y)', t3(lambda g: g.__setitem__('g', 'T')))
    rejects('negative T3: g = conj', t3(lambda g: g.__setitem__('g', 'conj')))
    rejects('negative T3: rows 1, 2 swapped', t3(lambda g: g['rows'].__setitem__(slice(1, 3), [g['rows'][2], g['rows'][1]])))
    rejects('negative T3: target out of range', t3(lambda g: g.__setitem__('target', 1)))
    rejects('negative T3: malformed rows', t3(lambda g: g.__setitem__('rows', [0, 0, 1])))
    rejects('negative T3: edge ball not certified', t3(lambda g: None, edges=[(eb_, None)]))
    small = EC.EdgeBall(dict(edge_c1()[0], r=F.hx(0.03)))
    rejects('negative T3: target edge ball shrunk to r = 0.03', t3(lambda g: None, edges=[(small, tubes)]))
    tb2 = copy.deepcopy(tubes); tb2.rho['h'] = tb2.rho['h'] * 0 + 1e-9
    rejects('negative T3: uniqueness radii shrunk to 1e-9', t3(lambda g: None, edges=[(eb_, tb2)]))


def test_edge_certificate():
    """Whole-certificate run with an edge ball: seeds 0, 1 (inside the chart) send their whole spheres into it by T3
    and must pass (C1, Stage C, T3, coverage); the edge ball has no transfers, so it must fail on its sphere coverage;
    F6 = H(0) and Tao pass; no 25-dim records."""
    import certify_seed_atlas as CS
    d, o = edge_c1()
    seeds = []
    for name in ('pos', 'neg'):
        sd = copy.deepcopy(EDGESEEDS[name])
        c1 = S.certify_c1(S.Ball(sd)); sd['n'] = F.hx(c1['n_cert'] * 1.05)
        sd['transfers'] = [dict(kind='T3', target=0, g='id', rows=sd['t3rows'], cols=sd['t3cols'], boxes=F.sphere_boxes(2))]
        for k in ('pstar', 't3rows', 't3cols', 'matched', 'edge', 'wstar'): sd.pop(k, None)
        seeds.append(sd)
    cert = dict(format='seed-atlas-v1', max_level=9, seeds=seeds, records=[], edge=[dict(d, transfers=[])],
                tao=dict(R=F.hx(0.08), label_radius=F.hx(0.03)))
    with tempfile.TemporaryDirectory() as td:
        p = os.path.join(td, 'edge.json.gz'); rc = os.path.join(td, 'receipt.json')
        with gzip.open(p, 'wt') as f: json.dump(cert, f)
        t = time.time(); code = CS.main([p, '-j', '2', '--receipt', rc])
        res = {(r['item'], r.get('index')): r for r in json.load(open(rc))['results']}
        for j in (0, 1):
            r = res[('seed', j)]
            check('edge certificate: seed %d passes (C1, Stage C, T3 x %s, coverage)' % (j, r.get('transfers', {}).get('T3')), r['ok'], r.get('reason', ''))
        r = res[('edge', 0)]
        check('edge certificate: edge ball C1e + Stage C pass, sphere coverage fails', not r['ok'] and 'coverage' in r.get('reason', '')
              and r.get('stagec_ok'), r.get('reason', ''))
        check('edge certificate: F6 = H(0) and Tao pass', res[('fourier', None)]['ok'] and res[('tao', None)]['ok'])
        check('edge certificate: overall FAIL (the edge sphere is open)', code != 0, '%.0fs' % (time.time() - t))


TESTS = dict(tm=test_tm, boxes=test_boxes, c1=test_c1, sampling=test_sampling, stagec=test_stagec, transfers=test_transfers,
             record=test_record, negative=test_negative, t1prime_f6=test_t1prime_f6, edge=test_edge, edge_certificate=test_edge_certificate, global_=test_global, certificate=test_certificate)

if __name__ == '__main__':
    names = sys.argv[1:] or list(TESTS)
    t0 = time.time()
    for n in names:
        print('== %s' % n, flush=True); TESTS[n]()
    bad = [r for r in RESULTS if not r[1]]
    print('\n%d checks, %d failures, %.0fs' % (len(RESULTS), len(bad), time.time() - t0))
    for r in bad: print('FAILED:', r[0], r[2])
    sys.exit(1 if bad else 0)
