"""Build test seed balls with the float prototype (explorations/seed_balls), in the SPEC section 8 record format.

For each (atlas record, r, k): best corner of the atlas centre, SeedBall, T = DQ(theta0) = U S V^T, Mth = V S^-1,
U = T Mth, o = sign Im Psi(B(theta0)).  Stored alongside (for the tests only, untrusted):
  n_tm      the prototype's second-order TM bound on the same k^4 boxes (tmball2.tm2_n),
  n_sample  the sampled true remainder max ||Q - P - U w|| (no 1.5 factor), over ||w|| = r and r/2.
The record's own n is 1.25 n_tm, as a driver would choose.
Usage: python build_testballs.py out.json [record:r:k ...]
       FIXTURES=data/fixtures.json python build_testballs.py data/testballs.json     (transfer fixtures)
       F6FIX=data/f6fixture.json python build_testballs.py                           (T1' fixture next to F6)
       EDGEFIX=data/edgeballs.json python build_testballs.py                         (edge balls at F6)
       EDGESEED=data/edgeballs.json python build_testballs.py                        (seed balls inside the edge chart)
"""
import gzip, json, os, sys, time, warnings
import numpy as np
warnings.filterwarnings('ignore')
HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '../../../..'))
sys.path.insert(0, os.path.join(ROOT, 'explorations/seed_balls'))
sys.path.insert(0, os.path.join(ROOT, 'proof/atlas'))

DEFAULT = ('2003:0.05:3', '2781:0.04:3', '562:0.02:3', '2003:0.08:4')
hx = lambda x: float(x).hex()


def psi(S):
    perm = sum(S[0, a] * S[1, b] * S[2, c] for a, b, c in ((0, 1, 2), (0, 2, 1), (1, 0, 2), (1, 2, 0), (2, 0, 1), (2, 1, 0)))
    return perm * np.linalg.det(S) ** 2 / np.prod(S)


def build(k_rec, r, k):
    from seedball import best_corner_split, SeedBall, complete
    from tmball2 import tm2_n
    recs = json.load(gzip.open(os.path.join(ROOT, 'proof/atlas/results/atlas_certificate.json.gz')))['records']
    phi = np.array([float.fromhex(x) for x in recs[k_rec]['phi']])
    th, ph, pv, R, _ = best_corner_split(np.exp(1j * phi.reshape(6, 6)))
    sb = SeedBall(th, ph, pv)
    Us, S, Vt = np.linalg.svd(sb.T, full_matrices=False)
    Mth = Vt.T / S[None, :]
    U = sb.T @ Mth
    H0, _, _ = complete(sb.theta0, sb.phih, sb.phiv)
    o = int(np.sign(psi(H0[:3, 3:]).imag))
    assert np.sign(psi(H0[3:, :3].T).imag) == -o, 'centre not matched'
    t0 = time.time(); st = {}
    n_tm = tm2_n(sb, r, k_per_axis=k, stats=st)
    t_tm = time.time() - t0
    # sampled true remainder (no safety factor), in the same w coordinates
    rng = np.random.default_rng(1)
    dirs = rng.normal(size=(300, 4)); dirs /= np.linalg.norm(dirs, axis=1)[:, None]
    dirs = np.vstack([dirs, np.eye(4), -np.eye(4)])
    worst = 0.0
    for s in (r, r / 2):
        for w in dirs:
            q, _ = sb.Q(sb.theta0 + Mth @ (s * w))
            worst = max(worst, np.linalg.norm(q - sb.P.reshape(36) - U @ (s * w)))
    return dict(atlas_record=k_rec, theta0=[hx(x) for x in sb.theta0], Mth=[hx(x) for x in Mth.reshape(16)], r=hx(r), o=o, k=k,
                P=[hx(x) for x in sb.P.reshape(36)], U=[hx(x) for x in U.reshape(144)], n=hx(1.25 * n_tm),
                label_radius=hx(0.03), transfers=[], n_tm=n_tm, n_sample=worst, t_proto=t_tm, edge_R=float(R))


MODE = 'fixtures' if os.environ.get('FIXTURES') else ('f6' if os.environ.get('F6FIX') else ('edge' if os.environ.get('EDGEFIX') else ('edgeseed' if os.environ.get('EDGESEED') else 'balls')))

if __name__ == '__main__' and MODE == 'balls':
    out = sys.argv[1]; specs = sys.argv[2:] or DEFAULT
    balls = []
    for sp in specs:
        a, b, c = sp.split(':')
        t = time.time(); d = build(int(a), float(b), int(c))
        print('record %s r %s k %s: n_tm %.4e  n_sample %.4e  proto %.1fs (total %.1fs)' % (a, b, c, d['n_tm'], d['n_sample'], d['t_proto'], time.time() - t), flush=True)
        balls.append(d)
    json.dump(dict(format='seed-atlas-testballs', seeds=balls), open(out, 'w'), indent=1)


# ---------------------------------------------------------------------------------------- transfer fixtures
def ball_from_corner(H, rI, rJ, r, k=3):
    """A seed ball (prototype) at the corner (rI[:3], rJ[:3]) of the Hadamard H, rows/cols ordered rI, rJ."""
    from seedball import SeedBall, complete
    M = H[np.ix_(rI, rJ)]
    M = M / M[:, :1]; M = M / M[:1, :]
    th = np.angle([M[1, 1], M[1, 2], M[2, 1], M[2, 2]])
    ph = np.angle(np.concatenate([M[1, 3:], M[2, 3:]])); pv = np.angle(np.concatenate([M[3:, 1], M[3:, 2]]))
    sb = SeedBall(th, ph, pv)
    Us, S, Vt = np.linalg.svd(sb.T, full_matrices=False)
    Mth = Vt.T / S[None, :]; U = sb.T @ Mth
    H0, _, _ = complete(sb.theta0, sb.phih, sb.phiv)
    o = int(np.sign(psi(H0[:3, 3:]).imag)); matched = bool(np.sign(psi(H0[3:, :3].T).imag) == -o)
    return dict(theta0=[hx(x) for x in sb.theta0], Mth=[hx(x) for x in Mth.reshape(16)], r=hx(r), o=o, k=k,
                P=[hx(x) for x in sb.P.reshape(36)], U=[hx(x) for x in U.reshape(144)], n=hx(0.01), label_radius=hx(0.03),
                transfers=[], matched=matched, edge=float(dist_edge(sb.theta0)))


def dist_edge(th):
    from seedball import dist_to_edge
    return dist_to_edge(th)


def build_fixtures(balls):
    """For test ball 0 (atlas record 2003, best corner): a seed ball at another matched corner of its centre
    (T1 general target), the alignment of its centre to record 2003 (T2 target), and a large seed ball around the
    record's best corner (T1' target for the record's boundary)."""
    from seedball import complete, best_corner_split
    import itertools as it
    A = balls[0]
    th0 = np.array([float.fromhex(x) for x in A['theta0']])
    P = np.array([float.fromhex(x) for x in A['P']]).reshape(6, 6)
    H = np.exp(1j * P)
    best = None
    for I in it.combinations(range(6), 3):
        for J in it.combinations(range(6), 3):
            if set(I) == {0, 1, 2} and set(J) == {0, 1, 2}: continue
            Ic = [x for x in range(6) if x not in I]; Jc = [x for x in range(6) if x not in J]
            M = H[np.ix_(list(I) + Ic, list(J) + Jc)]; M = M / M[:, :1]; M = M / M[:1, :]
            th = np.angle([M[1, 1], M[1, 2], M[2, 1], M[2, 2]])
            o = np.sign(psi(M[:3, 3:]).imag); m = np.sign(psi(M[3:, :3].T).imag) == -o
            if not m: continue
            e = dist_edge(th)
            if best is None or e > best[0]: best = (e, list(I) + Ic, list(J) + Jc)
    e, rI, rJ = best
    corner = ball_from_corner(H, rI, rJ, 0.1)
    # the record: atlas record 2003, and the best-corner permutation of its centre (the gauge of ball 0)
    recs = json.load(gzip.open(os.path.join(ROOT, 'proof/atlas/results/atlas_certificate.json.gz')))['records']
    phi = np.array([float.fromhex(x) for x in recs[2003]['phi']]).reshape(6, 6)
    Hr = np.exp(1j * phi)
    bestr = None
    for I in it.combinations(range(6), 3):
        for J in it.combinations(range(6), 3):
            Ic = [x for x in range(6) if x not in I]; Jc = [x for x in range(6) if x not in J]
            M = Hr[np.ix_(list(I) + Ic, list(J) + Jc)]; M = M / M[:, :1]; M = M / M[:1, :]
            th = np.angle([M[1, 1], M[1, 2], M[2, 1], M[2, 2]])
            d = np.linalg.norm(np.angle(np.exp(1j * (th - th0))))
            if bestr is None or d < bestr[0]: bestr = (d, list(I) + Ic, list(J) + Jc)
    _, rIr, rJr = bestr
    big = ball_from_corner(Hr, rIr, rJr, 0.5)
    return dict(corner=dict(ball=corner, rows=rI, cols=rJ),
                record=dict(index=2003, phi=recs[2003]['phi'], R=float(recs[2003]['R']), label_radius=float(recs[2003]['label_radius']),
                            Tint=recs[2003]['Tint'], rows=rIr, cols=rJr, big=big))


if __name__ == '__main__' and MODE == 'fixtures':
    balls = json.load(open(sys.argv[1]))['seeds']
    fx = build_fixtures(balls)
    json.dump(fx, open(os.environ['FIXTURES'], 'w'), indent=1)
    print('corner', fx['corner']['rows'], fx['corner']['cols'], 'o', fx['corner']['ball']['o'], 'edge', fx['corner']['ball']['edge'])
    print('record rows', fx['record']['rows'], 'cols', fx['record']['cols'], 'big o', fx['record']['big']['o'])


# ---------------------------------------------------------------------------------------- T1' fixture next to F6
def build_f6_fixture(seed=3, r_ball=0.05):
    """Atlas record 877 (it contains F6), a boundary Hadamard K* of it (direction from `seed`), the matched corner of K*
    furthest from the edge of Omega, and a prototype seed ball of radius r_ball at that corner.  Returns the record,
    the seed ball, the corner, eta* and the float amplification ||Mth^-1 L|| (for the test's expectations)."""
    import itertools as it
    sys.path.insert(0, os.path.join(ROOT, 'proof/seed_atlas/cert'))
    import seedcert as S
    recs = json.load(gzip.open(os.path.join(ROOT, 'proof/atlas/results/atlas_certificate.json.gz')))['records']
    r = recs[877]
    phi = np.array([float.fromhex(x) for x in r['phi']]).reshape(6, 6)
    rd = S.RecordData(phi, float(r['R']), float(r['label_radius']), np.array(r['Tint'], dtype=np.int64).reshape(36, 4), stage_c=False)
    rng = np.random.default_rng(seed)
    d = rng.normal(size=4)
    for _ in range(30):                                        # boundary: ||Tf eta + Nf x(eta)|| = R
        eta = d * (rd.R / np.linalg.norm(rd.Tf @ d))
        x, ok, _ = S._solve_x(rd, eta[None])
        nrm = np.linalg.norm(rd.Tf @ eta + rd.Nf @ x[0]); d = d * (rd.R / nrm)
    eta = d * (rd.R / np.linalg.norm(rd.Tf @ d)); x, ok, _ = S._solve_x(rd, eta[None])
    Q = (rd.P + rd.Tf @ eta + rd.Nf @ x[0]).reshape(6, 6)
    H = np.exp(1j * Q)
    best = None
    for I in it.combinations(range(6), 3):
        for J in it.combinations(range(6), 3):
            Ic = [k for k in range(6) if k not in I]; Jc = [k for k in range(6) if k not in J]
            M = H[np.ix_(list(I) + Ic, list(J) + Jc)]; M = M / M[:, :1]; M = M / M[:1, :]
            th = np.angle([M[1, 1], M[1, 2], M[2, 1], M[2, 2]])
            o = np.sign(psi(M[:3, 3:]).imag)
            if np.sign(psi(M[3:, :3].T).imag) != -o: continue
            e = dist_edge(th)
            if best is None or e > best[0]: best = (e, list(I) + Ic, list(J) + Jc)
    e, rI, rJ = best
    ball = ball_from_corner(H, rI, rJ, r_ball)
    Mth = np.array([float.fromhex(v) for v in ball['Mth']]).reshape(4, 4)
    L = S.corner_L(rI[:3], rJ[:3])
    amp = np.linalg.norm(np.linalg.inv(Mth) @ L, 2)
    return dict(record=877, phi=r['phi'], R=float(r['R']), label_radius=float(r['label_radius']), Tint=r['Tint'],
                eta=[float(v) for v in eta], rows=rI[:3], cols=rJ[:3], ball=ball, edge=float(e), amp=float(amp))


if __name__ == '__main__' and MODE == 'f6':
    fx = build_f6_fixture()
    json.dump(fx, open(os.environ['F6FIX'], 'w'), indent=1)
    print('corner', fx['rows'], fx['cols'], 'edge %.3f' % fx['edge'], 'amp %.1f' % fx['amp'], 'o', fx['ball']['o'])


# ---------------------------------------------------------------------------------------- edge balls at F6
def build_edge(r, k, label=0.03, nsamp=200):
    """An edge-ball record at F6 (explorations/seed_balls/edgeball.py): P = phases of the completion at p = 0 (F6's
    corner (0,1,2)), T = dQ/dp by central differences, Mth = V S^-1, U = T Mth; n = 1.25 x the sampled remainder
    (a placeholder; the tests set n from the certifier).  Also returns the sampled remainder."""
    import edgeball as EB
    H0, ok, xh0, xv0 = EB.complete(np.zeros(4)); P = np.angle(H0)
    def Q(p):
        H, ok, _, _ = EB.complete(np.asarray(p, float), steps=max(1, int(np.ceil(np.linalg.norm(p) / 0.05))))
        return None if not ok else (P + np.angle(H * np.exp(-1j * P))).reshape(36)
    hh = 1e-5
    T = np.array([(Q(hh * e) - Q(-hh * e)) / (2 * hh) for e in np.eye(4)]).T
    U, Sv, Vt = np.linalg.svd(T, full_matrices=False); M = Vt.T / Sv[None, :]
    U = T @ M
    rng = np.random.default_rng(0); worst = 0.0
    for s in (r, r / 2):
        for _ in range(nsamp):
            w = rng.normal(size=4); w *= s / np.linalg.norm(w)
            q = Q(M @ w); worst = max(worst, np.linalg.norm(q - P.reshape(36) - U @ w))
    return dict(Mth=[hx(x) for x in M.reshape(16)], r=hx(r), P=[hx(x) for x in P.reshape(36)], U=[hx(x) for x in U.reshape(144)],
                n=hx(1.25 * worst), label_radius=hx(label), k=k, transfers=[], n_sample=worst, sv=[float(x) for x in Sv])


if __name__ == '__main__' and os.environ.get('EDGEFIX'):
    out = {}
    for r in (0.02, 0.1, 0.125):
        e = build_edge(r, [3, 3, 3, 3])
        out[str(r)] = e
        print('edge r %.3f: sampled n %.3e  sv %s' % (r, e['n_sample'], np.round(e['sv'], 4)), flush=True)
    json.dump(out, open(os.environ['EDGEFIX'], 'w'), indent=1)


def build_edge_seed(edge, wstar, r=0.02, k=3):
    """A prototype seed ball at the best matched corner (largest edge distance) of K* = H(p*), p* = Mth w* in the
    edge chart, and the T3 data back to F6's corner: rows[a] / cols[b] = position in the seed's order of K*'s row a /
    column b (full permutations), g = id."""
    import edgeball as EB
    import itertools as it
    M = np.array([float.fromhex(x) for x in edge['Mth']]).reshape(4, 4)
    p = M @ np.asarray(wstar, float)
    H, ok, _, _ = EB.complete(p, steps=max(1, int(np.ceil(np.linalg.norm(p) / 0.05))))
    assert ok
    best = None
    for I in it.combinations(range(6), 3):
        for J in it.combinations(range(6), 3):
            Ic = [x for x in range(6) if x not in I]; Jc = [x for x in range(6) if x not in J]
            Mm = H[np.ix_(list(I) + Ic, list(J) + Jc)]; Mm = Mm / Mm[:, :1]; Mm = Mm / Mm[:1, :]
            th = np.angle([Mm[1, 1], Mm[1, 2], Mm[2, 1], Mm[2, 2]])
            o = np.sign(psi(Mm[:3, 3:]).imag)
            if np.sign(psi(Mm[3:, :3].T).imag) != -o: continue
            e = dist_edge(th)
            if best is None or e > best[0]: best = (e, list(I) + Ic, list(J) + Jc)
    e, rI, rJ = best
    d = ball_from_corner(H, rI, rJ, r, k=k)
    d['pstar'] = [float(x) for x in p]
    d['t3rows'] = [rI.index(a) for a in range(6)]; d['t3cols'] = [rJ.index(b) for b in range(6)]
    return d


if __name__ == '__main__' and os.environ.get('EDGESEED'):
    ed = json.load(open(os.environ['EDGESEED']))
    out = {}
    for name, w, r in (('pos', [0.0, 0.0, 0.0, 0.05], 0.005), ('neg', [0.01, -0.01, 0.0, -0.05], 0.005),
                       ('sphere', [0.0, 0.0, 0.0, 0.1], 0.01)):
        d = build_edge_seed(ed['0.1'], w, r=r)
        d['wstar'] = w
        out[name] = d
        print(name, 'p*', np.round(d['pstar'], 3), 'o', d['o'], 'matched', d['matched'], 'edge %.3f' % d['edge'], 'rows', d['t3rows'], 'cols', d['t3cols'])
    json.dump(out, open('data/edgeseeds.json', 'w'), indent=1)
