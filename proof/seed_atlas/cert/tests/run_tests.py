"""Tests of the seed-atlas certifier (proof/seed_atlas/cert).  Exits nonzero on any failure.

  python3 proof/seed_atlas/cert/tests/run_tests.py            all tests (about a minute; Stage C is the slow one)
  python3 proof/seed_atlas/cert/tests/run_tests.py tm c1      a subset: tm, c1, sampling, stagec, transfers, record,
                                                              negative, certificate

Positive tests compare with the float prototype (explorations/seed_balls): the certified n must be >= the sampled
true remainder and within 1.5x of the prototype's Taylor-model bound on the same boxes.  Negative tests corrupt one
datum at a time (n, r, P, U, theta0, Mth, orientation, transfer target, winding, corner, group element, boxes) and
require a rejection.
"""
import copy, gzip, json, math, os, random, sys, tempfile, time, warnings
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
    rng = np.random.default_rng(5)
    B = 3
    hf = np.array([[0.05, 0.03, 0.04, 0.02]] * B)
    h = TMA.oarb(hf)
    # each TM represents f = poly + e(u) with a fixed function e (|e| <= rho): e(u) = rho * sin(7 u.v) (unit-ish)
    def realise(t, b, u, seed, cplx):
        rr = float(t.rho[b].flat[0].upper()) if t.rho[b].ndim else float(t.rho[b].upper())
        s = np.sin(7 * u.sum() + seed) * rr
        return poly(t, b, u) + (s * np.exp(1j * seed) if cplx else s)
    worst = 0.0
    # exp_i of a real TM
    a = rand_tm(rng, B, (5,), False, 1e-3, h)
    e = TMA.exp_i(a)
    for b in range(B):
        for _ in range(200):
            u = rng.uniform(-1, 1, 4) * hf[b]
            fa = realise(a, b, u, 0.3, False)
            err = np.abs(np.exp(1j * fa) - poly(e, b, u)) - np.array([float(x.upper()) for x in e.rho[b]])
            worst = max(worst, err.max())
    check('tm: exp_i encloses e^{i f}', worst <= 1e-12, 'max excess %.2e' % worst)
    # entrywise product and matrix product of complex TMs with remainders
    a = rand_tm(rng, B, (3, 3), True, 2e-3, h); bt = rand_tm(rng, B, (3, 3), True, 1e-3, h)
    p = a * bt; m = a @ bt
    worst_p = worst_m = 0.0
    for b in range(B):
        for _ in range(200):
            u = rng.uniform(-1, 1, 4) * hf[b]
            fa = realise(a, b, u, 0.1, True).reshape(3, 3); fb = realise(bt, b, u, 0.7, True).reshape(3, 3)
            rp = np.array([[float(x.upper()) for x in row] for row in p.rho[b]])
            rm = np.array([[float(x.upper()) for x in row] for row in m.rho[b]])
            worst_p = max(worst_p, (np.abs(fa * fb - poly(p, b, u).reshape(3, 3)) - rp).max())
            worst_m = max(worst_m, (np.abs(fa @ fb - poly(m, b, u).reshape(3, 3)) - rm).max())
    check('tm: entrywise product encloses', worst_p <= 1e-12, 'max excess %.2e' % worst_p)
    check('tm: matrix product encloses', worst_m <= 1e-12, 'max excess %.2e' % worst_m)
    # arg near a unimodular centre
    D = rand_tm(rng, B, (3, 3), True, 1e-3, h)
    c0 = np.exp(1j * rng.uniform(-3, 3, (B, 3, 3)))
    D = TMA.TM(TMA.oacb(c0), D.g * arb(0.1), D.q * arb(0.1), D.rho, h)
    Pref = np.angle(c0[0]) + 2 * np.pi
    A = S.arg_tm(D, Pref)
    worst = 0.0
    for b in range(B):
        for _ in range(200):
            u = rng.uniform(-1, 1, 4) * hf[b]
            fD = realise(D, b, u, 0.4, True).reshape(3, 3)
            ra = np.array([[float(x.upper()) for x in row] for row in A.rho[b]])
            d = np.angle(fD) - poly(A, b, u).real.reshape(3, 3)
            d = np.abs(d - 2 * np.pi * np.rint(d / (2 * np.pi)))
            worst = max(worst, (d - ra).max())
    check('tm: arg encloses arg D (mod 2 pi)', worst <= 1e-12, 'max excess %.2e' % worst)
    # norm_sup bounds sup ||f|| over the box
    a = rand_tm(rng, B, (7,), False, 1e-3, h)
    ns = TMA.norm_sup(a)
    worst = 0.0
    for b in range(B):
        for _ in range(300):
            u = np.sign(rng.normal(size=4)) * hf[b] if _ % 3 == 0 else rng.uniform(-1, 1, 4) * hf[b]
            worst = max(worst, np.linalg.norm(realise(a, b, u, 0.2, False).real) - float(ns[b].upper()))
    check('tm: norm_sup >= sampled sup', worst <= 1e-12, 'max excess %.2e' % worst)


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


TESTS = dict(tm=test_tm, c1=test_c1, sampling=test_sampling, stagec=test_stagec, transfers=test_transfers,
             record=test_record, negative=test_negative, certificate=test_certificate)

if __name__ == '__main__':
    names = sys.argv[1:] or list(TESTS)
    t0 = time.time()
    for n in names:
        print('== %s' % n, flush=True); TESTS[n]()
    bad = [r for r in RESULTS if not r[1]]
    print('\n%d checks, %d failures, %.0fs' % (len(RESULTS), len(bad), time.time() - t0))
    for r in bad: print('FAILED:', r[0], r[2])
    sys.exit(1 if bad else 0)
