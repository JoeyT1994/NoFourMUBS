"""Validated transport through all three transitions of a MUB triple.

Enclosures of arguments are conditional on an actual triple only when a
transition is asserted flat. The argument itself is enclosed on the full
input box. Shared row gauges and fixed column permutations are retained.
An inclusion is not a classification unless its target theorem is supplied.
"""
import numpy as np
from flint import arb, arb_mat, acb, fmpq, fmpq_mat
from intervals import norm_upper, endpoints


def _permutation(p):
    if len(p) != 6 or any(type(i) is not int for i in p) or sorted(p) != list(range(6)):
        raise ValueError('a permutation of 0,...,5 is required')
    return p


def argument(z):
    if not abs(z) > 0:
        raise ArithmeticError('transition entry can contain zero')
    theta = arb(float(np.angle(complex(float(z.real.mid()), float(z.imag.mid())))))
    rotated = z*acb(0, -theta).exp()
    if not rotated.real > 0:
        raise ArithmeticError('transition argument is not enclosed in one half-plane')
    return theta+rotated.arg()


def transport(phases, anchor=0, swap=False):
    if len(phases) != 72 or anchor not in (0, 1, 2):
        raise ValueError('72 phases and anchor 0, 1 or 2 required')
    h = [[arb(phases[6*r+c]) for c in range(6)] for r in range(6)]
    k = [[arb(phases[36+6*r+c]) for c in range(6)] for r in range(6)]
    if anchor == 0:
        first, second = h, k
    else:
        base, other = (h, k) if anchor == 1 else (k, h)
        first = [[-base[c][r] for c in range(6)] for r in range(6)]
        second = [[argument(sum((acb(0, other[s][c]-base[s][r]).exp()
                                 for s in range(6)), acb(0))) for c in range(6)] for r in range(6)]
    if swap:
        first, second = second, first
    return sum(first, [])+sum(second, [])


def gauge_matrices():
    w = fmpq_mat(72, 72); d = fmpq_mat(72, 72)
    for b in range(2):
        for r in range(6):
            for c in range(6):
                row = 36*b+6*r+c
                d[row, row] += 1
                d[row, 6*r] -= 1
                d[row, 0] += 1
                d[row, 36*b+c] -= 1
                for e in range(2):
                    for s in range(6):
                        for j in range(6):
                            w[row, 36*e+6*s+j] = (fmpq(int(r == s))-fmpq(1,6))*(
                                fmpq(int(b == e and c == j))-fmpq(1,12))
    if w*w != w or w.transpose() != w or w*d != w or d*d != d:
        raise ArithmeticError('shared gauge identities failed')
    return w, d


def align(phases, reference, rows=None, h_columns=None, k_columns=None):
    rr, ss, tt = [_permutation(list(range(6)) if v is None else list(v))
                  for v in (rows, h_columns, k_columns)]
    if len(phases) != 72 or len(reference) != 72:
        raise ValueError('two 72-phase lists required')
    result, windings = [], []
    for b, cc in enumerate((ss, tt)):
        for r in range(6):
            for c in range(6):
                i = 36*b+6*r+c
                delta = arb(phases[36*b+6*rr[r]+cc[c]])-arb(reference[i])
                winding = round(float((delta/(2*arb.pi())).mid()))
                result.append(delta-2*winding*arb.pi())
                windings.append(winding)
    return result, dict(rows=rr, h_columns=ss, k_columns=tt, windings=windings)


def joint_inclusion(phases, reference, radius, **permutations):
    delta, alignment = align(phases, reference, **permutations)
    w, _ = gauge_matrices()
    error = arb_mat(w)*arb_mat([[v] for v in delta])
    bound = norm_upper(error.entries())
    return dict(status='INCLUDED' if bound < arb(radius) else 'NOT ESTABLISHED',
                metric='joint horizontal 72-phase Euclidean norm',
                distance_upper=endpoints(bound), target_radius=endpoints(arb(radius)),
                alignment=alignment, target_classification_replayed=False)


def hadamard_inclusion(phases, reference_h, radius, rows=None, columns=None):
    """H-only horizontal phase bound; no identification with a seed radius."""
    if len(phases) != 36 or len(reference_h) != 36:
        raise ValueError('36 H phases required')
    rr = _permutation(list(range(6)) if rows is None else list(rows))
    cc = _permutation(list(range(6)) if columns is None else list(columns))
    delta = []
    windings = []
    for r in range(6):
        for c in range(6):
            value = arb(phases[6*rr[r]+cc[c]])-arb(reference_h[6*r+c])
            winding = round(float((value/(2*arb.pi())).mid()))
            delta.append(value-2*winding*arb.pi()); windings.append(winding)
    total = sum(delta, arb(0))/36
    row_mean = [sum(delta[6*r:6*r+6], arb(0))/6 for r in range(6)]
    col_mean = [sum((delta[6*r+c] for r in range(6)), arb(0))/6 for c in range(6)]
    error = [delta[6*r+c]-row_mean[r]-col_mean[c]+total for r in range(6) for c in range(6)]
    bound = norm_upper(error)
    return dict(status='INCLUDED' if bound < arb(radius) else 'NOT ESTABLISHED',
                metric='H-only horizontal 36-phase Frobenius norm',
                distance_upper=endpoints(bound), target_radius=endpoints(arb(radius)),
                alignment=dict(rows=rr, columns=cc, windings=windings),
                target_all_k_classification_replayed=False)

