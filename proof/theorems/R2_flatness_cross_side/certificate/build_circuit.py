#!/usr/bin/env python3
"""Exact Laurent-circuit zero certification using collision-free integer packing.

This experiment builds the two cleared W11 residuals without polynomial
expansion, tracks exponent boxes and l1 coefficient bounds, then (optionally)
evaluates at one provably separating integer substitution. No random samples.
"""
import argparse
import json
import resource
import sys
import time

if sys.flags.optimize:
    raise SystemExit('Run without -O or -OO: certificate assertions are required.')

NODES = []
CACHE = {}
STARS = {}


class P:
    def __init__(self, node):
        self.i = node

    @staticmethod
    def make(op, args):
        key = op, tuple(args)
        if key in CACHE:
            return P(CACHE[key])
        if op == 'mono':
            c, *ex = args
            lo = hi = tuple(ex)
            norm = abs(c)
        else:
            a, b = (NODES[i] for i in args)
            if op == 'add':
                lo = tuple(min(x, y) for x, y in zip(a['lo'], b['lo']))
                hi = tuple(max(x, y) for x, y in zip(a['hi'], b['hi']))
                norm = a['norm'] + b['norm']
            elif op == 'mul':
                lo = tuple(x + y for x, y in zip(a['lo'], b['lo']))
                hi = tuple(x + y for x, y in zip(a['hi'], b['hi']))
                norm = a['norm'] * b['norm']
            else:
                raise ValueError(op)
        i = len(NODES)
        NODES.append(dict(op=op, args=tuple(args), lo=lo, hi=hi, norm=norm))
        CACHE[key] = i
        return P(i)

    @staticmethod
    def of(x):
        return x if isinstance(x, P) else P.make('mono', (x, 0, 0, 0, 0))

    def __add__(self, other):
        other = P.of(other)
        if not NODES[self.i]['norm']:
            return other
        if not NODES[other.i]['norm']:
            return self
        return P.make('add', sorted((self.i, other.i)))

    __radd__ = __add__

    def __neg__(self):
        return self * -1

    def __sub__(self, other):
        return self + -P.of(other)

    def __rsub__(self, other):
        return P.of(other) + -self

    def __mul__(self, other):
        other = P.of(other)
        for x, y in ((self, other), (other, self)):
            n = NODES[x.i]
            if n['op'] == 'mono' and n['args'] == (1, 0, 0, 0, 0):
                return y
            if not n['norm']:
                return P.of(0)
        return P.make('mul', sorted((self.i, other.i)))

    __rmul__ = __mul__

    def star(self):
        if self.i in STARS:
            return P(STARS[self.i])
        n = NODES[self.i]
        if n['op'] == 'mono':
            c, *ex = n['args']
            result = P.make('mono', (c, *(-e for e in ex)))
        else:
            result = P.make(n['op'], sorted(P(i).star().i for i in n['args']))
        STARS[self.i] = result.i
        STARS[result.i] = self.i
        return result


def transpose(A):
    return list(map(list, zip(*A)))


def adjoint(A):
    return [[x.star() for x in row] for row in transpose(A)]


def mul(A, B):
    return [[sum(x * y for x, y in zip(r, c)) for c in transpose(B)] for r in A]


def adjugate(A):
    C = []
    for i in range(3):
        row = []
        for j in range(3):
            rr = [k for k in range(3) if k != j]
            cc = [k for k in range(3) if k != i]
            row.append((-1)**(i+j) * (A[rr[0]][cc[0]] * A[rr[1]][cc[1]]
                       - A[rr[0]][cc[1]] * A[rr[1]][cc[0]]))
        C.append(row)
    return C


def gram(E):
    EE = mul(E, adjoint(E))
    return [[6 * (i == j) - EE[i][j] for j in range(3)] for i in range(3)]


def scaled(G):
    s, t, r = G[1][0], G[2][0], G[2][1]
    S, T, Q = (x.star() for x in (s, t, r))
    X, Y, Z = s*S, t*T, r*Q
    p, J = X+Y+Z, s*r*T+S*Q*t
    g, eta = 27-3*p+J, 9-p+J
    chi = X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    P0 = r*s*s+Q*t*t+(3-Z)*s*t
    P1 = t*S*S+r*r*T+(3-Y)*r*S
    c0, c1 = 9-Z, 9-Y
    d = P0*P1.star()
    H0 = [[S*d, S*S*d-2*s*(g*g+c1*chi+c0*c1*eta), S*T*d-(chi+c0*eta)*P1.star()],
          [3*d, S*d, T*d], [r*d, S*r*d-c1*eta*P0, S*d]]
    H1 = [[P.of(0), -2*s*(c0-c1), P1.star()],
          [P.of(0)]*3, [P.of(0), -P0, P.of(0)]]
    return H0, H1, d, g, eta, chi


def contraction(A, B):
    return sum(x*y for ra, rb in zip(A, B) for x, y in zip(ra, rb))


def build():
    a, b, c, d = [P.make('mono', (1, *(int(i == j) for i in range(4)))) for j in range(4)]
    one = P.of(1)
    E = [[one]*3, [one, a, b], [one, c, d]]
    Gh, Gv = gram(E), gram(transpose(E))
    H0, H1, dh, g, eta, chi = scaled(Gh)
    V0, V1, dv, gv, etav, chiv = scaled(Gv)
    U = mul(adjoint(E), adjugate(Gh))
    T0, T1 = [mul(U, mul(H, adjoint(U))) for H in (H0, H1)]
    A = contraction(V0, T0)
    B = contraction(V0, T1)
    C = contraction(V1, T0)
    D = contraction(V1, T1)
    f1 = B-C
    f0 = A+chi*C+eta*g*g*D-dh*dv*g*g*Gv[0][1]*Gh[0][1]
    return {'linear_residual': f1.i, 'constant_residual': f0.i,
            'gram_g': (g-gv).i, 'gram_eta': (eta-etav).i, 'gram_chi': (chi-chiv).i}


def reachable(root):
    active = set()
    todo = [root]
    while todo:
        i = todo.pop()
        if i in active:
            continue
        active.add(i)
        if NODES[i]['op'] != 'mono':
            todo.extend(NODES[i]['args'])
    return sorted(active)


def pack_check(root, evaluate):
    ids = reachable(root)
    n = NODES[root]
    widths = [b-a for a, b in zip(n['lo'], n['hi'])]
    weights = [1]
    for width in widths[:-1]:
        weights.append(weights[-1]*(width+1))
    base_bits = n['norm'].bit_length()
    shifts = {i: sum(e*w for e, w in zip(NODES[i]['lo'], weights)) for i in ids}
    report = {'nodes': len(ids), 'exponent_min': n['lo'], 'exponent_max': n['hi'],
              'radices': [x+1 for x in widths], 'weights': weights,
              'base_bits': base_bits, 'coefficient_l1_bound': str(n['norm']),
              'max_packed_bits_bound': max(base_bits*sum((b-a)*w for a, b, w in
                  zip(NODES[i]['lo'], NODES[i]['hi'], weights))+NODES[i]['norm'].bit_length()
                  for i in ids)}
    if not evaluate:
        return report
    use = {i: 0 for i in ids}
    for i in ids:
        if NODES[i]['op'] != 'mono':
            for j in NODES[i]['args']:
                use[j] += 1
    values = {}
    start = time.perf_counter()
    max_bits = 0
    for i in ids:
        node = NODES[i]
        if node['op'] == 'mono':
            value = node['args'][0]
        else:
            a, b = node['args']
            va, vb = values[a], values[b]
            if node['op'] == 'mul':
                value = va*vb
            else:
                sa, sb = shifts[a]-shifts[i], shifts[b]-shifts[i]
                assert sa >= 0 and sb >= 0
                value = (va << (base_bits*sa))+(vb << (base_bits*sb))
            for j in (a, b):
                use[j] -= 1
                if not use[j]:
                    del values[j]
        values[i] = value
        max_bits = max(max_bits, value.bit_length())
    assert values[root] == 0, 'Packed integer did not vanish'
    report.update(status='PASS', elapsed_seconds=round(time.perf_counter()-start, 6),
                  max_actual_bits=max_bits, peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
    return report


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--evaluate', action='store_true')
    ap.add_argument('--only', choices=['linear_residual', 'constant_residual', 'gram_g', 'gram_eta', 'gram_chi'])
    args = ap.parse_args()
    roots = build()
    for name, root in roots.items():
        if args.only and args.only != name:
            continue
        print(json.dumps({'identity': name, **pack_check(root, args.evaluate)}, sort_keys=True), flush=True)


if __name__ == '__main__':
    main()
