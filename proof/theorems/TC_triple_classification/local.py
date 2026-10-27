"""Arb local uniqueness for the 96-equation, 55-phase MUB triple system.

Angles are in radians. Every accepted inequality is checked in Arb.
See PROOF.md for the uniform Hessian bounds.
"""
from itertools import combinations

from flint import acb, arb, arb_mat

H_POS = [(r, c) for r in range(1, 6) for c in range(1, 6)]
K_POS = [(r, c) for r in range(1, 6) for c in range(6)]
PAIRS = list(combinations(range(6), 2))
I = acb(0, 1)


def residual_jacobian(h, k):
    """Analytic derivative, no finite differences. Order matches triples.py."""
    j = [[arb(0) for _ in range(55)] for _ in range(96)]
    f = [arb(0) for _ in range(96)]
    for matrix, positions, offset, start in ((h, H_POS, 0, 0), (k, K_POS, 25, 30)):
        for p, (a, b) in enumerate(PAIRS):
            s = sum((matrix[r][a].conjugate()*matrix[r][b] for r in range(6)), acb(0))
            f[start+p], f[start+15+p] = s.real, s.imag
            for v, (r, c) in enumerate(positions):
                if c not in (a, b):
                    continue
                ds = I*matrix[r][a].conjugate()*matrix[r][b]*(1 if c == b else -1)
                j[start+p][offset+v] = ds.real
                j[start+15+p][offset+v] = ds.imag
    for a in range(6):
        for b in range(6):
            idx = 60+6*a+b
            s = sum((h[r][a].conjugate()*k[r][b] for r in range(6)), acb(0))
            f[idx] = (s*s.conjugate()).real-6
            for positions, offset, sign, column in ((H_POS, 0, -1, a), (K_POS, 25, 1, b)):
                for v, (r, c) in enumerate(positions):
                    if c == column:
                        ds = sign*I*h[r][a].conjugate()*k[r][b]
                        j[idx][offset+v] = 2*(s.conjugate()*ds).real
    return f, j


def norm_inf(a):
    return max(sum((abs(a[r, c]) for c in range(a.ncols())), arb(0)).upper()
               for r in range(a.nrows()))


def contraction(j, free, radius, rows):
    """Prove injectivity in transverse variables throughout an l-infinity box.

    Does NOT prove existence, family membership, or coverage of any atlas cell.
    """
    if not (radius > 0) or not radius.is_finite():
        raise ValueError('radius must be positive and finite')
    if len(set(free)) != len(free) or any(i not in range(55) for i in free):
        raise ValueError('invalid free coordinates')
    columns = [i for i in range(55) if i not in free]
    if len(rows) != len(columns) or len(set(rows)) != len(rows) or any(i not in range(96) for i in rows):
        raise ValueError('invalid selected rows')
    a = arb_mat([[j[r][c] for c in columns] for r in rows])
    inv = a.inv()
    # Exact dyadic matrix, even though its proposal used an interval inverse.
    b = arb_mat([[inv[r, c].mid() for c in range(len(rows))] for r in range(len(rows))])
    eye = arb_mat([[int(r == c) for c in range(len(rows))] for r in range(len(rows))])
    q0 = norm_inf(eye-b*a)
    lipschitz = max(sum((abs(b[r, c])*(24 if rows[c] < 60 else 480)
                        for c in range(len(rows))), arb(0)).upper() for r in range(len(rows)))
    q = q0 + lipschitz*radius
    if not q < 1:
        raise ValueError('contraction inequality not certified')
    return dict(status='CERTIFIED', free_coordinates=free, rows=rows,
                radius=str(radius), q0_upper=str(q0), lipschitz_upper=str(lipschitz), q_upper=str(q))
