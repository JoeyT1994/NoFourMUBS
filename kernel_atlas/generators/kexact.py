"""Exact memberships of special matrices in Records, for the kernel (`KernelAtlas/ExactK.lean`).

A matrix with phases pi * M (M rational, 6x6) lies in the Record (P_t, R_t) after a signed permutation A and an
integer winding N if (Lemma 4.1 with u = nu = 0)
    || h(A (pi M) + 2 pi N - P_t) || < R_t.
With pi~ = 3.14159265358979323846 <= pi <= pi~ + 1e-20 and M' = A M + 2N (rational), the kernel checks
    sumsq(h(pi~ M' - P_t)) < D^2,   D = R_t - 1e-20 (sumsq(M') + 1) / 2 >= 0,
since ||h(pi M' - P_t)|| <= ||h(pi~ M' - P_t)|| + (pi - pi~) ||M'|| and ||M'|| <= (sumsq(M') + 1)/2.

The matrices (rows and columns in `idx` order of `I6 = Fin 3 ⊕ Fin 3`):
  * `fourierHadamard` = affineFourierMatrix omega 1 1 (Lean `Step2.Statements`): entries zeta^m, zeta = e^{i pi/3};
  * `taoMatrix omega`, omega = e^{2 pi i/3} and its conjugate: entries omega^k, phases +-2 pi k/3.
Usage: python3 kexact.py   (prints the memberships found; `export_exact.py` writes the Lean data)
"""
import itertools, math, os, sys
from fractions import Fraction as Fr

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
sys.path.insert(0, HERE)
sys.path.insert(0, os.path.join(ROOT, 'proof', 'atlas'))

PI_LO = Fr(314159265358979323846, 10 ** 20)
PI_ERR = Fr(1, 10 ** 20)

# fourierHadamard: exponents m of zeta = e^{i pi/3} (1 -> 0, -w^2 -> 1, w -> 2, -1 -> 3, w^2 -> 4, -w -> 5)
FOURIER_M = [[0, 0, 0, 0, 0, 0], [0, 3, 0, 3, 0, 3], [0, 0, 2, 2, 4, 4],
             [0, 3, 2, 5, 4, 1], [0, 0, 4, 4, 2, 2], [0, 3, 4, 1, 2, 5]]
# taoMatrix omega: exponents k of omega
TAO_K = [[0, 0, 0, 0, 0, 0], [0, 0, 1, 1, 2, 2], [0, 1, 0, 2, 2, 1],
         [0, 1, 2, 0, 1, 2], [0, 2, 2, 1, 0, 1], [0, 2, 1, 2, 1, 0]]
# tao.py's layout of S6 (the zero-dimensional Tao Record has centre fl(2 pi K/3))
TAO_PY_K = [[0, 0, 0, 0, 0, 0], [0, 0, 1, 1, 2, 2], [0, 1, 0, 2, 2, 1],
            [0, 1, 2, 0, 1, 2], [0, 2, 2, 1, 0, 1], [0, 2, 1, 2, 1, 0]]


def fourier_mq():
    return [[Fr(m, 3) for m in row] for row in FOURIER_M]


def tao_mq(sign):
    return [[Fr(2 * sign * k, 3) for k in row] for row in TAO_K]


def tao_centre():
    """The binary64 centre of tao.py's Record: numpy's 2 * math.pi * K / 3."""
    import numpy as np
    P = 2 * math.pi * np.array(TAO_PY_K) / 3
    return [[Fr(float(P[i][j])) for j in range(6)] for i in range(6)]


def act(sg, tr, rp, cp, X):
    return [[sg * (X[cp[b]][rp[a]] if tr else X[rp[a]][cp[b]]) for b in range(6)] for a in range(6)]


def horq(X):
    rs = [sum(X[a]) / 6 for a in range(6)]
    cs = [sum(X[a][b] for a in range(6)) / 6 for b in range(6)]
    t = sum(rs) / 6
    return [[X[a][b] - rs[a] - cs[b] + t for b in range(6)] for a in range(6)]


def winding(sg, tr, rp, cp, Mq, Pt):
    """Integer N with h(A (pi M) + 2 pi N - P_t) small."""
    import numpy as np
    A = np.array([[float(x) * math.pi for x in r] for r in act(sg, tr, rp, cp, Mq)]) - np.array([[float(x) for x in r] for r in Pt])
    Z = np.exp(1j * A)
    Z = Z / Z[:1, :]
    Z = Z / Z[:, :1]
    D = np.angle(Z)
    base = A - A[:1, :] - A[:, :1] + A[0, 0]
    Nf = (D - base) / (2 * math.pi)
    N = np.rint(Nf)
    assert np.abs(Nf - N).max() < 1e-6
    return [[int(N[a][b]) for b in range(6)] for a in range(6)]


def exact_margin(sg, tr, rp, cp, N, Mq, Pt, Rt):
    """D - ||h(pi~ M' - P_t)|| > 0 (as a float, with the exact test), or None if the exact test fails."""
    Mp = [[x + 2 * N[a][b] for b, x in enumerate(row)] for a, row in enumerate(act(sg, tr, rp, cp, Mq))]
    X = horq([[PI_LO * Mp[a][b] - Pt[a][b] for b in range(6)] for a in range(6)])
    S = sum(x * x for r in Mp for x in r)
    D = Rt - PI_ERR * (S + 1) / 2
    s = sum(x * x for r in X for x in r)
    if D >= 0 and s < D * D:
        return float(D) - math.sqrt(float(s))
    return None


def find_perm_member(Mq, Pt, Rt, gamma=False):
    """Search all row/column permutations (and, if gamma, transposition and sign) for an exact membership."""
    import numpy as np
    perms = list(itertools.permutations(range(6)))
    Mf = np.array([[float(x) * math.pi for x in r] for r in Mq])
    Pf = np.array([[float(x) for x in r] for r in Pt])
    from atlas import hproj
    for sg, tr in ([(1, 0), (-1, 0), (1, 1), (-1, 1)] if gamma else [(1, 0)]):
        X = sg * (Mf.T if tr else Mf)
        for rp in perms:
            Xr = X[list(rp)]
            for cp in perms:
                D = Xr[:, list(cp)] - Pf
                Z = np.exp(1j * D)
                Z = Z / Z[:1, :]
                Z = Z / Z[:, :1]
                if np.linalg.norm(hproj(np.angle(Z))) < float(Rt) * 0.9:
                    N = winding(sg, tr, list(rp), list(cp), Mq, Pt)
                    m = exact_margin(sg, tr, list(rp), list(cp), N, Mq, Pt, Rt)
                    if m is not None:
                        return m, dict(sg=sg, tr=tr, rp=list(rp), cp=list(cp), N=N)
    return None


def find_atlas_member(Mq, maxtry=200):
    """As nonempty.py: walk the atlas Records by corner-signature distance and return the first exact membership
    (Record index, alignment, winding, margin)."""
    import gzip, json
    import numpy as np
    import atlas as AT
    cert = json.load(gzip.open(os.path.join(ROOT, 'proof/atlas/results/atlas_certificate.json.gz'), 'rt'))
    recs = cert['records']
    Pf = np.array([[float(x) * math.pi for x in r] for r in Mq])
    R400 = AT.corner_census(np.exp(1j * Pf))[0]
    Rq = {g: AT.corner_census(np.exp(1j * AT.gmap(g, Pf)))[0] for g in AT.GAMMA}
    F = []
    for r in recs:
        P = np.array([float.fromhex(x) for x in r['phi']]).reshape(6, 6)
        F.append(np.sort(AT.corner_census(np.exp(1j * P))[0]))
    dd = np.linalg.norm(np.array(F) - np.sort(R400), axis=1)
    for t in np.argsort(dd)[:maxtry]:
        r = recs[t]
        P = np.array([float.fromhex(x) for x in r['phi']]).reshape(6, 6)
        Pt = [[Fr(float.fromhex(r['phi'][6 * i + j])) for j in range(6)] for i in range(6)]
        Rt = Fr(r['R'])
        Rt400 = AT.corner_census(np.exp(1j * P))[0]
        for (g, rr, cc, D0, dist) in sorted(AT.align(Pf, Rq, P, Rt400, r['R'], 1e9, top=3), key=lambda z: z[4]):
            sg = -1 if g in ('conj', 'conjtr') else 1
            tr = 1 if g in ('tr', 'conjtr') else 0
            rp, cp = [int(x) for x in rr], [int(x) for x in cc]
            N = winding(sg, tr, rp, cp, Mq, Pt)
            m = exact_margin(sg, tr, rp, cp, N, Mq, Pt, Rt)
            if m is not None:
                return int(t), dict(sg=sg, tr=tr, rp=rp, cp=cp, N=N), m, Pt, Rt
    return None


if __name__ == '__main__':
    res = find_atlas_member(fourier_mq())
    print('fourierHadamard: Record %d, alignment %s, margin %.3e' % (res[0], res[1], res[2]))
    Pt, Rt = tao_centre(), Fr(0.08)
    for sgn in (1, -1):
        m, al = find_perm_member(tao_mq(sgn), Pt, Rt)
        print('taoMatrix(omega^%d): Tao Record, alignment %s, margin %.3e' % (sgn, al, m))
