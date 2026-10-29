"""Labelled-Fourier-score discharge of open patterns (EXPERIMENTAL; Arb).

For a (sub-)ball record and each pattern the certifier left open, with the pattern's column enclosures
(every actual zero has column phases V_k with ||V_k - v0_k|| <= pr_k, mean-zero gauge) and H's phase enclosure
Q = Q0 + U w + H2[w,w]/2 + X xi (|w| <= r, |xi| <= tau), this bounds over the whole pattern

  Gamma_F(L) for L = H*K/sqrt6, and Gamma_F(K),

where Gamma_F is the labelled Fourier score of the TC_questions_3_4 return (REPORT.md section 3):
  Gamma_F(exp iQ) = (1/15) min_{a,b} || dist_{2pi}(RQ - (pi/3) v(a,b)) ||_2,
  (RQ)_(ik;jl) = Q_ij + Q_kl - Q_il - Q_kj (i<k, j<l),  v(a,b)_(ik;jl) = (a_i - a_k)(b_j - b_l),
which satisfies |Gamma_F(exp iQ) - Gamma_F(exp iP)| <= (2/5) ||Q - P||_F (PROVED there).

Upper bound for L: centre L_c = H_c* K_c / sqrt6 (acb), P = arg L_c.  For an actual zero, column k of L - L_c is
H_c*(K_k - K_ck)/sqrt6 + (H - H_c)* K_k/sqrt6, so ||(L - L_c)_k|| <= s pr_k + ||H - H_c||_F =: d_k with
s = ||H_c||_op/sqrt6 <= sqrt(6 + ||H_c*H_c - 6I||_F)/sqrt6 and ||K_k|| = sqrt6.  Each actual entry t has |t| = 1, so
|arg t - arg c| <= asin(|t - c|/|c|) <= kappa |t - c|/m with m = min |L_c entries|, kappa = asin(x)/x at
x = max_k d_k/m < 1.  Hence ||arg L - P||_F <= kappa sqrt(sum d_k^2)/m =: E and
Gamma_F(L) <= Gamma_F(exp iP) + (2/5) E, with Gamma_F(exp iP) bounded above by one alignment evaluated in Arb.
For K directly: Gamma_F(K) <= Gamma_F(exp i v0) + (2/5) sqrt(sum pr_k^2).

A pattern is DISCHARGED-FOURIER when min of the two upper bounds is <= 19/50 (every triple with a transition there
is classified: Fourier-neighbourhood theorem of the same return, given the atlas cover, the X-ball and the 39 split
closures it lists); DISCHARGED-ORDERING when it is < the ball's certified lower bound of Gamma_F(H) (the
minimum-transition theorem of TC_ordering_result).

  python gamma_test.py TC_TREE GAMMA_LOWER SUBATLAS SUB RECEIPTS.jsonl
"""
import gzip, itertools, json, math, os, sys
from fractions import Fraction
import numpy as np

import hashlib as _h
GAMMA_SHA = _h.sha256(open(__file__, 'rb').read()).hexdigest()
QUAD = [(i, k, j, l) for i in range(6) for k in range(i + 1, 6) for j in range(6) for l in range(j + 1, 6)]
LABELS = [(0,) + p for p in itertools.permutations(range(1, 6))]


def best_alignment(P):
    """The (a, b) minimising the labelled score of exp(iP) (float search; only used to choose an alignment)."""
    I = np.array(QUAD)
    rq = P[I[:, 0], I[:, 2]] + P[I[:, 1], I[:, 3]] - P[I[:, 0], I[:, 3]] - P[I[:, 1], I[:, 2]]
    A = np.array([[a[i] - a[k] for i in range(6) for k in range(i + 1, 6)] for a in LABELS])      # 120 x 15
    B = np.array([[b[j] - b[l] for j in range(6) for l in range(j + 1, 6)] for b in LABELS])      # 120 x 15
    ik = [(i, k) for i in range(6) for k in range(i + 1, 6)]; jl = [(j, l) for j in range(6) for l in range(j + 1, 6)]
    pos = {(ik.index((i, k)), jl.index((j, l))): n for n, (i, k, j, l) in enumerate(QUAD)}
    order = [pos[(x, y)] for x in range(15) for y in range(15)]
    rq15 = rq[order].reshape(15, 15)
    best = None
    for ai in range(120):
        d = rq15[None, :, :] - (math.pi / 3) * A[ai][None, :, None] * B[:, None, :]          # (120 b, 15 ik, 15 jl)
        d = d - 2 * math.pi * np.round(d / (2 * math.pi))
        s = (d ** 2).sum(axis=(1, 2))
        bi = int(np.argmin(s))
        if best is None or s[bi] < best[0]: best = (float(s[bi]), ai, bi)
    return LABELS[best[1]], LABELS[best[2]]


def up(x):
    """An exact binary64 number >= every point of the Arb ball x."""
    from flint import arb
    v = float(x.upper())
    while arb(v) < x.upper(): v = math.nextafter(v, math.inf)
    return v


def lo(x):
    """An exact binary64 number <= every point of the Arb ball x."""
    from flint import arb
    v = float(x.lower())
    while arb(v) > x.lower(): v = math.nextafter(v, -math.inf)
    return v


def score_upper(P, a, b, arb):
    """Arb upper bound of Gamma_F(exp iP) using the alignment (a, b); P is a 6x6 list of arb."""
    tp = 2 * arb.pi(); acc = arb(0)
    for i, k, j, l in QUAD:
        x = P[i][j] + P[k][l] - P[i][l] - P[k][j] - (arb.pi() / 3) * ((a[i] - a[k]) * (b[j] - b[l]))
        n = round(float(x.mid()) / (2 * math.pi)); y = abs(x - n * tp)
        acc += y * y
    return up((arb(acc.upper()).sqrt() / 15))                    # sqrt of the upper endpoint: never NaN near 0


M = {}


def setup(tc):
    fn = os.path.join(tc, 'proof/theorems/TC_triple_classification/family_neighbourhoods')
    sys.path.insert(0, fn); os.chdir(fn)
    import run as R, native_cover as NC, moving_symmetry as MS, patches as P
    from flint import ctx
    ctx.prec = 160
    M.update(R=R, NC=NC, MS=MS, P=P)


def evaluate(glow, sa, sub, row, doc=None):
    """One (sub-)ball record: the receipt row of the certifier for it, and the bounds for its open patterns."""
    R, NC, MS, P = M['R'], M['NC'], M['MS'], M['P']
    from flint import arb, acb
    closed_numbers = {p['number'] for p in row.get('patterns', []) if p['status'] in ('CERTIFIED', 'EXCLUDED')}
    if doc is None: doc = json.load(gzip.open(sa, 'rt'))
    rec = doc['seeds'][sub]
    ball_index = (doc.get('info') or {}).get('split', {}).get('parent', sub)
    g_h = Fraction(glow[str(ball_index)])                    # the certified lower bound, an exact decimal
    ball = R.SC.Ball(rec)
    model = P.normal_form(ball, prec=160)
    h = np.exp(1j * MS.numeric(model['Q0']).reshape(6, 6))
    roots = NC.propose_roots(h); cover = NC.complete_cover(ball, model, roots)
    prepared, bounds, cliques, steps = NC.contract_patterns(model, roots, cover)
    # every pattern the certifier did not close is open: a timed-out row lists none, so all of them are
    if 'patterns_after_column_filter' in row and row['patterns_after_column_filter'] != len(cliques):
        raise ArithmeticError('recomputed pattern count differs from the receipt')
    openp = [n for n in range(len(cliques)) if n not in closed_numbers]
    r, tau = model['r'], model['tau']
    q0, u, h2, x = (model[k] for k in ('Q0', 'U', 'H2', 'X'))

    def rownorm(m, i):
        return sum((abs(m[i, j]).upper() * abs(m[i, j]).upper() for j in range(m.ncols())), arb(0)).sqrt()
    # each H phase moves by at most hrad_i from a fixed point of the centre ball q0_i (its radius is included)
    hrad = [rownorm(u, i) * r + rownorm(h2, i) * r * r / 2 + rownorm(x, i) * tau + arb(q0[i, 0].rad()) for i in range(36)]
    dH = sum((v * v for v in hrad), arb(0)).sqrt()
    Hc = [[acb(0, q0[6 * a + c, 0]).exp() for c in range(6)] for a in range(6)]
    G2 = arb(0)
    for c in range(6):
        for d in range(6):
            g = sum((Hc[a][c].conjugate() * Hc[a][d] for a in range(6)), acb(0)) - (6 if c == d else 0)
            G2 += abs(g).upper() * abs(g).upper()           # never x**2 on a ball containing 0 (NaN in flint 0.9)
    s = (arb(6) + G2.sqrt()).sqrt() / arb(6).sqrt()
    out = []
    for number in openp:
        cl = cliques[number]
        v0 = [[prepared[c]['v0'][a, 0] for c in cl] for a in range(6)]                    # K_c phases (row a, col k)
        # column radius about a fixed point of the centre ball v0 (its radii are included)
        pr = [(arb(bounds[c]['phase_radius']) + sum((arb(v0[a][k].rad()) for a in range(6)), arb(0))).upper()
              for k, c in enumerate(cl)]
        Kc = [[acb(0, v0[a][k]).exp() for k in range(6)] for a in range(6)]
        Lc = [[sum((Hc[a][c].conjugate() * Kc[a][k] for a in range(6)), acb(0)) / arb(6).sqrt() for k in range(6)]
              for c in range(6)]
        # Everything below is Arb; stored bounds are exact binary64 numbers rounded outward (up, lo).
        m = None
        for c in range(6):
            for k in range(6):
                t = arb(lo(abs(Lc[c][k])))                          # exact binary64 lower bounds: exact comparisons
                if m is None or t < m: m = t
        dk = [arb(up(s * pr[k] + dH)) for k in range(6)]
        res = dict(pattern=number, pr_hex=[up(arb(p)).hex() for p in pr], dH_hex=up(dH).hex(), m_hex=lo(m).hex())
        gL = None
        if m > 0:
            top = dk[0]
            for d in dk[1:]:
                if d > top: top = d                                 # exact binary64 points: exact comparisons
            xm = arb(up(top / m))
            if xm < 1:
                kappa = arb(up(xm.asin() / xm)) if xm > 0 else arb(1)   # asin(x)/x increases on [0, 1)
                E = arb(up(kappa * sum((d * d for d in dk), arb(0)).sqrt() / m))
                PL = [[Lc[c][k].arg() for k in range(6)] for c in range(6)]
                a, b = best_alignment(np.array([[float(PL[c][k].mid()) for k in range(6)] for c in range(6)]))
                centre = score_upper(PL, a, b, arb)
                gL = up(arb(centre) + arb(2) / 5 * E)
                res.update(E_L_hex=up(E).hex(), g_centre_L_hex=centre.hex(), g_up_L_hex=gL.hex())
        PK = [[v0[a][k] for k in range(6)] for a in range(6)]
        a, b = best_alignment(np.array([[float(PK[i][j].mid()) for j in range(6)] for i in range(6)]))
        centreK = score_upper(PK, a, b, arb)
        prs = [arb(up(arb(p))) for p in pr]
        gK = up(arb(centreK) + arb(2) / 5 * sum((p * p for p in prs), arb(0)).sqrt())
        res.update(g_up_K_hex=gK.hex())
        best = gK if gL is None else min(gL, gK)
        res.update(fourier=Fraction(best) <= Fraction(19, 50), ordering=Fraction(best) < g_h)
        out.append(res)
    import hashlib
    sha = lambda b: hashlib.sha256(b).hexdigest()
    return dict(subatlas=os.path.basename(sa), subatlas_sha256=sha(open(sa, 'rb').read()), sub=sub,
                seed_sha256=sha(json.dumps(rec, sort_keys=True).encode()), receipt_binding=row.get('binding'),
                gamma_sha256=GAMMA_SHA, patterns_total=len(cliques), closed_by_certifier=sorted(closed_numbers),
                ball=ball_index, g_lo_H=glow[str(ball_index)], open_patterns=len(openp),
                fourier=sum(o['fourier'] for o in out), ordering=sum(o['ordering'] for o in out), patterns=out)


def receipts_of(path):
    rows = {}
    for l in open(path):
        try:
            x = json.loads(l)
        except ValueError:
            continue
        i = x.get('index')
        if i not in rows or (rows[i]['status'] == 'NOT ESTABLISHED' and x['status'] != 'NOT ESTABLISHED'): rows[i] = x
    return rows


def one(job):
    import signal
    glow, sa, sub, seconds = job
    def expire(*_): raise TimeoutError('gamma time limit')
    signal.signal(signal.SIGALRM, expire); signal.alarm(seconds)
    try:
        row = receipts_of(sa[:-len('.json.gz')] + '.jsonl')[sub]
        return evaluate(glow, sa, sub, row)
    except Exception as e:                                  # noqa: BLE001
        return dict(subatlas=os.path.basename(sa), sub=sub, error='%s: %s' % (type(e).__name__, e))
    finally:
        signal.alarm(0)


def main():
    a = sys.argv[1:]
    if a[0] == 'batch':
        # batch TC_TREE GAMMA_LOWER LIST OUT.jsonl WORKERS SECONDS: LIST has lines "SUBATLAS SUB"
        tc, gl, lst, outp, workers, seconds = a[1], a[2], a[3], a[4], int(a[5]), int(a[6])
        glow = json.load(open(gl)); setup(tc)
        jobs = [(glow, l.split()[0], int(l.split()[1]), seconds) for l in open(lst) if l.strip()]
        from concurrent.futures import ProcessPoolExecutor, as_completed
        ctxf = __import__('multiprocessing').get_context('fork')
        with ProcessPoolExecutor(workers, mp_context=ctxf) as pool, open(outp, 'a') as f:
            for fu in as_completed([pool.submit(one, j) for j in jobs]):
                f.write(json.dumps(fu.result()) + '\n'); f.flush()
    else:
        tc, gl, sa, sub, receipts = a[0], a[1], a[2], int(a[3]), a[4]
        setup(tc)
        print(json.dumps(evaluate(json.load(open(gl)), sa, sub, receipts_of(receipts)[sub])))


if __name__ == '__main__': main()
