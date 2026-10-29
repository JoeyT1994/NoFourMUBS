#!/usr/bin/env python3
"""Exclude a certifier pattern by per-column interval Newton and pairwise orthogonality (EXPERIMENTAL, Arb).

  python column_exclusion.py SNAPSHOT.json [--iters N]

The argument. For H in the cell (H[a, c] = exp(i Q[6a + c]), Q enclosed entrywise from the normal-form model), a third
basis K of the pattern has columns k_c = exp(i V_c)/sqrt6 with:
  (1) every |<h_i, k_c>|^2 = 1/6, the unbiasedness to H, five independent equations in V_c's five mean-zero phases (the
      six sum to zero for a Hadamard H);
  (2) V_c lying in one of the colour's fine bins, v0_c + delta + u with ||u|| <= rho (the certifier's complete cover,
      inherited);
  (3) <k_a, k_b> = 0 for a != b.
For each column and bin, a Krawczyk operator in the five gauge coordinates t (V = v0 + basis t), with H's phases as
intervals, contains every zero of (1) in the bin, so iterating X <- K(X) intersected with X keeps every zero, and an
empty intersection rules the bin out. If some column pair (a, b) has |<k_a, k_b>| bounded away from 0 for every pair of
surviving enclosures, no K satisfies (3), and the pattern has no zero for any H in the cell.
"""
import argparse, json, math, sys
import numpy as np
from flint import arb, acb, arb_mat, acb_mat, ctx

ctx.prec = 128


def A(s):
    return arb(s)


def rownorm(rows):
    return sum((abs(x).upper() * abs(x).upper() for x in rows), arb(0)).sqrt()


def hull(lo, hi):
    """An arb ball containing [lo, hi] (lo, hi exact endpoints)."""
    return lo.union(hi)


def main():
    ap = argparse.ArgumentParser(); ap.add_argument('snapshot'); ap.add_argument('--iters', type=int, default=8)
    ap.add_argument('--min-width', type=float, default=0.004, help='stop bisecting below this radius (box kept)')
    a = ap.parse_args()
    s = json.load(open(a.snapshot)); m = s['model']
    r, tau = A(m['r']), A(m['tau'])
    q0 = [A(x) for x in m['Q0']]
    hrad = [rownorm([A(x) for x in m['U'][i]]) * r + rownorm([A(x) for x in m['H2'][i]]) * r * r / 2
            + rownorm([A(x) for x in m['X'][i]]) * tau for i in range(36)]
    Qbox = [q0[i] + arb(0, hrad[i].upper()) for i in range(36)]               # each H phase over the cell
    Hc = [[acb(0, Qbox[6 * aa + c]).exp() for c in range(6)] for aa in range(6)]  # H[a][c], intervals
    # mean-value data in the cell coordinate w (|w| <= r, so w in [-r, r]^4): Q(w) = Q0 + U w + H2 (w kron w)/2 + X xi
    W = [arb(0, r.upper()) for _ in range(4)]
    U = [[A(x) for x in m['U'][i]] for i in range(36)]; H2 = [[A(x) for x in m['H2'][i]] for i in range(36)]
    xi = [rownorm([A(x) for x in m['X'][i]]) * tau for i in range(36)]
    # dQ_i/dw_j over the cell: U[i][j] + sum_k (H2[i][4j+k] + H2[i][4k+j]) w_k / 2
    dQ = [[U[i][j] + sum(((H2[i][4 * j + k] + H2[i][4 * k + j]) * W[k] for k in range(4)), arb(0)) / 2 for j in range(4)]
          for i in range(36)]
    Qc = [q0[i] + arb(0, (arb(q0[i].rad()) + xi[i]).upper()) for i in range(36)]  # w = 0, with the X xi term
    Hcen = [[acb(0, Qc[6 * aa + c]).exp() for c in range(6)] for aa in range(6)]
    PAR = dict(W=W, dQ=dQ, Hcen=Hcen, Hbox=Hc)
    basis = np.linalg.qr(np.eye(6)[:, :5] - np.eye(6)[:, 5, None])[0]
    Bm = [[arb(float(basis[i, j])) for j in range(5)] for i in range(6)]
    rho = A(s['bin_radius'])
    enclosures = []
    for k, col in enumerate(s['columns']):
        v0 = [A(x) for x in col['v0']]
        kept = []
        for delta in col['bin_deltas']:
            d = np.array([float.fromhex(x) for x in delta])
            tc = basis.T @ d                                                     # bin centre in gauge coordinates
            X = [arb(float(tc[j]), rho.upper()) for j in range(5)]               # contains the bin (2-norm ball)
            kept += branch(X, v0, Bm, PAR, a.iters, a.min_width, STATS)
        kept = merge_and_contract(kept, v0, Bm, PAR, a.iters)
        enclosures.append([vec(X, v0, Bm) for X in kept])
        widths = [max(float(x.rad()) for x in X) for X in kept]
        print(' column %d: %d bins -> %d enclosures; largest radius %.4f; boxes processed %d' % (k, len(col['bin_deltas']),
              len(kept), max(widths) if widths else 0, STATS['boxes']), flush=True)
    excluded_by = None
    for p in range(6):
        for q in range(p + 1, 6):
            if not enclosures[p] or not enclosures[q]:
                excluded_by = (p, q, 'empty column'); break
            if all(abs(inner(x, y)) > 0 for x in enclosures[p] for y in enclosures[q]):
                excluded_by = (p, q, 'orthogonality'); break
        if excluded_by: break
    print(json.dumps(dict(snapshot=s['subatlas'], sub=s['sub'], pattern=s['pattern'],
                          excluded=excluded_by is not None, by=excluded_by)))


STATS = dict(boxes=0)


def branch(X, v0, Bm, P, iters, min_width, stats, cap=4000):
    """Branch and bound: every zero of the column system in X lies in one of the returned boxes."""
    out, stack, n = [], [X], 0
    while stack:
        X = stack.pop(); stats['boxes'] += 1; n += 1
        if n > cap: out.append(X); continue                               # this bin's budget spent: keep (fail-closed)
        g, _ = g_and_J(X, v0, Bm, P['Hbox'])
        if any(not gi.contains(0) for gi in g): continue                    # range test: no zero here
        for _ in range(iters):
            Y, alive = krawczyk(X, v0, Bm, P)
            if not alive: break
            shrink = max(float(y.rad()) for y in Y) < 0.9 * max(float(x.rad()) for x in X)
            X = Y
            if not shrink: break
        else:
            alive = True
        if not alive: continue
        w = [float(x.rad()) for x in X]
        if max(w) <= min_width: out.append(X); continue
        j = int(np.argmax(w)); m = arb(X[j].mid())
        for lo, hi in ((X[j].lower(), m), (m, X[j].upper())):
            Z = list(X); Z[j] = hull(lo, hi); stack.append(Z)
    return out


def overlaps(X, Y, pad=0.0):
    return all(float(x.lower()) <= float(y.upper()) + pad and float(y.lower()) <= float(x.upper()) + pad for x, y in zip(X, Y))


def merge_and_contract(boxes, v0, Bm, P, iters):
    """Group boxes that touch into connected clusters, take each cluster's hull, and contract it by Krawczyk steps.
    Every zero in any box lies in its cluster's hull, and Krawczyk keeps every zero, so the result still contains
    every zero (a hull ruled out by Krawczyk had none)."""
    groups = []
    for X in boxes:
        hit = [g for g in groups if any(overlaps(X, Y, 1e-12) for Y in g)]
        merged = [X] + [Y for g in hit for Y in g]
        groups = [g for g in groups if g not in hit] + [merged]
    out = []
    for g in groups:
        H = [hull(min((Y[j].lower() for Y in g), key=float), max((Y[j].upper() for Y in g), key=float)) for j in range(5)]
        alive = True
        for _ in range(iters):
            Z, alive = krawczyk(H, v0, Bm, P)
            if not alive: break
            H = Z
        if alive: out.append(H)
    return out


def vec(X, v0, Bm):
    V = [v0[aa] + sum((Bm[aa][j] * X[j] for j in range(5)), arb(0)) for aa in range(6)]
    return [acb(0, V[aa]).exp() / arb(6).sqrt() for aa in range(6)]


def inner(x, y):
    return sum((x[aa].conjugate() * y[aa] for aa in range(6)), acb(0))


def g_and_J(X, v0, Bm, H):
    """g_i(t) = (|<h_i, e^{iV}>|^2 - 6)/6 for i = 0..4 and its Jacobian in t, over the box X, with H's entries given
    as intervals H[a][c]."""
    V = [v0[aa] + sum((Bm[aa][j] * X[j] for j in range(5)), arb(0)) for aa in range(6)]
    e = [acb(0, V[aa]).exp() for aa in range(6)]
    g, J = [], []
    for i in range(5):
        mi = sum((H[aa][i].conjugate() * e[aa] for aa in range(6)), acb(0))
        g.append(((mi.real * mi.real + mi.imag * mi.imag) - 6) / 6)       # never abs()**2 near 0 (NaN in flint 0.9)
        dV = [2 * (mi.conjugate() * acb(0, 1) * H[aa][i].conjugate() * e[aa]).real / 6 for aa in range(6)]
        J.append([sum((dV[aa] * Bm[aa][j] for aa in range(6)), arb(0)) for j in range(5)])
    return g, J


def g_point_cell(x, v0, Bm, P):
    """g(x, w) for every w in the cell, by the mean-value form g(x, 0) + (dg/dQ)(x, Q(W)) dQ/dw (W) w."""
    g0, _ = g_and_J(x, v0, Bm, P['Hcen'])
    V = [v0[aa] + sum((Bm[aa][j] * x[j] for j in range(5)), arb(0)) for aa in range(6)]
    e = [acb(0, V[aa]).exp() for aa in range(6)]
    H = P['Hbox']; out = []
    for i in range(5):
        mi = sum((H[aa][i].conjugate() * e[aa] for aa in range(6)), acb(0))
        # d g_i / d Q_{a i} = 2 Re(conj(m_i) * (-i) conj(h_ai) e^{iV_a}) / 6   (only column i of H enters g_i)
        dq = [2 * (mi.conjugate() * acb(0, -1) * H[aa][i].conjugate() * e[aa]).real / 6 for aa in range(6)]
        dw = [sum((dq[aa] * P['dQ'][6 * aa + i][j] for aa in range(6)), arb(0)) for j in range(4)]
        out.append(g0[i] + sum((dw[j] * P['W'][j] for j in range(4)), arb(0)))
    return out


def krawczyk(X, v0, Bm, P):
    """One parametric Krawczyk step: every zero in X for any w in the cell lies in the returned box (K(X) cap X)."""
    xc = [arb(x.mid()) for x in X]
    gc = g_point_cell(xc, v0, Bm, P)
    _, JX = g_and_J(X, v0, Bm, P['Hbox'])
    Jm = np.array([[float(JX[i][j].mid()) for j in range(5)] for i in range(5)])
    try:
        Y = np.linalg.inv(Jm)
    except np.linalg.LinAlgError:
        return X, True
    Ya = [[arb(float(Y[i, j])) for j in range(5)] for i in range(5)]
    out = []
    for i in range(5):
        v = xc[i] - sum((Ya[i][j] * gc[j] for j in range(5)), arb(0))
        for j in range(5):
            mij = (arb(1) if i == j else arb(0)) - sum((Ya[i][l] * JX[l][j] for l in range(5)), arb(0))
            v += mij * (X[j] - xc[j])
        lo = max(v.lower(), X[i].lower()); hi = min(v.upper(), X[i].upper())
        if lo > hi: return X, False                                          # no zero in the bin
        out.append(hull(lo, hi))
    return out, True


if __name__ == '__main__': main()
