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
    """Certify the fixture record with the existing checker; returns (RecordData, rH, n)."""
    import certify as CF
    phi = np.array([fh(x) for x in rec['phi']]).reshape(6, 6)
    rr = dict(phi=phi, R=rec['R'], label_radius=rec['label_radius'], Tint=np.array(rec['Tint'], dtype=np.int64).reshape(36, 4))
    S.ctx.prec = 120
    rH, n = CF.certify_record(rr)
    S.ctx.prec = S.PREC
    return S.RecordData(phi, rr['Tcert'], rec['R'], rH, n), rH, n
