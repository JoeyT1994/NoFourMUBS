"""Fixtures for the certifier tests: the prototype-built seed balls (data/testballs.json), transfer targets
(data/fixtures.json, built by build_testballs.py), dyadic boxes, and float windings.  Floats here only choose data;
every verdict is the certifier's."""
import copy, gzip, itertools, json, math, os, sys
import numpy as np
HERE = os.path.dirname(os.path.abspath(__file__))
CERT = os.path.dirname(HERE)
ROOT = os.path.abspath(os.path.join(HERE, '../../../..'))
for p in (CERT, os.path.join(ROOT, 'proof/atlas')):
    if p not in sys.path: sys.path.insert(0, p)
import seedcert as S

BALLS = json.load(open(os.path.join(HERE, 'data/testballs.json')))['seeds']
FIX = json.load(open(os.path.join(HERE, 'data/fixtures.json')))
hx = lambda x: float(x).hex()
fh = lambda s: float.fromhex(s) if isinstance(s, str) else float(s)


def ball(i): return S.Ball(BALLS[i])
def raw(i): return copy.deepcopy(BALLS[i])


def scaled(d, r):
    d = copy.deepcopy(d); d['r'] = hx(r); return d


def sphere_boxes(m):
    """All level-m dyadic boxes meeting the unit sphere."""
    return [[m] + list(idx) for idx in itertools.product(range(1 << m), repeat=4) if not S.misses_unit_sphere((m,) + idx)]


def shell_boxes(rd, m, scale):
    """All level-m boxes of the eta-cube not certified off the record's shell."""
    return [[m] + list(idx) for idx in itertools.product(range(1 << m), repeat=4) if not S.offshell_arb(rd, (m,) + idx, scale)]


def L_float(g, rows, cols): return S.corner_L(rows, cols) @ S.g_matrix(g)


def wind_T1(src, g, rows, cols, tgt):
    """Float winding for T1 at the source centre (the representative there is P)."""
    th = L_float(g, rows, cols) @ np.array([fh(x) for x in src['P']])
    return [int(x) for x in np.rint((np.array([fh(x) for x in tgt['theta0']]) - th) / (2 * math.pi))]


def wind_T2(Psrc, g, rows, cols, Pt):
    """Float winding (36 ints) making hor(pi g Psrc + 2 pi N - Pt) small (dephase, then recover N; COVERAGE.md)."""
    X = (S.perm_matrix(rows, cols) @ S.g_matrix(g) @ np.asarray(Psrc, float)).reshape(6, 6)
    W = X - np.asarray(Pt, float).reshape(6, 6)
    Z = np.exp(1j * W); Z = Z / Z[:1, :]; Z = Z / Z[:, :1]
    D = np.angle(Z)
    base = W - W[:1, :] - W[:, :1] + W[0, 0]
    return [int(x) for x in np.rint((D - base) / (2 * math.pi)).reshape(36)]


def record_data(rec):
    """Certify the fixture record (the existing record checks, inside seedcert.RecordData); returns (rd, rH, n0)."""
    phi = np.array([fh(x) for x in rec['phi']]).reshape(6, 6)
    rd = S.RecordData(phi, fh(rec['R']), fh(rec['label_radius']), np.array(rec['Tint'], dtype=np.int64).reshape(36, 4))
    return rd, rd.rH, rd.n0


def t3_group(seed_raw, boxes, target=0, g='id'):
    """A T3 group (FORMAT.md section 8) for a test seed ball built inside the edge chart: the chart's row a is the
    seed's row t3rows[a] (likewise columns); windings from the seed's centre phases P (the representative there)."""
    import edgecert as EC
    R, C = seed_raw['t3rows'], seed_raw['t3cols']
    Q = np.array([fh(x) for x in seed_raw['P']])
    sgn, gi = S.g_perm(g); Qp = (sgn * Q[gi]).reshape(6, 6)
    K = np.array([[Qp[R[a], C[b]] - Qp[R[a], C[0]] - Qp[R[0], C[b]] + Qp[R[0], C[0]] for b in range(6)] for a in range(6)]).reshape(36)
    th, ph, pv = K[EC.IDX_TH], K[EC.IDX_PH], K[EC.IDX_PV]
    w = lambda x, ref: [int(v) for v in np.rint((ref - x) / (2 * math.pi))]
    return dict(kind='T3', target=target, g=g, rows=list(R[:3]), cols=list(C[:3]), hcols=list(C[3:]), vrows=list(R[3:]),
                wind=w(th, EC.TH0f), wind_h=w(ph, EC.PH0f), wind_v=w(pv, EC.PH0f), boxes=boxes)
